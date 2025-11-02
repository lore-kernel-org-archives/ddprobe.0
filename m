Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3247F157A5A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762099194; cv=none; b=OJxZamS03pPSy0nxw4MjBikR/KESStrhDnQ3/dBUpNH99udWO6M0M1X7iljUE/qnpAoAtHLHQE0YAzWeCWUW3TkCP8JaZH2k2hsCYizR+XgdvnEBpL64IzQ/rGWo3cszLF2b1Q3b4yTE8FCYqjGxkTocMutGLaROmtgjJvyz/1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762099194; c=relaxed/simple;
	bh=iRjNuOCCle+ofqKQPwuU6i5V6fuPs8AwzcgQpG5qVzY=;
	h=To:Subject:From:Message-Id:Date; b=b3fJQrlgmYTCeGROej6qStKEnmddvxbr2E316QbOZ9KDF1KVnsNcegti9RSOjiqpAnUDqF3HR5EKuxUD91EeLCyzwe/8ChNSIQxSz5tPoOr684rFkv4mJqiUBdI9LtOZH0D4/g5XmW9SibogddYrA8y1Gs3Y7ODSBH69fO30zjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzAaYS2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzAaYS2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E65C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762099193;
	bh=iRjNuOCCle+ofqKQPwuU6i5V6fuPs8AwzcgQpG5qVzY=;
	h=To:Subject:From:Date:From;
	b=YzAaYS2cYbFTKPMQyYnoPPu1zoqMo2JyJBrSgyjIAYm2AP9RaXp3Gkj4dm3i5f1n+
	 W6Z8cOjkj0hJeOdY4edux15ejROMScefORnVI5ou/tUMzxOMZKSMNAik81vTTAy/38
	 cSe23gksYshVNPgOWdQ1BukYmSDjWEr4KmYfF1IThCYIj7hOD7ESjPUF1eUzUMuHFm
	 Ro4lqyYiBAdI9D2c6wzXqi9PxDH4UuWOA5D619JNSzQK9/84d1NNk8JajEYI6TtNIx
	 3V55O9mKua6+W0NpsIcV2V0jcKGsCgk+RqTBA4LLIM8BDexLE2nxvQXGIcoLsoGGk3
	 fOtcQVDOIKuvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91384CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209919358.28660.12785970946070787399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218a882bce426b91dab0c9f8815f778a8d86c08d673f861293f445e2e7172e79
Date: Sun, 02 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762099193
