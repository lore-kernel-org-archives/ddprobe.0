Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C078184F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751156394; cv=none; b=sZksXUTsjo5yb655sk7jRSxwJxN47vLmnLgpM6kP3PZOvTXMCgyZJcKOudELw/pSbX805OoMGLWHSoZcYARPQzuvekchgfx0kupz8UfwWllmWMP5OEpLBmtljmysp3Dv/XCEXA7qaKYwIDMizxEWtAUlpwFXxCjKi+I05huN7iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751156394; c=relaxed/simple;
	bh=IO1VRpZkpDKEogFEpITgCms7LR7VYwrKX9ihFAVq4po=;
	h=To:Subject:From:Message-Id:Date; b=apcyrS1aWuHrx9biGZVVwSWAy/zigHX5ViDnXjwle5RmBykGjdKgColiSLMgxedCYgAdIvQtrXHC6ZQxhQYWzu3uyIzV5gosgcSgjZwcwwvVar7jjwEN1Q60DL+PJeguUIWH04hkwgrNRts02zaocRv/DKU2LikXoCm1I3CnzWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqTQhgBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqTQhgBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B00C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751156393;
	bh=IO1VRpZkpDKEogFEpITgCms7LR7VYwrKX9ihFAVq4po=;
	h=To:Subject:From:Date:From;
	b=dqTQhgBATtsHp9GkFMkhbbRIc2O2K9e1IRtaq+nQ6Asg/XcHHPeG2NsvGFi+8Oz+K
	 97+chKjKWLxO5Hcu85W0R4VYNt1k8wCUmK7X/pGQ2R4lOGm9haYP4fgTUmupXH1gpv
	 5nlcQCMCoL08aynNsz/zWnDjuYoVhzOUFopqHqcwsn6E4rusa4JYhxVaFqUK4juDw3
	 ukidXfqk/yusCzVxZzvQfdW2wz6urPG5JKLNvgaYWLtXdXukwWBkLPHTP4oBb8ohtB
	 phOJ5bGU4njENqsIY5EoMWr+MIR8eJnz5HAul9Lhb3pRyotpe4FqxSLBxU8umcMwtc
	 OECSNtcgDrABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93687C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115639357.9894.3015831965443255559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7100850c89cefe6ccbfa82877b070f6f492578a7b882762c43f09259d241acb2
Date: Sun, 29 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751156393
