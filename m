Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3845945
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749221395; cv=none; b=Uarns+gKxLQOu0P/Rs0p8Qw3bNTUqR1bK+7qnObSDrDjYJKr55lRJzA9UBCNgHFFSxc4Yqi2YqJDKvTHJQBQ7P0Ki/03h6kQV59cgGOeDrjGB8hXrAfb3euN/kQSlI7PIFDJkxEN8z6hv4eP0d+Bv1tahGHZcQgRLkUhCKa8RYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749221395; c=relaxed/simple;
	bh=B5wCa73dFC4s5wUEBD2xG2Za0Ae8zrrjDO+wtaGYDXQ=;
	h=To:Subject:From:Message-Id:Date; b=AQDk7msaU7xD+aDPsiUK5m8Mgi0Vuc+Awpqhh96DFSTDf8J8+AFXEO0tc20Wad7TWpa6wMSliS9+CBONEJZrt2V77Q7EEdop2iCbltnTCVQhmUccnBZ8iDlN83DhYUiDmuC/OxCogyKgiO1xEqcUAvMHtOfRAYOrHkIhIfeVjp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYFZ8386; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYFZ8386"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0D5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749221393;
	bh=B5wCa73dFC4s5wUEBD2xG2Za0Ae8zrrjDO+wtaGYDXQ=;
	h=To:Subject:From:Date:From;
	b=KYFZ8386Orp56Cm7ndBm/GH9CRscVS/2hMlwiQSK6eTJSLBcorLaTVvJf4kHo4R9U
	 G9lb5tdvM6/Dco/kMnLjc+7w2RhDeZxTzTtkYwgDvwA4/HA6/Nt4ZkX719IundT8Rd
	 lXBIZ5rMlKX35ZvmQm8MYeNjHSUebkvtLYM9mRHui/5frn0En6Vuf6yupwDbkeFuI5
	 gTjJtio22ImfJUV+KjJl5JZ7k+EKlRMNueXNqrTpQiqyCcSeSzcToNawrFOmLY2jVF
	 tHLnGX4hDLD3B0VhaXM589A1jht87PpR//Cr3JgB4JHtuuQ51FHgo2ZlOYSZDQKfGv
	 v4K38k3UH50bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF38C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922139357.27425.14017576890365416008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4394494c6b55c28702819da4aecfb765b5f6e717c360b1627a8d52e86bebc514
Date: Fri, 06 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749221393
