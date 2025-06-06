Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2408812CDBE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749230994; cv=none; b=gSbOgLGArrlarvWyK1qjyRBx5OIOncS8T3g0VzN3vKgT5LAqBkGj/tAIsfwE0IVcQFuuogXfX0HqAFQiIi0KKj7xJhDcTTx0JWFwiQEtYaIV30f6k855SQ/6Adl5Zqld1CPthNgZIMbO5+mie95buCezYtzccE3rIIezVbsTSEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749230994; c=relaxed/simple;
	bh=Dpvrid5RPf0Lk0RDmCIXzCDuWKAkayZhIK81GW/1he4=;
	h=To:Subject:From:Message-Id:Date; b=TCMjKTusViGuE3agNbsE9yWhZGt6o7kAV2NZtJ4xjZKOf4hCJwezI7Kgn037t2Z91CZsbhoiAik55uYxAP6ZwDFKrDRIyPL4UeFKUu8LsKtpUPrc/34Hhg2ks8oLWZi+fXvKNIB5WusQBnQ16OUF0uhO/TffGUET1XgdOy1YNDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoonOQQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoonOQQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B30C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749230993;
	bh=Dpvrid5RPf0Lk0RDmCIXzCDuWKAkayZhIK81GW/1he4=;
	h=To:Subject:From:Date:From;
	b=hoonOQQGu6kkFtbrFZKe2HjBvgrS3Eukmdpf/cmjVAj3aESfLZNe/ajGNHpFeRzy4
	 zetwNdX7tyRF2CkTEUsT96XvJ2xM3R7/i2LyOGHXuilQ499FSuieD12Ss5ms40cpas
	 U/JJU1AF7WOyoVVi4GI1bM9dx6h/RushCsKcS9wJZvE+g7e9n2tF0rxMgwN5oEQavV
	 G8jgP3AlfQGWwAbW11e76Jp6WFituGYdAFZ80xFr5epd4/CUFlw9N4x5FYvUaS77Kj
	 98V2oXZfD37yRINzGl9XsdMhiRJIVuyTIDhbCg8zZT1qNUgpe3qRb+Wtqs81PsxrKS
	 RqmoXxycFmqUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96797C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923099358.24386.9390173061487843578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd06cfc68d0a51839e375da2d5a34a60b53ce476d406f2d0275a0722bb24b0d
Date: Fri, 06 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749230993
