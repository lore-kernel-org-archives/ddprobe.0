Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAB6440A08
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786980634; cv=none; b=a29lVP1Mg2fR31S5wUF/+DWNpLsprZVbviITqikwLz8uY2+KRgXW2lgnMGdNbCuoo6Es3kWrV+C9O9kB8VynwlB0SNvROkv0W66pLRAkPKsHGsLkkaeeltvxeyErSRQh0YQfsO0XY3jgH4fuuNJKrzWnC0NfGmaIQuSqdKfVyNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786980634; c=relaxed/simple;
	bh=obaqrba997QMp8p8/B+6zxuSaUUwvxfet+bAAb3PnIQ=;
	h=To:Subject:From:Message-Id:Date; b=TgUsn7/MsWm/uLgx5oMnKEp8RPbbD5QQHJnpIkxddBCOpeFn1V6ATi4R/ADoi4T+ktgjtuAZuyskDFmtcEcc8kiWpwLbAxnFXkD5+J7AqEC0Sw56R3+PX/OKIw68VyxyDKfrb9v14gtIfalfnECW42WCCMdBAQnQqnBeboV/wGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX2a18R5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX2a18R5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4CFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786980633;
	bh=obaqrba997QMp8p8/B+6zxuSaUUwvxfet+bAAb3PnIQ=;
	h=To:Subject:From:Date:From;
	b=fX2a18R5JNL72JF6JcbQv4B7Av/NVDrhMkr2yFVK5xNOxd1HMCL09CPN1jyiBN4Gl
	 htW4T3T2IzyklkfS2g10sS+tkyvftPSLdoFi1Sbb90TJ7Ie2TQWY3BPR9ZxHhmjvHD
	 wc8BY9K0p6lsZJ1367aoliaWdPxumJSeVQkAx6UOjfnhgeQUD3cFRWK+y5YjpBiMdL
	 8QO7syfTafxRZvfafZqcz6EbqgOznjIlY9pkeFxtWgTf2N1ybXxS7d06bR4vSm9K3Z
	 RKajIwaHyYwfwp+OtPu8Ern8REjCM6HOYk+L1WhlmLsZXYh5ogdlltQcVLWymWnGsd
	 R58YIenLTAJhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C37C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698063374.24231.915027715542118952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fc591792f510634a9889ca629a61a6b6ae9e159c567ab5738afcf18706a8c2
Date: Mon, 17 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786980633
