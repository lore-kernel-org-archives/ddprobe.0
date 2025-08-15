Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356A9192D97
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755256194; cv=none; b=iSbRlf+lkldHLqmMSBmJenp/n/bKH5opLXlVUv03Z0LLh1CViIceOtV6fonZtmkfsV12iaO1u8OAhEhOfiTa9KEbUg34v3+Jsdb+V7ZXb1wH4n8TgDgET3RPwaTK7rvyirMWML44dxnHlRxf0V52w6bl3H1KaNuO5Dxbk7fjUcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755256194; c=relaxed/simple;
	bh=VKuV6nV2ilpQBMaQz33QXlNwOQtS2cbNemj5JPCu/jo=;
	h=To:Subject:From:Message-Id:Date; b=un7hwBMaV6QvEiM4mBa3hPd6PABJm4jEU0YQSgDb9uGinh8hAuv1d2QSfAVR8PBFoWoBufzQOovKtpxsQ5EAVoEDx03/xbcbYRKxlKYghDzFaSb/aiBRhh4UkzJTvH0edqi5AUTY9j28snf6zZ/HU1Oy52M8f5q9yCuqjTSI+uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpy3B/Ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpy3B/Ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755256193;
	bh=VKuV6nV2ilpQBMaQz33QXlNwOQtS2cbNemj5JPCu/jo=;
	h=To:Subject:From:Date:From;
	b=tpy3B/GetU+wZxKyBSEYZ9oyC16k86lNxUBUx+CKcAg2fvSEkMmjsjkIlf7lftoLs
	 RZNKGfUuzwYaryiAcWHBMiuj9sgUlmgcQJCLbmWNjyLSVlXTn2VMSoIYOGdBgnmlkH
	 SjV1K21dAl3mn4WTLRjYxPoFM/FnS/OHp89Jp35Mxa7TzD8iGYWsRsgGUw/tLE2kyC
	 dKlQ1J37OtCm7z2jRTn7H00LUNV+Z6noyJrjgHuxWZcj0dMKnlfXKuF9SgZ9QBb0wO
	 5QoKSbaSRgZGc/H9xKULhuu25dMUnjmmhl1u0ftSzs03mWt4/v6bOlFd8rlWBMNdJ6
	 fD1gKdtI5JW2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983BDCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525619358.6381.13605890524732636685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c72edf5bc18831585f15175da5566a2406618345fa050dbb3efe06803d8e45e
Date: Fri, 15 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755256193
