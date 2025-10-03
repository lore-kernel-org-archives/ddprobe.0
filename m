Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B499478
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759468194; cv=none; b=N4dJJsQqWMhFyo6akZiVgTbt3iLLSDR9RXtGwyIG0Lkd7/h9VAr4IuqXkOLF50tYx9pDYfI2rF1r9+23u0pN27L7C9Ebk4YrTNWg3Cxwc5Qgeniqd2ywPb0IonfIg++UyGEqOCleN2NxPwdVfgdBVTh3tna25hs6AWog0zEpvRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759468194; c=relaxed/simple;
	bh=GSXwYOY0sMt4GOR0aWnG072dBd52hFMGancM0ZGTP9A=;
	h=To:Subject:From:Message-Id:Date; b=AIhNTPaLY8+3O+HmispPInUU6fIS5tlxw7Elpr/urRSeyBUuo9XdibYyJ8iJ8PhoaD8fdy7JtzFFYPqH3LXLe388tm/PcLz6QIrZiuVbShDgJDHrXEliy6+1Cp65L4vSoXMiLpjYLwxn3J16U/yIX3c/PAbvI90I+ay1Z5farFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBeo18np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBeo18np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7111C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759468193;
	bh=GSXwYOY0sMt4GOR0aWnG072dBd52hFMGancM0ZGTP9A=;
	h=To:Subject:From:Date:From;
	b=OBeo18npplzuwNGb1P8i7LZlGEFoZafL/8D+0qisACevDeoI5ALwxoOJWEHeORbrH
	 aqECSzFqacQwLWSLFoy9eRNs1kUIBCpH8RRyqibyKsT4Sj+OwkuaxMW+/f/pwy6CO5
	 Am331/yJcgfvWwPiTL7ucSOuZmfx3g1zpqI7ZiriV+nAWM//xWEAKsml8feQWUhY+M
	 x7DO9Y4KaxIC5196gsgtExANrYMFvprPsUFH33g0rGHsr3QvAO4Et+8f0LtoUmdnoB
	 NgPlYe9eO8SxtZyY0MiFHBNNwi1503YiJwgcsDig66N3jE3tOoaT+ALIpCoYr53Y+2
	 MFdBNQxg9cSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94713CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946819358.25433.5474581705907543968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1414678cc6638995af353d7868812822bf7e4eabc660a79b9f78a5141724b4e0
Date: Fri, 03 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759468193
