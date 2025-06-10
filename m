Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223BD4C96
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749532195; cv=none; b=DNE3T2xLxv+Q32jPI4wx/vWFFkH5DRWHF/HlTporYXt84dxFyFko4bxj+MNts+V4zKp52g5kCaXHZ/dxh9HGDabYZ3K27x5ZQZ5FqItYg3OY6jjqo6xVNO8IAHwzreAkanq6N0g/DUN8iJkhzzQSqjB1m5m7CsYtgDGpH/dgLPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749532195; c=relaxed/simple;
	bh=fkmpionfSB1K7BtsTikCO1aiUzoPVQcyVCiwtkQaXuU=;
	h=To:Subject:From:Message-Id:Date; b=IY8QdvasRUtSeh/NT6+jl2WHnlRveML/OhPIEbQfylG987u3Ckh8KiAPmbwL/fhPekOMjazbh8CcmaQKdanxWcavWzyVWpz2KwtNtJcDex2K4wwNoBbdi9mplLmoxkyL9i5uz/fChyLeLdzZzR5sVmn7Vl53LauKPOsZaln/gqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz+LEdRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz+LEdRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E6C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749532193;
	bh=fkmpionfSB1K7BtsTikCO1aiUzoPVQcyVCiwtkQaXuU=;
	h=To:Subject:From:Date:From;
	b=Iz+LEdReIEnupSDxo4vb0lHqk66rmX1Pe2P7sdGu0ZB2z6AVpDLsv4FbKlVnTKkys
	 igIcGSpaOFuQLjIGUSUqK/70HA1iZdg8K8ex7L/k1r4c0PO0Bls2fFBRgQQVSWdbDR
	 /z9HlJ8py8N+ou18WftLWhWuBBuDy8UbO2ekhUpFRoH3vbt1kG3tE/U2S/ZPnUoAJS
	 6Vo0YGU3/La6C7Ff0KKI2frJ+IXoS2sA8aeJfCjrxPogVVk1/yeeUatPUgD+EvKrZo
	 WYUer2LvutqUfu4aTdnVZ+wOM8zClGd2czeM35Fd+UdfQ2wkYsCrhywq4eLkjx74YX
	 BBcbzroICpQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271AC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174953219357.21065.3325729148205517435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eca566adceb8751f1f0d330ffc37bb32943b8b953ba104ace57391d078f8267
Date: Tue, 10 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749532193
