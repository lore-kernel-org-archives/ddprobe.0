Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275AF1373
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764545574; cv=none; b=iRtkfSjQVYQOWaV0Dcx9butKCnMxwaHxy2x9uSGEGQ1gWnNqmzqHxlB1L4NRCnsQUj+0BTXTg0HL75P1R/NAI+u/xl7RgBRbyP3ANbUHDbLbkLNuvnpOtbgTi1ZZq4KYp+yEPtbUXGiLnC45CGLDwbGYmw6FUslE4iUbGwoq2Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764545574; c=relaxed/simple;
	bh=PMYMCtqk7byKzQzldoaXpynoe4y3+o2+t37tk2Erun8=;
	h=To:Subject:From:Message-Id:Date; b=FPbZM2gxwQxqaNOIxFu1TTrjJRwJfHoJDozGKBRgtuc9+pe6pHDosDT7I+SxqkIq9N/2W6vl8XfaRd3wG9YE4ugxVgWjjm8zK7Sl1tHdoEGLrPE5BNjI3Sdy361SEx3OxBH7ynghTqerchB9D9c4U06rUS12VB7fcOxyuGHMl1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9F1LAWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9F1LAWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A9C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764545573;
	bh=PMYMCtqk7byKzQzldoaXpynoe4y3+o2+t37tk2Erun8=;
	h=To:Subject:From:Date:From;
	b=V9F1LAWkSZPadU60jwI8CI9gY8iSUERNrY/SQzaK3dzxABX2IB35N/ENHGbTuz36l
	 oqJqriEaWhbQC1iWnCU6SV9xqPV41GZLNNA2i9wpQ03WYYF4X1a5IexicNarN3ejgN
	 jXoTxY5Vn/JCzw5zqbx2dUBejesxdpgCuAtQAB2sjQY/EDBQVIBaDwXpo9NWXovJHB
	 4/ATxJPMhlUe3yWZ/ZvrPmoomc3oHHwdp20adCBpcR38ssZAGjSvK44Tg8UgqngvpC
	 b8nbxAN/eWLsXp+kYy9prlToV+nTaSDsK6d+HNKyQFdpDPuEstMLWrdPN+7xSAquwl
	 Pl2Q+A2fA+IRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D2AD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454557358.4936.17427607630695752451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06982991c7fdbfc08f0351ee6fdf8fc19b7894a2cf7ec1d9c751c642e3db0975
Date: Sun, 30 Nov 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764545573
