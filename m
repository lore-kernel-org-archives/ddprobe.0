Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CE82BE020
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758979194; cv=none; b=kDY+NiN5VAPAHOtkGSVG2WVqRwOdSOm5OHd/vEaiQCN7q1RFKbSg05ImsgZIDn487zQTimBoOTg7FEH8UehUABmjo4nk25ucqcS0Y2Y8Irm9/P0MnFMNC2+AxcaWrPZ/y89a8acvn+xh7t6LdvW/0OaoyWZtP3jRbjqxfX27T/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758979194; c=relaxed/simple;
	bh=oVwJxa1tml4y1RcYcBoRQdQG5yvSQFiYRNlzm15UA34=;
	h=To:Subject:From:Message-Id:Date; b=nx3LSDth6j6iw5AlHJ9DZDBmBtwm4HEDZfPVkfJ3Eqs7XeaW/YeqivGePJhXe5l4rYpp2CH23GE6osWZlh060S/Czs5LULnwmKvRYLu599ahakRrX5scbJ8QmHmb7/JhrJ/HMKlGEaTEja1BJLNT2n4Oo7CYux0cQ7obMSSTYSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMiUBarn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMiUBarn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC2C113CF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758979193;
	bh=oVwJxa1tml4y1RcYcBoRQdQG5yvSQFiYRNlzm15UA34=;
	h=To:Subject:From:Date:From;
	b=DMiUBarn5ebJ1rN3pnJrae+IlD+r5Xej94bQbi/ZpDKfTs7VgBRorXmc9wlbHgT8B
	 fZJMmdW9n0o5QybFK6XN01KoLwbP3Dk279I5Jj4EYYy5Rcac74MBf0kUFGa/JO8A3I
	 nU2K+MrtE4gH/DWhzPdTDgQpAaJQQTCqi4ThQPDLYTRXam3pWwRzmh5aSi1lexe6yI
	 a4DUWcdOc2ldufCgdg65+Uz6fCadAJJZ458+g2Z2OhuqJnSxHdphy2OsQR/l5SSL87
	 JCD6Fbbp/EBNJfBnTMkmG9BiPh/K0a+2ELUhZTHT5qv9UondnLl1jH3RMCXvhDtuNJ
	 DyBURvui8ZMFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98130CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897919358.7228.3379986389838510243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58814101ec5e9dcdcfca42633e3b78a393b7d308d3c717a8ddbb39e801aa089
Date: Sat, 27 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758979193
