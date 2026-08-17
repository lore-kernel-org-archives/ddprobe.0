Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667BF2D46A1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786943434; cv=none; b=tadrf1rQsAX0uwlt3oKjvkiDtK/xd3G1T8TTXAJIjnOog1NgaYrdFEzQFGvXcE/HmohX4skXyctA/3L/lAgXCd3w1LySCR5G2smNaEg8i4Pw0yVK/Mjk3zQ31/w2EL/Nn6H3He7JoixwfgSSqnTonHiUBKlTEC7HtIk3ZPVYyiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786943434; c=relaxed/simple;
	bh=BfokOTxfSwK69aa/7in3bgG+FRZ2pGRwI4ENLgxy5kI=;
	h=To:Subject:From:Message-Id:Date; b=uq1IJBdrEIPkUL3Mn1pdF8xi7KmGhKygcvUle+O+ECu1JvHyHEGhPUezox0I5SqEtsTySOL+0UI7mHpfBp2TKO8EsA5ss2TXbzAqIfUagxEFsr29BodZ/qUlSFZsQcgddzruoXRReO+OYmR1w4gitLha3zAoLCPdu+zCuq3tC94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XknZHU8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XknZHU8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50D0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786943433;
	bh=BfokOTxfSwK69aa/7in3bgG+FRZ2pGRwI4ENLgxy5kI=;
	h=To:Subject:From:Date:From;
	b=XknZHU8wlLlcDypr2CKhqc84CwCsGkY8S0xLf1AgnYaZuZDmMxkfYbEDt6WgtNnsV
	 x6YhKsvCk+fmFwSIKdyuWyOoPt1m8tk9HosgDrR5KE2tAauzzr4YTI9iNhUWssGF2u
	 /OB+/rqmjvsHJuMEf0pDaOkO0SzCA+06QesEtBWdmQxnzFA3nzERuY3VqVAdz9Ga0e
	 CzTXw0bLf83/Qk3AyIigZ3FQqA343JNLDdBa8opjNrBAykXXnw3CyyhKjutGunEVkg
	 hk/35uWDNRCB5KJd9G6xcw2POWKQwJ8DunZhcpRJ5HfA1yL8hUwV76+84o8VSt5S0c
	 0pTeyK9gqr4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8009C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694343374.1723.2791655247281661589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76d5e4d4912c58b203b01834ec102486def2839b06c20a0259075c65d33b7ba
Date: Mon, 17 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786943433
