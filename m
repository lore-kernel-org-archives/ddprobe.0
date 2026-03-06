Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257E933689C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772771694; cv=none; b=km2eaKsT8c7JabUZcvCFZJSL5JEA3c2+7BJqgStSMxaCeE5KWTLHZu+fARN6rkxVzNGgSym1hpOGsdhCcEjkhTgtbeo3Zy3DBwvPwvSw3VLbCII38onO6OffqwHYEWlA1+QE/4ck98jdMuKvCsRr+mzkGGT1t/LuvziKFShJVXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772771694; c=relaxed/simple;
	bh=ZNMyWfX96s7va+f7Jw4CY9rmDm2nhAvPqRil/B6a4VY=;
	h=To:Subject:From:Message-Id:Date; b=YnGzcVRQ6vK23hz50okyEKMNscH8+1/LljngG0L4hzBwWP4sS9yB96LasfJv659Ltapi4XBkGYP3UQFhVEAsb/X5Ewj6cntz89Aopsq9ckEE2FdAZGoNMosNqCLeHUsyW/6W0BqiuRDPrQO+8nujDrWb0Jz/RvjAkrcqsReo0KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPimU3Tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPimU3Tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772771693;
	bh=ZNMyWfX96s7va+f7Jw4CY9rmDm2nhAvPqRil/B6a4VY=;
	h=To:Subject:From:Date:From;
	b=lPimU3TmKJXnwFEe3+MS+77slG3aSdTyo8r1A+Ljrro1s03YbmKBjXhhbag88DEGf
	 w8CbRLYIVXT+De04WeBMKszXbLWmEb+0E7q/6qlxSRDN6ZU5gxyVWjSoeRlQxmfQiN
	 N754HPTpvWiddJ7DBOHeIFus9HIRDx++f4vMT2krOr0TkIAJ/Otz2luM1CqsKlhhAf
	 K0IEHxICR69I5rPsoV0/ueUKGYFlgXbIGYcQRQ61ZGpqTsOWKObAJhKLsfyLXZe79Y
	 ThH1I9JvtuQRu6x3BtDU/wTcgaIk7uZ4cWTah4BNycQL6pmJ7nB5sYH75OkwR/GmaR
	 hvNQVdYzI9ouA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03FF513FA
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277169357.16034.10500222685499400339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2820ff69cc88cf3b975bf57ed3aef25b729930c7a514717b01a5299df3a79afe
Date: Fri, 06 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772771693
