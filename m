Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A4517E003
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729278954; cv=none; b=YHZ7vOlfDCbVw7pAPBm6QY1SscHfkKm4jWJNe5PljJ7fNd6CBzvT2TDoxZs1k62PlL3MAlyO3oPV7qIR50KmcHmDZ2GxpfpDMidBK8ZFd4sDvapNNulkyWHFh2ZqYcI/e1Ec9xjwqDXoWuTbJvpQ2oF4DTAKZRileVVp2xJ6aW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729278954; c=relaxed/simple;
	bh=wNktAWMZSa7ffJ2w0Um/D9f4ms4Ym7Hd6oA5OvP78to=;
	h=To:Subject:From:Message-Id:Date; b=a2Btmt7glPtB2KZ4WwiMLEgbjbIkLolwou31YJQS29bO+1u0ZxQQDvoCbRioUWAO5klzl+9fIqh2T3NX7thy9js2zdszpZ8lrdfw/DbjRyixQnk4t+00JQdmlAe4dJL1/lW40oV9GVbY2DBEwZ9JYNCXuwqFr8t1oWMTfZXra2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ6a27kl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ6a27kl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA781C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729278953;
	bh=wNktAWMZSa7ffJ2w0Um/D9f4ms4Ym7Hd6oA5OvP78to=;
	h=To:Subject:From:Date:From;
	b=VZ6a27klp7aEvBAkdf1ypSBK9/6Lndq3z9ghHTorCZ1MazItBB+km0kvwYloc8fuq
	 KgmMP3Brqn81ABVuhaGpffwpUa3gsJs2ooRkdk25Pv9GKVBuGWHFtUayn+cK3rMbl5
	 CaPpDqKLPNaaj4fn3x3TAt1llOqKpy9HQXgj1DpRvAG5yiloooTmhMrVSq2yy8XtUB
	 9uLaoKzeUvQ0GnATuMXsaiEgsZaJPmGZn6K6PUE1B1PCGU8c8v0pJZfUYtX7g+84/i
	 pvgE/NSmDZs/WVfeS1HHmdi+V+z1LfsQ4wDenAHQ4KL1ohN7FyVLeCq4JVIm0zR9vn
	 q0fT2YJOkWtDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E6CD3E180
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172927895360.10635.3351901577426392855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf02fa540a9f6ea3f0cd8cde0c8179c789679f81f2fe5f511931e7266ad49a9
Date: Fri, 18 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729278953
