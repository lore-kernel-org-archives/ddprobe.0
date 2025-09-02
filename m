Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828735AAC5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756850394; cv=none; b=q1n8NfVs/GJN2DUmyQybmgodFGVe1sWSBWSriJiLKR72aKgiwkndswz0glkTyWK7rKKUbE+Y04VwV9A2GP26mTYiMrLE0ArF1gjVMx98BaIyY9Maqgm7MZ+roQqlZ2DMAKxdk1PEYo5iaBW7s4fhkT9RUk5MemDlhRFvjnEhXHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756850394; c=relaxed/simple;
	bh=am35qFmSnk6v8WJjswF2/WYa6c+3QGGOhv3mkZf5ndU=;
	h=To:Subject:From:Message-Id:Date; b=N8hEWm9ITtyeWg5MlkwJgJV4DwvikqSrQSkC4yvUVJHa0pmeMfAsecKTKf/L4Q5XylS4vKhrYBjGMA5j6n69LiJje3wMmm/6j8Amo3BpysQfr72BR0glVzZG4qWP2CiGUO5xk79pTKXnl6SfyIyHitDq1COLg/qxzll/GppFmRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpqQg/SG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpqQg/SG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C45C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756850393;
	bh=am35qFmSnk6v8WJjswF2/WYa6c+3QGGOhv3mkZf5ndU=;
	h=To:Subject:From:Date:From;
	b=FpqQg/SGFWjSwelCrC2xN1o5VkvwXeLUBpftw34WEU+YqxjYOgkatZ5TZaOOcnyCn
	 sTOfkG4p7VX5x0OD30pkGJfjcdB/mreW+0OWqgFgtcuctSeb7Loxcu8RGskdb8nhRB
	 0Qk13gKLT0En7HI2wC5Ki548jTY+yxTTohnauPk2E6ULNtALmpFwOavfYiFb6Xcz2T
	 AFjlC6cckwwsPdmilCZ4lhCzM5PVwozAJlukkUqweLHV4lTExXj5qDnSK+M6pS9xyx
	 9Oq88Nqngfs1St+xy+UobjPtbTKlZ636KCsJDBz8X8oqf0DW88YI5bbNxA0YOeQ04e
	 okf9iTJtOpENQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE49CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685039357.1543.7278853465842672211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bc3597bf9b3300a79233744629ab8af3fd2aab5a73f2b486299a32cda08298
Date: Tue, 02 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756850393
