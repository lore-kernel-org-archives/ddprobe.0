Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25E62820A4
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773754493; cv=none; b=HHC2iCoA0sXpgSbL7+KAAmnD07QG/aTQm2ywJQzwFNeU0n2xDwx9/SsGPJ365axySoNt5vDSpcoDq3bmj451gzg4MXsYl6h7tPUywZ6DxPUmojt+pO2ZnpvIX871dmPaJgsFTl17M8SPifn/KPZyL4QnOiwRTiY9PS+zx08ZtXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773754493; c=relaxed/simple;
	bh=EXY5Ohx9HUfmd/GKHPea93fRNCKMdsS0jE542SvtTF4=;
	h=To:Subject:From:Message-Id:Date; b=ojriKZffT7KeWsO0GfJp8UBlCyot7LGNQcOr5ZqmzXnV2CPFaOFl4fJS2Qe/9ArCknO1SoBP37gApEliqf0uEpMsMZYJZSCzc4RYnbqk3z9+9rrHbis9EavRjMvop1lHVnMWKgLAT8/1NLvnD0enVOwAYAW1wft2QIpqotNArOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNxOUkHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNxOUkHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E27AC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773754493;
	bh=EXY5Ohx9HUfmd/GKHPea93fRNCKMdsS0jE542SvtTF4=;
	h=To:Subject:From:Date:From;
	b=qNxOUkHzOdMGmIRyMyu9rov523ayrJiHPw4Eim9qTNwpI+2z1uZOFQsMk4nPkyyw/
	 tXou5SzW6gRPj61lcutALCTTxXLNSYOeO/ENt3SEpjHGQZurjgx39AmeYIsBEZV00O
	 q3YeihGO2VWalpLrWJDQ7mSLcXTBO0uqyngaXV+Hn8uuIL3ZTFrbRjMDPNQHi7ZcX1
	 2M63Y/MSZbRmrW+Xegdq95ToP4p1A6/YB8lAWWyfbTrr5xs3u75h2QIY8PYO/cTBDI
	 mLzLIAyc+3fhuOWJ1yT1C/+xNmw8o7XQh3ZrzuvYVOkqcFA5x29uVEWyRk8wGVuvVB
	 4RzonvCOPlrTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8ABFD8769
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375449358.6185.7792818934974733258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08aa2277a7d2a621dfdda3cc8a9bfea7c273e7fd08bc61bcd5b49c4eb335ce4
Date: Tue, 17 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773754493
