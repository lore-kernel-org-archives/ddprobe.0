Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E339E175
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780138414; cv=none; b=pDaZZFA+/SY1bUn9dbwCgCq0MSSCklpj+LlkL3Q6MoFqJ+Cg6Jw50X2nUSVNNZ2OrHFC5PLgyk4F7xbNNdB6mgamOk+FMxKnB9WoY5dcwVQFbybGy7yQayxCB/3MxSs8yEpsnXGaPItBTGMLpy/7yNR2pl48gaXixsQkZ9HbmKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780138414; c=relaxed/simple;
	bh=DT4Pav4eEjoDsFifKWB3MXHqjMDrK+cju4MFqFTyQPc=;
	h=To:Subject:From:Message-Id:Date; b=eCRTBpr4j34bTneeIjuXrMM8HXZiEk+Q6b4HGVkRmohnIug9htGD71ulZ3/RDN4zpnBlMXGr46D0TmjsU7SeY2cApaJ6xi/GPKnD9YmfpA24xXydyuavqjOlNea/SaO3aMXmvpiqWY2ZCPdysA1wW1/MViFP6ThdQT6w/JFWzsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leTL/FCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leTL/FCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F41C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780138413;
	bh=DT4Pav4eEjoDsFifKWB3MXHqjMDrK+cju4MFqFTyQPc=;
	h=To:Subject:From:Date:From;
	b=leTL/FCOyMpAhldw9TtpBQbjq3GufVpC4AHDxWeYLFlinSc8jIv4wvQDp5IT2PrMy
	 TqNlSOVmwadmRA0L7M3XjqVHKuOsU0f1iluhWeOr8SUonEfYhpgOlMkwrmcj/OZXW6
	 L7h2Bguz9RMobFPqCWwXonXS7U3k2Mi2rOZX+XOM+iBKSAesF4O2nsjXWs6v9R2oNx
	 5XL9DAUZ3pqJmkZ+SEh83zXi6kE1HyvHwMdUaE3p9rr+mnw0tRHZDqDXFBm5JlS2ck
	 L3Hc8SrFvg8yrzylcu6cGURZbuZEFdrniUTwtrjDXMi8dU5DpfRQzVvJgjWxgyj0xz
	 ccVH9HWa2euSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A7CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013841368.26782.11917082873683094190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4df5d08bac8d8486b4b001bca31a8a4048507c3ef99e49c6187e886df5bc44b
Date: Sat, 30 May 2026 10:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780138413
