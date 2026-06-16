Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9548634C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781614594; cv=none; b=TH692cCBrhckDPMIDayYTJ5UJTVDHK43UPYJP9M9Va7r7A6w8/zM+6xTth0Nr91SBjHWZxMWPAEAmc+ablp9CtPTIDgRYKA4qN2/u5r/dddZCymCKWIuwCEWLuef4rH0ws9vXOjga9k53ddEkadnTcEMEg5OZeYbDCT+oz5uVIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781614594; c=relaxed/simple;
	bh=475k0Z7kecV2gTyIZ6jPD+Yz5dJzLXmHhKmgQTcHo4I=;
	h=To:Subject:From:Message-Id:Date; b=YzhORhMjiw1jwpBEK/HcLlekZk5/5dLTCE8n8gEN+nVH/nS+zRT0W/TLvXE284xLM00isWoWw4cW1S8P+Z6rrlpkYvDJ9Z2vN1GvIddc5tPSYMM1SOw2QEcnpUrw5CQWBRGWNYj0EOIW7cBmwtUX5Qx0gGODoj4RZnqo4IP5d4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUGZzTW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUGZzTW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 147ADC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781614594;
	bh=475k0Z7kecV2gTyIZ6jPD+Yz5dJzLXmHhKmgQTcHo4I=;
	h=To:Subject:From:Date:From;
	b=UUGZzTW64IzSoy52v8dsX6zU0hAqdRvT5ZYOj8qfJl+4MR22N27sDK3bW4X6k2S0Z
	 WQKga0CHbBCRuk91eLXEoRCrY0vmzpZcrSqDWq6dJ2A/6yd7qNkuICaFY+4uH+i+1F
	 ZlnXAdDUNSfRNwrbnp7PusEoJTNvsEUUv9C6mZS8QOu7CswO2V5hBd/oHDOZ+ILvJn
	 h0pwzRX/O8rm04/xqAYSxSocWVdE0+PUhc5dMwqZUpJMRSA0Kk5Cd1NMFUmch5Zx4T
	 Xk1m6PAzG5vR0X7dzj8uxIDgQu52VihzTxeKyNaT7PDP+ws2ZBZj+6aTq1lyhNchqp
	 ewVqCRJDVPWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCA1CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161459375.20783.15311887265230580103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a38b8d69c37c0bf19c5e14052aaad961342b3cdcba25733371b71dd77579fd
Date: Tue, 16 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781614593
