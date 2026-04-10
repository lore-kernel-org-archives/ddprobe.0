Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654529BDAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775849854; cv=none; b=VCwVoO4ZZ5DR294awfHaWitIAiXRu1ycW7XGomaXZQyIkVzQUUuNitUdCAFQ8v3t0xeWLhoZSMmRhRxKDzlCvOsgS9/9YWWcyW5OYz+uiRCBKEhVOR6VfaSlWCex89PXZE7bNZlzcUD30EQif+WH67L5VIYCC6uR93UbNs/p0UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775849854; c=relaxed/simple;
	bh=cPDwfTgi+69APo+O38FTJBiDa3gdegcbOpz/QYFpHH0=;
	h=To:Subject:From:Message-Id:Date; b=q1F3nLnIaMSy7Psrq1H3QjCkJ1krf26hJ7sKtEO7kwpzr5LVYmBymquYPUtbadzRH2RKjAXc9rxaFubHtmGeiWf2sZacptU+qZUze7ADyPYyYE1KdQ482S2yHkHIaG/eueAQCquW5RJAKjgy9r7oWZljxvcmowbAW/lOfq8rbb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPiVSu94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPiVSu94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EE4C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775849853;
	bh=cPDwfTgi+69APo+O38FTJBiDa3gdegcbOpz/QYFpHH0=;
	h=To:Subject:From:Date:From;
	b=rPiVSu94HxG+Vlkqi+GZmGPysJH4uU0pkTntE7iXayiSKQF7kuRRrNrdX+BZX8REh
	 zEm2mVDXDpJ9ATan+b/+piISV1hMYTEIDkAmowINDVy74rBZGG/duZCS+QY8zzVD12
	 kp9TV8pZVsij1cJrwGnPwzluk8gBuMPKhfIEBs438VbAHsJj3B922PBbZ2JBJChmGw
	 ablb/dvKdlCgbwZvpUFHz7r1aCR3oThO+1AqcaDoNZsFSnfqoBVGEAMF2uSjvsHCAy
	 HYLNemgo2KdhVReHdgXjq1kOgh/NxlPefp61bgi2fqnZsmkmJykjWL14n3ykEZjM3t
	 RRoGEkUqlx2oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA009F45A0C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584985368.19565.390230447755831281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a0e107b19df9b3b0c067ee8f0668f0bbd2281f0aa6593178a5a0f258306b91
Date: Fri, 10 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775849853
