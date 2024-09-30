Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21443199E8C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727727354; cv=none; b=sMXmbiaSwUedgFlW0owEKPb8GBot+DNIr+cDzLinehfGACPzd9aeECKXP1b92Ts6kdC4l2DKwD5LVTmFV7d7gUpe2KKLgSuVijo1WSNtOCUwJzgsxp4C49GlC7DP75pCyLyFCoF/eJaZ7tJewLngoO4eamEAqn6b6XegfSpptU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727727354; c=relaxed/simple;
	bh=YcUrBg5x22Xi8tkI+h7aqNxDZsVFdu9I1my5b7qn6e0=;
	h=To:Subject:From:Message-Id:Date; b=YJuVT9mg4ANKrZLTstkv2meR/8jyTZTSU95dtTFqEsJcO5BxmTVI6CW2HtAH1HPkbOFQdjdXEiTUfRTayjrvAfEX1fX6jdzDQZvwjkBnF7JZBaE85TK5UGyP2EpJK0dI+r6qNQY5XsxT6U1mjFGGjDMBcXQAYIaWcBssz0R932U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+rhAo6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+rhAo6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E8FC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727727353;
	bh=YcUrBg5x22Xi8tkI+h7aqNxDZsVFdu9I1my5b7qn6e0=;
	h=To:Subject:From:Date:From;
	b=f+rhAo6UHfSbW7sCQH3aM0VGBvuRPYyjZHC1+kSE2e869vEEWH4sR2war9T/EF5c8
	 lV2kEsdj1bt9pImKeRE1GpJKPp+6p7FicIcc6MbfS/e0AS94VC7CJa5OIFECZh/Erv
	 2WawDPyvFbNy/NM2AxvGQMPZk+uZ9hmsmm9YAc0QoPt0ye2pzMwPmWSXOPsZ7DeV8A
	 bbAzLTkEt/zLfRDOGEQ1/FUN+VFryUtJ7xRbyvDEH46WRLPdIEclMJ1DLoaA4YSgDl
	 yqhI/LVsmprkoY8iTEKOYqMJQiCIO6NH1L+bECBBEoSi4hLRKzYpcgI3beyC3+ujaZ
	 w+Ithx1C9YUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B20CEBF72
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772735360.14042.14518738266885725818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617228cf4b6c2843304ffdd340686f9a153c2730e46cebbe07aff074bf4f5457
Date: Mon, 30 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727727353
