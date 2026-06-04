Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1583939D2
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780607674; cv=none; b=JAM962P5yJeH49SKSxBZGB1tDYzA8vpvqwqGBBqkb9uXbp915WDPOeLn4SA1kMbLUhPCwGsEyTPut0HHK6w/DUALq44v29koHL83hbyEunefFzwY3ra9ay5pTDEDhcjt8cZgtWotT4JytehIt8gcAIVOrpYbyscZ2bUIUscD+Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780607674; c=relaxed/simple;
	bh=uJ5vDIa+DEqCBExhT49JdN3zy6Dy+piiJ48NwlykNyI=;
	h=To:Subject:From:Message-Id:Date; b=mgEEEtc5jgH3MKNcILC2yaTKURr8we1t9Db/ZdeNljgyNaVK1PvM1rj0gOsSCi7eTx9SYsRJ4I5cQPDHOZ8Z7rTo7l4Qo9PQG3qWJdtRFK82CuiW8c+IMg2rsjSSvsMAeYre1F9tb9xEsURbJNSPT+DRZbI5l9qe6PfN09pDNJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuP0P1zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuP0P1zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BABC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780607673;
	bh=uJ5vDIa+DEqCBExhT49JdN3zy6Dy+piiJ48NwlykNyI=;
	h=To:Subject:From:Date:From;
	b=cuP0P1zVD8xcBGB/YrVCujBwRS7/YgL2OUwd6nTY8sRhW8orrAwGDFfW+52FZMORB
	 kmM7eQ/ky4rUabEeGUvAmmmbAecDVRSp5awSyDHjUeFqkWMKWN4TA2dakhSLr6twTc
	 NWFzmvjzcquOpX3Eu19wn3tdd4AWaQSKTzVUYlNhTcx8XEnvtSukCqZ81X52Qt2gTP
	 mRbVcR1iv56/bZEfDOVIpFNY2EKn8JErZq7xN99hVsLM9cXaIAjFBezsRAhyXKMIF3
	 tyJ7m3DDBCEwKZPDT9ZlSg6wgtQ/QKf4UmHd6h/14kyiPKCUfHts+UEemFAm9qSgEY
	 pZCQ3+7K98HUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDFFCD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060767370.16603.12277927992445172794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59c0f442f5ef880038f46519a91d97912c5ac1b61c5f58e564bdc2803dc3ad5
Date: Thu, 04 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780607673
