Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248A98462
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763278254; cv=none; b=W25ctWuiTtMPoJeWbrYKOAqTrwrNN1Y0/naX0Ddm9P6HqPiMXI3T+ofG1NXpgDEwqrHbBO1cX2MoGtMq5OcPzoxncPbDvz0APIZKFXtDihu6twuZO04U1RxVr+Wu1ZLCyYpKeG/L3+V7okijnNLJqY7N1FhOyykJr/v+Q1cqMfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763278254; c=relaxed/simple;
	bh=Z2/xlOY4S01Jlffz0U7NzZbd/XAkpuoNFYtAInZ1O48=;
	h=To:Subject:From:Message-Id:Date; b=mHdKhK/wLNTQIQXi1zv9LWmgsilRrLp83WZIpt3+7pCtQ2bIxOSInUt8qgL+kfMDhfWOZF1s5B0fPQrQDaO7EW0TcsAexlNqWMoYTjzXLsVzaYhPUhBxkKZbZchWRIgJgJB5mc1o8hu4JmyLJf/5Mn6/TPOqXSk3KOA6COpTnGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ic2Vqa1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ic2Vqa1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7201C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763278253;
	bh=Z2/xlOY4S01Jlffz0U7NzZbd/XAkpuoNFYtAInZ1O48=;
	h=To:Subject:From:Date:From;
	b=ic2Vqa1jgm7y/9aKXlEUe70WSbfpaM8//CO3oFu/3mby7Ua48s1C+nav077V9aAQm
	 bB/PuOrkPToStl45tkixb6+2r7HpA4zgYWGVOyqjQxF2qjs6CZdfzvvDuUK8qVdMal
	 APFFVQk6KuDKq+oWtFZYsy0kMi/e6FIKtOraPB4+/3F/pfzurKzdzyWbA5Qktez2yC
	 LHISqBsgQd8jiEC13pmx7zITKUUpfmTT/Rf5KNXaR83C9ZwktH8vI/SK6scNJ+iCYj
	 Pz/4UUVNvZ1164S3eiyq1SBV1E1h5gsZD2lIUpsH46BKCqCJRdu6jUpMGlMx+mggw3
	 9Tj9N3xw3O9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9478ACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327825358.11177.2871034798516637365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3391cdcc70d39dd37e8b750c30272f5f415b18038d29ca3ab318761751d92db5
Date: Sun, 16 Nov 2025 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763278253
