Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6754418C05
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718441303; cv=none; b=N5+wid2CBLU5OQooSCllJxKoGhWo9WUShxxwz8QspWdD9zu/DBabBb8UytwlDeJKbNFPZsTSFxZXk1W8tsjosKc86t3bvWi56hh2fNFJSrGqtABeyz4GAGkKTgea7pXy0gGCxE/cTME8MJAkzuCSdWdEv1Waj/7JyjAm8RE2Kxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718441303; c=relaxed/simple;
	bh=vF/ZE8qPRLa9aTgf1fnbq/JwCf4PFeYGkddVrJLL5u8=;
	h=To:Subject:From:Message-Id:Date; b=QQuk1nvIaT86jhBf5/IdkgaoKMAMMTRIOUvW8sXzpHcPrpkewnTytBeFw+xqMGc4cNRIfsZhd3E2fTJwGXXm0D9qUzCuAHsGlGj6Tu34LBq83T4CYKRpY7715lMBhdqsG2CGbet6miqnmPy7s8d7lyS9kHMNJybcM3eJYXY1ViA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQXvPSCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQXvPSCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6531C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718441302;
	bh=vF/ZE8qPRLa9aTgf1fnbq/JwCf4PFeYGkddVrJLL5u8=;
	h=To:Subject:From:Date:From;
	b=ZQXvPSCsEEKnk92rd+ajwV59n5WL5hcHEux9Ho6qB19Uh3UV8BoTeejfbPq7HwKMd
	 S1l2jEHnR129h1KqsYJ2/bXHn9g3Cv17f6u4B09j+aAUQPGvSiOM74a1Iuxu3PCzhk
	 35qPdwzqt+PG3tG/u0n3P7GvqBC3X1oLXDyflMJKIoF/UZatESfpqXERVk+HQDYxhQ
	 ZHj8vsfJtvkAtVhXDtSIWGFsyLUMHLptJMMIxRmJWhCup+lEIeF0l9F1Ubl4r0Fdi2
	 Y3SB0U5tFoJQ/uphsvEPThSTEiX7mWpQ0D/91pkyA6vK/iD40QLL7NLMi6sCcqqvGZ
	 g0sOASjSM/WsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6143C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171844130277.25834.6659546895838947749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb225e453d0994fd4bd409cffaf190c0a1ba432772ed0a00aef0ff85b73b169
Date: Sat, 15 Jun 2024 08:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718441302
