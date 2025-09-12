Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF2A2DC784
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757638194; cv=none; b=YngmHAUBgfeat0l5z4i+sG4qKS8qWRm2qajcCBT+O9/iM2JOWorKAoKUm3U1FaWslyf2fBb7GjL05mgKpTTcY3mBGvvht6AwPa7W1zdmvgQeicVTwFklSxGURc7IF3expjf3gIrQyoK1GRDvHcfwpVm/KGGoLRRZuLXMfbwt7g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757638194; c=relaxed/simple;
	bh=mccCbiL+TX33Qt8PmN0aeD3ttkF1ahK9c1IhxGuQ5CI=;
	h=To:Subject:From:Message-Id:Date; b=LAJgbk1ygGfuXrVI5UYyI2BuvNsDoW0FZhZ/3XLf7H900JS2qLw/VXhXVlFC7sUKzQMXoQ6Pdmw1DICxWS/ULo61Z1VLLS5W01IR6xHIaOXpaNSMxE4U8GoyG+hEiuuu9vXzqRB2jtckJoKm61JYc50iJfPR9+xkoYaV/KyVghg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs05nyP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs05nyP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5394C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757638193;
	bh=mccCbiL+TX33Qt8PmN0aeD3ttkF1ahK9c1IhxGuQ5CI=;
	h=To:Subject:From:Date:From;
	b=Cs05nyP1xsxID9ay16G03TWLOhZejmtfft64bgIBAO8Nn6WgampCne7cPzomYMFTM
	 HIhCtQW/0ys+XTxpEldTVhdRK9yuLyan0J/YzHst8QLRHco7w/ffiwpTAYk3wKmTBo
	 jtIDI+Ck0bcRAmelt7omffyQYlKGdW++gTEfYXISjBtwWe4WT37YuzFF3t0JRHT1Bi
	 wXAZ0D3Q5ZSe6YRnJKjysOOOu1IvgTAdKSCBhmiNLtGi3pJOiVPib0dCIxdaF27Tkn
	 8Dlj07nd7PaeAO72/A7QhfzXZJw9A7U5PNAcp1OyyWYX45/+CGlzZIgFlKMKqmEftU
	 k+vJf3HlX0S0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C92CAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763819358.23514.9909529297014289231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cb8e52f282d1e7a6a6ff160f5c4935d3f2916af2e7200320a9144bcbe0aea4
Date: Fri, 12 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757638193
