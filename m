Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3547A1A5B8D
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760749194; cv=none; b=dO/keRZugUQW5tkdiMQwlWMaAmPkmeYvqG0Q6kZu8yo46Z7A7d9t22l9q+o6X40PhtfWq4QzgZRRSeil/nbPE1K0hO0tezFS9V6oXbM3GirYay0bigihclYOoVrr64QFKJVzPN89XlJgqCH3Ima6ZzO4FUVleC/nF3kf+uKDXlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760749194; c=relaxed/simple;
	bh=7sHoY6RC+C6YphhJTLfZqjdu3vism/pAVYv5LquVl8g=;
	h=To:Subject:From:Message-Id:Date; b=SuiygDLtgRZ6ZzvitZF4kXFjmAoNgSCi3iW5PQgjAa9Q8qiJyDl2ay+IHzjaZxVsIAxN4ohlMUGF5bLuDo5WtavnPx4iTWkFWQnvp9NsT0aIAl05NFyXzCxTTyyzPnwe/vpIE1me9had4pNP7q9CdVC2Li0fv5DYk+IGu4p+70Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk5ZyNr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk5ZyNr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AA6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760749193;
	bh=7sHoY6RC+C6YphhJTLfZqjdu3vism/pAVYv5LquVl8g=;
	h=To:Subject:From:Date:From;
	b=Zk5ZyNr4KFbh/zJhBQhHKkfM+6NNRZApmf4RhOBTiOmkCNfkdMWZZ3M+wvYVw9+yl
	 f501+RTANm3DhUg/C+JfMIAJPvmjSkHcIItQEsArjNP6w8lMmxofgXlvPSguOrlpNL
	 PEMrPekDuynTtrTp+8WZoOJIQ8oUlWUDKnMTAiYijMhnFXsV40tLS5+8AHDBeo2txc
	 INxMTOAfxlKwCDVRZWrHnchjFztr1+oUqrtNgNqroHJ8ZuFnWLSEzouWZG47jP3VyJ
	 qWwdhZL3phm4R1GOB1ukAV/UB5qmAyLvbafrqKeNUp0k/p9el3snBrVdpqpoEsjQl4
	 xW493HKzT4FNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D43CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074919358.20626.12984627493490510333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07da359c8b8410cf9c397ac5240398edbe4eac7c77dff23feafdd85326fcdc5
Date: Sat, 18 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760749193
