Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BE738F642
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784848835; cv=none; b=VEMCSwSgf84rBfDGDRByJdsrGY0q+D3H6kkfnrKEbj2WOR/TEZcpRFVjk4pDeRZ3D30CYQarCZoAaxMzZod4hR8NUF7cu6lD9hUQzS5v9qqT6S4XIF159D7TOFtfoHyjpbT1lmWUWRYxun5vg75s4/w7y3ovBxyAE//UaW6ARQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784848835; c=relaxed/simple;
	bh=2tz8jPNobU/AfDmjaQY4WPlT09K39Kp2waFxzY5EjkI=;
	h=To:Subject:From:Message-Id:Date; b=O+JGFZcUBmIq6CVLX7uAB6z7BpDYTwUnMAIznpM7d+3eStX7sXlKuRxiIGhmVRBYsssguj8ISFngZViIHJnZPqyqOBR2u8xgYkiv6/54eAe7pxU9ZGlkN1wUAYUj2C+0wsSWPfQ0Kn7yba2y7Ks/0VbgmDHTwzvkUzZIzEn/4tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtqB+Aky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtqB+Aky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB791C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784848833;
	bh=2tz8jPNobU/AfDmjaQY4WPlT09K39Kp2waFxzY5EjkI=;
	h=To:Subject:From:Date:From;
	b=FtqB+Aky/0Fb3yicUMSOJcZ+qovKpXJCGJnfSDB5nMFY8g56jkdS3/hamXhEhxfRb
	 busbqx4kBp0NRc50eeOKZ9Y58JBliTLMtQWbsb5FHNrWEibj3OmJv8w0t+mVXKFb5J
	 zZpTeZpqZIfZZERqCjD8PEU9sCwW7sWZ7rFf4e+lBhO8j3rApj7uVrw5zyWGeOqIVL
	 XDVG6kX3eR/hS4JGkIYXZfwOfNt39qwbL5oWVoMu1VLXqf1Ra1Oyl9Cs+wQX9/apfd
	 Q6fnQrJngf+EZyOG+kf1XBOmevWgnNj+iiUgb/0HJrRiNGHEH2itiSF1blKqv7MNqU
	 ODY9o7fSbdoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A856FC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484883368.3563.12048370346580385233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e9cef7ca44711977d316b9c3b15c6d5d02e3bda028febc7052a1f9226f2b49
Date: Thu, 23 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784848833
