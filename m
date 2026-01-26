Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1011A317D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769411634; cv=none; b=Es6S6R/Hyj+Hnt0APvodVetshjsmSL8W619XKKMvEgAOMWSU3bvJ5F2HAaRnUHH2/kQVRm6V67kpRotQeQFhW4pTVN0/e+m5mZdfWaNBjPdBnnzlnWbtBPYZ0td0HSPfl4MUH23gNLnNr1yDbw/i7yKAv9OFi2gYN6/UwVSBv5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769411634; c=relaxed/simple;
	bh=8l+6XAcFPZO8BbEd3tS5z+yp6LCY9CqnmQ4aOs/ZNrg=;
	h=To:Subject:From:Message-Id:Date; b=oduD7TFJNgj6+vwJMRXlGuiJnWSaEp+jqG4Yd4MtjouC/ZgXLF26hVczIVwvGRKfT7iJio6VBiXmSWlZS9xsizFiHi332NFOSAaUEtPmHHGXMx7zKkctTjfUGpsLPdpN0Pw9jjYbO1mBDUqUpk0toXPrpbwwPs6MsY154Ob5aqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOKI4qhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOKI4qhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DDC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769411633;
	bh=8l+6XAcFPZO8BbEd3tS5z+yp6LCY9CqnmQ4aOs/ZNrg=;
	h=To:Subject:From:Date:From;
	b=gOKI4qhC7q2r+jrT9Jk3gL/QTD0j7i5vMS8xfkEhKuSR1HShOD1hH2zb6vNAbHoD4
	 /ycaz4JVMLW7m4dFHC3TeaQrVUm3CthgMvY27u9+Kz0lCS40OMaFhGho4Ds5f7c2xr
	 y0a7NRwGmJlJZQBzSTZZ8Dj68Mel4pYUA7iGlFa5xBpewDgfH95YvcZP/3wGx7sL57
	 XWbHl+0p+PK6135sKgQmbrdo2+5E0ayfGUC/CNlzDgeTQQ7gD9jFGy78otZXbZ+64k
	 TnG8hrjSDkuZ0nU7Q86hnqY9TaotgcMoWYY2oFmALWTqFXsFO0JP4cNruZWyJWVAVr
	 4JWW5s7vNM9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B2C88E57
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941163358.4535.2601245550330430134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d01ea2803397febabb8e93af460f4cc241321dbbe2397348373c4ee0885f35
Date: Mon, 26 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769411633
