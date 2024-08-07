Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9262F43
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722997554; cv=none; b=LQFPdeW6KTBNGj7BtuWOnrm7U6QX8D2Y9zpwjsUDSuqUcf2dieFaFPgRE2+yIuA+5QQ2sepXYkPeDHvUlXzghNr5juH2gUJjeTbRald+n9EWdtoTyjsiqhi6lBQFksVvWs90p/NB6T9XGyKX12F8moOFgYAo2BpAiu6VZVje3wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722997554; c=relaxed/simple;
	bh=gzkXTLtV9SpdepXcWW61Ltvt4wmOiiB2ZLRddARnWmQ=;
	h=To:Subject:From:Message-Id:Date; b=cmZK7/b648if0tPmr4yd31VmpiW5yhS+EnUKWlB7IHlcTubu0ObfiHNsbP2bi2frKjq3FOg4lwb/M03xpE5CBBfNpcIfl6lh755I3MPS/e06vZVRSUGot3j8Ela694pgTDFQiaHid6yAMNB3ItOFAM7iQECzhV8XXOPRvFMS3es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOXegmM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOXegmM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E88C32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722997553;
	bh=gzkXTLtV9SpdepXcWW61Ltvt4wmOiiB2ZLRddARnWmQ=;
	h=To:Subject:From:Date:From;
	b=tOXegmM2iYhD4Z9Eq0EXPViwMD/vtCPQaaXqz0rCkbWr8dWHIqQWkqsZD05MKZnRa
	 R08aBB4xjZzDCGjyjLoV8EnH6djAHjIvzlDWwzz6Bz9S4HlOP73yXc4KAuAB9Mm5BH
	 6rGysX8wqr/M/2bOGNUwK4+j4OIk19hx1dQO2A4mcyBKnUTL/Q8kqui3rHJerOmSi5
	 CWsFV7jjsdIdfpMNMn7v0gpEbyvU2FNO2yAlrnTn0KnGRfEFRySh1dR2ewwqgCHzEp
	 RABFOs9LBAtB6Mmo+F4VjnTnVj1U2ATBHVwTe6uTz+aN+2pk4RPiTtISRlAnf+7Kna
	 PYh82p+0CZnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C1C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299755359.20269.16914088727655090345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c533a64f6e021857a591cf0965809f58c03cd58fc0a642b08830df719f1945d0
Date: Wed, 07 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722997553
