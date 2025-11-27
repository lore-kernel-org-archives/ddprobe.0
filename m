Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A23149C6F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764271374; cv=none; b=m21LstPYc0R76p0onycEpLisrOFy2nvOsLxTWVe4fEuzKWg3nzeFIdolC19VfFbK5++H4pAxnVGSYHa1gTsrqkzvE8Qfnlpe/WayAFmhGn9PDvUi2Mk7Csj0uxJzrYRo1clbaH3lEcimBC3Wrot57NnYcJMlTpi6JhjDJ0aEQcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764271374; c=relaxed/simple;
	bh=DXuwGN3E9f15gHfaOelgECUrg3AUxzeIU1lPsP1nk7s=;
	h=To:Subject:From:Message-Id:Date; b=tNPlgBHmcuWD0aTdkHVDKw5PCsVl8Xh1P3aNRrP1f+OUeqYOAb9DreFzmkerN/qpQvP/W88yikLxLjJb3738xpl7CUOVi6hu1HN1meBSUqRglb33cpTzESWJEG/IsNiZ9qzX9HrPPASXeGvCeyyp3+mokWawArtmiP85odNKl6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmtx0g2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmtx0g2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D9C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764271373;
	bh=DXuwGN3E9f15gHfaOelgECUrg3AUxzeIU1lPsP1nk7s=;
	h=To:Subject:From:Date:From;
	b=Kmtx0g2gPGYS6aR1FrfTwPFIlsZ3iw/dchZCz942M1v8Z2CfK/zxDTWDIM3jRyf+I
	 629FCrFfrFH3KFgerT6iIRlyOGMrtlTPuqqKZgsvxR2CTGvFihGIQwqpo7eRk1Cibr
	 Ev8ET/Da1/Eo/KquG/Lch4a+TCGF7E3PngMup5N1OAoWMjfKb+/28pBvAfuVkydWbt
	 4FGPD6nup5s6qhmDyO3Npa2ItiP9bv6lSOZOoukB32PYrbeDhLN3oqopC8rawlyuSq
	 VXyxPBa+Pq59wLzaoB6PF9A7lEJijEf/rKyvkEoTx6ivIiaTcpV0EsK64YBK3fME33
	 kn1F74ghmKPyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105CCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427137358.9284.2470030235786290755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef32fe3dbdda87545fa1ddd9d4edcdea2d3667537214631e120f332e987b7a13
Date: Thu, 27 Nov 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764271373
