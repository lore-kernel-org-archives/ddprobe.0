Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E3A40D56A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782273394; cv=none; b=V4KhMc+3Wy7jg/7ScE0kHrZ8W+kemS46x4DcfoYL7TyLt1wv3zNXRIuh2p9QTrQsHTp2+CD5exmb3SbNQb6dFc+7Hk/6fSXwBB2IJVYZRXbmTAE0MZQs2UZhiMeQSxGKnjhnGQo8tzMVZT4XLwBeW7MnwoPYRRdRLNaM3RI9WZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782273394; c=relaxed/simple;
	bh=vrQS06kSMuetZbR2ozLpmTaR9Qwg41NGY4APZIelxf4=;
	h=To:Subject:From:Message-Id:Date; b=c5SblJrhExcwc4tZfeXSReylGXN+d2EI9Hk7qKvIWtcQclUBu0ArQw6ry+FIU6hGc5Y2jy6p7iKqsqlwSNRgwBVnHJfUTfnNxczpAXi4Gcyl9hQAf+ipZsqZIHUuJplcM3uwjbJ9arjZ+dEqgM+Ili8SoyBYc6FKL3MKIhvosW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkAZaFO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkAZaFO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D330BC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782273393;
	bh=vrQS06kSMuetZbR2ozLpmTaR9Qwg41NGY4APZIelxf4=;
	h=To:Subject:From:Date:From;
	b=EkAZaFO53nkdpp9GI48XqzajHN8+1PlN70K6unT2x2H5v7cw+PrSoGIj1KR3mEJi7
	 vLUIe0dOPCvVgOhBj5V1ybsXfXPrNza8Yktk8FbBiJdBzHUcub38MsbXYhC6MjZckD
	 bJrbTOTtfEsUW4Ix8YPwWgS/XVTZU/0ryWIZYF6UJl5skZlbDVsxDDKZNgsIOjrRif
	 uqHMX5msSNyeRPI+JdMO0cwqRnt7KYS93Puer260g8g+eGXVzWM+FFnbHPdf81JeIN
	 l6u4bJ7O4r2dMp8mpzroiTkjX25/r4Lx97DAly3u60CCtM85Z08KCojUHAy4nmBYBL
	 PgXAbmuSMo2Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33CDCDB475
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227339370.21619.13424229054767470345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68105c6f6448303229f798dba729420c03c7445ec3e1e9ea25f966d7f343fe1b
Date: Wed, 24 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782273393
