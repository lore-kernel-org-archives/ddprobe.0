Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B27166F29
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737132353; cv=none; b=KZVfNCJaROaNn8uBp4x8OdAb/1MpDx2fJs5fe4cox+iDgH0NNXTYmJIjXSVR7Q76p12/BbdvK4WvucG0c/5NBRTkFs+6mWgiyv/CEMLNtJDe+LPae0XAaZX4HXMSxEOZrbJIchWSDAlqeVaYH7IhW9oeYLi8K5/FfIhe7LEMJdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737132353; c=relaxed/simple;
	bh=3/0D7qSJxZkkDyZN+IxurELmZxNHJJr17lCjKYX6M2U=;
	h=To:Subject:From:Message-Id:Date; b=GE4kh5uhTFWyV3l7Yqq6k7K8O6N4yHT/PPGDMj0u07JlZ9OfLyNUq2JTQP5skt72FtGYbXbcpr46nnydMqy3BYqrvF2ma7d/8bBD/j34ZGPRPZHHHavgG4IXoA8KyBCFRb83Bo5PE2lAyzSc0z8fWVydUkoopXCA9Au5qbnDwPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a922H3Zf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a922H3Zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7C1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737132353;
	bh=3/0D7qSJxZkkDyZN+IxurELmZxNHJJr17lCjKYX6M2U=;
	h=To:Subject:From:Date:From;
	b=a922H3Zfj2pfNeU9T/R2pr8LMqAvtHiwJa9Ug5cyRH6xVt+dPjDOY5DQI5ssI3l7f
	 4aKFh8eth+0scL6q48s2fNPaNwto0vcdK9MfMkf66bxyuYTc+3WtrTRBY2ugNawQfx
	 0iiGAbFBBt940br2Ad9EihMpWAZhR0D394jt3sqAA0qfQhhRO7DXDXULg+Qzu2WGKl
	 XoHAv2ANCxwHKhGqHwmd7Bmv/UXgrZVOalGcUtvXhOWRYHjftlvZ31BNwbQhZQ2z6+
	 tuAzj5hFFikXzYdDo1l+VsIKrSihqiEpzgaWPXUduwAEcun5wxDjaSdu4rnbcORbRi
	 eUjGSO0FFSUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5BC02188
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713235359.18424.17695104018972897942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fc0820821c378c606f0e052ea0d722c32e798627ad3a493f3411d5428ff4bd
Date: Fri, 17 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737132353
