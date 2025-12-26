Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1CD2765D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766778834; cv=none; b=VEr2lNhXSa5hZ3Bm/bvtJIxD/kfNoHHyNX8RTAqdxKNn4A8yg2FrnF9bWJ+gS+C6duOgbEXbGfAAdv8wSUTKKPbNS+5KWNTT75FAqwMdy+TPChk9V9goElaQsQTIlacAK41GWTxMMrAuNwvEp140J8pdeelvq3nyTp3T5BdjxwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766778834; c=relaxed/simple;
	bh=pay5EQ9SWiGGrkKGWtc8bwR78bzTxjyEOx4mcTyNg44=;
	h=To:Subject:From:Message-Id:Date; b=TkUM79unsBfeQYNVR+8d6TAQZDQHxvgkRDSVzXeRmP2KJlft0vYegKiSC0Mw/OLFQ11cxdeQ2TYlb95CG/iBCsEyUtEGVWrjRvtbfEt/EgX3b1DaiLjmQl7gjlWkLltzTCZowvLDT8iVadjH0ycnwGDRzXOTBV882nU3GgO1TR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g52oAVlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g52oAVlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4659C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766778833;
	bh=pay5EQ9SWiGGrkKGWtc8bwR78bzTxjyEOx4mcTyNg44=;
	h=To:Subject:From:Date:From;
	b=g52oAVlpRCtTT1EXr2qol2QJwU2gyvEphdhrVOtMKGpI/pxZ3uurNf2rh1iPkRQDd
	 28VdzkCcibcklGKV4kqcKll/Tozz3AKjqO3znjj2xjZtcUIUH9eehP4iRiJHAX/EsG
	 ytzbyisbdX3pCtniSPyM8AxJ0Gzm9Q1fmpsDTy0/Lr6kbuPX0GFb8SLNYpe493yV59
	 Xx1ggoYepuDg948/Pmj1+7r5/6dyxjiSdq0RSMKJ+brHa+EdunM1hrmgMkOMJ3Z1Hz
	 JMwdNGU8T886OonvFexGHhlOysmpgMpAbYHkLjKiiqtstO3mpQrNNaeUROSor3rvxx
	 pxSdM4y4482+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A18E8FDB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677883358.9172.16309240854714220037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097247a00ad58e06bc8a609bcd34c410937b9ecd2c7d6184a93d089528c058a3
Date: Fri, 26 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766778833
