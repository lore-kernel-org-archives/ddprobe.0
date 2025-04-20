Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DAD18E03A
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745144994; cv=none; b=qTAwqTmTQdqBmBbSUh6YNrU+LHkRGw3U8ppOezrY6SP6V9mU6vMIcP+kvPym9X4u2IPImA9AtsAj9G2LmNMBIMA0pasifsAHKFSJNbO8jE+LqJVPGnpWSgr+xcE++5OSTO9kE4PELFK/GzxG+m70la1LtBoy6kICs4PR+CCkS0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745144994; c=relaxed/simple;
	bh=K2i5ooZ0N4fhP+24C70WU6lkd1KDzvBKQvj3InBNnDE=;
	h=To:Subject:From:Message-Id:Date; b=WvgrumCcTegyWFkhE4K3jopp6a1IAnpv63ybTNCG7viWxWgPl3tZ3vLdxDhvIGYEEV0g8l0VatEUIWuEob74g49fRj43THTQ1FKl38dWa68gfggsrtI/1cvK3Flz3mSUkNcLpxfMQHq9u8XAJvtGyr+1Rp9Cjb4XStYE0tacEUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsyjYoLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsyjYoLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A911CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745144993;
	bh=K2i5ooZ0N4fhP+24C70WU6lkd1KDzvBKQvj3InBNnDE=;
	h=To:Subject:From:Date:From;
	b=MsyjYoLjunmql/g/QSFg3C+BzxbLRKdlSIL3boD4lHeVqE4JQOMIWKWICZZimauxK
	 wCQND/ST3QoevvsRaebr516oomnREQK05QiCuRGfW0Le2rx/aa7Op5hkBlX713NO1C
	 4ibP0n/WK+DBe1HOAgDEoxpRoysGAZ/5Fg+cLC5fgvuNpH+TQTALlL0aMQstMKw7yU
	 OlV6Lr87hdc3LxNoXzce4T//X+v7qIAKnyQnWsBQP360xNQxENcrNd4F8OYWk8zIvO
	 zQr4xzJgwsSoZNxLjzt+BNrXFwmyN9CxYXq69kwFp/tA3MSo3rJPFDOgcr0raOnwg/
	 5+d+0RuFtwcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2AC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514499357.3172.5403523778352565795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74af31d3adbea83f7287f8421179eac9f85a495b8bb6bddceb40c96992ee8c59
Date: Sun, 20 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745144993
