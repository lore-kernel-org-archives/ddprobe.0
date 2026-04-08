Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22BA40DFA0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775620534; cv=none; b=tcU9eYrJSbJ1273TGfDqZh3fiGeAJI75nnoCezCSltuRwyQFJDOItv7+nxQ5moBP3SA0rR2i21gRMJoAEg7JQOQ4igiGHQzm65f6jMEMEUTXPQXBYM6JRRAgdq6olx0FS/scTTI8okk4tjzYDvx3uRE6MiLAGh6loKtXTlWS+k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775620534; c=relaxed/simple;
	bh=lGXGrskrl3Dq97I3As226EdkSgSFolGllnoTWbR1CQ4=;
	h=To:Subject:From:Message-Id:Date; b=f7y8MC/57jFi0HwI4EnJfH+0yaCPpp/YA7CesWs9So20UOr3Jwh/facwCy9Un8UW3cBYpWFpXPU5gS84NvK5VL2anG/9aUv/Vwop57gi7jpYj5g7mAyBw6I0zrA+S29pRIOj2BMn4mHqwxJ8h58BA6cKhR82SFkG7IvCwaMfyFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBkKC/2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBkKC/2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4273AC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775620534;
	bh=lGXGrskrl3Dq97I3As226EdkSgSFolGllnoTWbR1CQ4=;
	h=To:Subject:From:Date:From;
	b=JBkKC/2RkZelGYd6WeERT8c98BGeGRRyYS1/3UhZJpHyOOBlGteYBeSydCcDU2GJ3
	 FfDdTonKLzevy71tmmsnWIfggTuNBPmherCA/cYBxCToapduNHRv1rC2/ljuGedIHp
	 h4esndiuuYAtIIxBmVRIq7mlENsNKhjTDSn039XLbnEZHtP4JxS1nwj3KMNROEibPh
	 cvSBzvS25Nym22/DJye01WZPMlid1Ua6aHPA5ZHsOq9Tl8BxjmhUzlbh62lCfS3Ep+
	 RaDmJcJTASpE8OV8H79SYu0srqzpe7T5yejHH5pT6ru55uQmucPA93I1ixSEG4KsCt
	 A73OS1epwnGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 079B0FD5F61
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562053390.8956.16852207130396440504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5797a2a139fe093d84489decd662da766e6a8b63c10fa7e0fc2f1f4b16e5bb47
Date: Wed, 08 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775620533
