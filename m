Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1571E515
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754858394; cv=none; b=TyITvci1dsRlPFPrhzJFJlDMdnpfTgn3zEUmYcGKzSfcnHMfM/Gb0q0yfBxcR7c55bFGVC1EKefnsNaQ+D4PLrQz3Ow6+Xg7TOnXw6khJWUuLA35d26FHDnpTpPPTAObPxSr0doNK07m9haxKQAR6myvudvZOlvKKr27QZRzZzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754858394; c=relaxed/simple;
	bh=95CPsUqB+9oLkCAAOhi1zKaJmOrXU76LfRURUjX8k4w=;
	h=To:Subject:From:Message-Id:Date; b=SFio61/PhEjX7BUZroVc+mEyc1gY6MxFe7SHbfTA/3b9Zm+YdfXmkWT0TVNmIRlC1ESjnCUt9TFccfOFpH5rPqrjn7sobri66S03nBLiKDtpim/3wkDUOygfGBU/t66KQ2G7fLY3SPHAqJhwLEIukhEFYskBCDH0HtNak4cQRrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPW+0woC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPW+0woC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5071C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754858393;
	bh=95CPsUqB+9oLkCAAOhi1zKaJmOrXU76LfRURUjX8k4w=;
	h=To:Subject:From:Date:From;
	b=ZPW+0woC/hoNa/ny1uBxK/GSVSmdrg16URM8i254qsa/TWkNHYe1SwU1XB9MTblJ1
	 Q/KvZGy0K5z46JejDpuR8ZQbDsdoZOKuiYWEEeA2mSK6Uct+NfEbo3Fp1HFzeXE+N1
	 hxgtuL8RDx2TI0OsBsLhPTROTPK2QQY72juQ9IQBFbW0qoiDnr1EWdWngacRnhN0eh
	 ixsqOi8Xv4qD0+cGeEHwFdOmeXM6ix3BLt2DImppKJwWwZCH4bHpVJczar7jleXRxy
	 zSrcwW5kN+6BMCiIIDyS1f0gYNSqWj1+7+paEkx4Syl03YI14nRw+J2vkbJ28+YyDy
	 pz5NOD5rh64iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92615C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485839357.26224.12328250695853773259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8e0963900b4fc07be7cb0b8270deec6ea8fe8aee4600eb1b64923b9ac95ba9
Date: Sun, 10 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754858393
