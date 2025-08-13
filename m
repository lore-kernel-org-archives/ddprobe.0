Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE0B2BAF9
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755077394; cv=none; b=KTCFEMNN/rQKck4KbA/2sVHGE8A+AXxRgqvmV2OipGcbKvBo+LWsJs79MkLil3S/j1KCfTr8dvqyl2sK47O5QkV5KRKhv0hflRapyR0w3XVsulfjmPuBZqesIksxaelIhFdv4uinASeKvaA4m5ENF6aIP7zxGF2e6qV1p0vnqb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755077394; c=relaxed/simple;
	bh=EaUS8urOa4QTwvOcL42sM6b7sYVcfeemiknbxOnPNaU=;
	h=To:Subject:From:Message-Id:Date; b=pIXv9LgPOt3bjaBUm0nLEU2FlChwmacX2ToqPvPH7cNr06XTbAgL16oQfZPGy4RauaPErO0E9mBO+VoFbA65VddhVE9x4l1CXpQhlZOuA5FsHxIEA/7ugATfTGcCXuipnrXiLJRUiNY9zJ7wjlwfiLOoR2xfHL5lgRzVY+1kTSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4jahejJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4jahejJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E81C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755077393;
	bh=EaUS8urOa4QTwvOcL42sM6b7sYVcfeemiknbxOnPNaU=;
	h=To:Subject:From:Date:From;
	b=k4jahejJZtzfwaCsHmxQXex9e7dljXGF4FiUxXSQXMgoab2v1c1pg3WgIR0c266Rs
	 lhq560uAIaFwq95EKjH1Eg5F4Gtmm895Mn0UgAk29iilVcwF7TfXIPL2zg5uycBp28
	 enas2ywdl33Xaomlj6XhDPMKuBVmZrfU+9hZIOEDB2+pGmCjmoEs+lnF2ijgjY6DQr
	 851M0Z2NaxJXCMg/3tUi7MNff1Sl9T3FMJYL6CEcJ3rpZ6m1zkiIKTIPjZgUviIc45
	 eEDAeZE/hkv2FZyg5BDdK5d/Im2TI9cmQb6w26LFc4qrdyt1CWO/6lT/bVS/mmB5W4
	 hcsZjjEWbSw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA9CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507739359.16003.13495894735854729714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4613d0a30eb452c9491bd5849546421b4939907e20a5fdedf265b19175e12208
Date: Wed, 13 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755077393
