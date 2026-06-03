Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470D01C5F27
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780530874; cv=none; b=dRtvZ3eCYF4iyUi/loSg9KCgCDSh1TljRRF6JGD/UYwNzCRSv3ikJfj/o5EutJ/NToovVHrVHcjSCYuZTFfgHgv8icBzScYZKXZyUsekdfyxgfyv+cJU3ugli4oLPKt9jUyrzeEbFsS36o5R41Exz5L+BkPaqiLyIJqv7Yh92Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780530874; c=relaxed/simple;
	bh=PQQdkDq67iL2mfNENjtfOivRgRs4S0YEySxpJXbQulg=;
	h=To:Subject:From:Message-Id:Date; b=f/fsndOv7TtRNpDgXxem4Cnrtc0GFLopBt+dnvWLnCQYWAgtXDnN1RmruyeaSmnwuAVzus5Zg9RcYHp1ODHEnp6gKZgtXwKxPTkxEcGW3DlDKw2uZsDHUMD6ioxmOC3dN9htjRYVkSkoDix3m8GPjB8Q1I8CTN181CkYiCiRrSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1FHnz8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1FHnz8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4910C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780530873;
	bh=PQQdkDq67iL2mfNENjtfOivRgRs4S0YEySxpJXbQulg=;
	h=To:Subject:From:Date:From;
	b=I1FHnz8IeENORAUVqfjXIrcSfmxbfgkynnRBYd2sqj8VOlRoWNbquH0p8VZTla3s/
	 wwAICet2MxwGW20ynSWpJuu0js3k0ZFv/UlCNJMYRN5juaZnuakjkf183hAPmegRbr
	 +n8ReJLd8urF1Cy44S9l/qPyVj0djcFGl54nW2S6Q2WYb6tgIbRHOFcMcHlc4wW/Yt
	 vugrwH10e39DtqFaIL/dFKuDAn7fp4a3G/vBFSjvmkeCP6mLWna37adz4ugFR1zc1O
	 XgBOUX3Ly4sEXb5f4cuMFwBftBQJzzKVnJno1U9Rfmds64OxlROsqFq5xpHKvwS+Un
	 edxbKanD6WXnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8850CD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053087368.16738.9501765684410383541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376395a3824c79af70bb1843fffc068d4f5edd8bf8e121c3a1b7cc8a3a4ac6d7
Date: Wed, 03 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780530873
