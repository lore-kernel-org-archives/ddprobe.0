Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253B618BC3D
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764642774; cv=none; b=mRo4TqQLXX0Em/WRIP/4XQ4F87sfQBqbAfSlwDAHBQKP9VZPNnwCQybXb34r/7jmsxyse1b811eM/pgMBAXuE/mRQS5Yx0txcjnHJCT2qCZWW3nN+oDxLoyq5dO2dWeAhVeTLT7Yees61Z7rBqLmRM3sL8Ua03fXnsD1wRi9Qw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764642774; c=relaxed/simple;
	bh=oPnwuZwFJAH5OnC4IsTemqwnguequQr7zgmZ9EjUBUU=;
	h=To:Subject:From:Message-Id:Date; b=EYPMiTfK0FbDDppjaRYRa/T4qD9uMu2PFRH12rskkAt4YZmo2HrFeAjWD3e3dTuRI2FLATkfR4a68DZqWj9A7CIjFGe8OqjNbne6RfOijhkUlJY6wb3oMJnLerUFn/U/6VgCRLic6P5N3HuCGBSrUaHBd60CkceeFAsNEgft2MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3org2LB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3org2LB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0EAC113D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764642773;
	bh=oPnwuZwFJAH5OnC4IsTemqwnguequQr7zgmZ9EjUBUU=;
	h=To:Subject:From:Date:From;
	b=N3org2LBtlFbpMBPoGCfd06/TYff2jmnDWMr/3Fo6/HjoS06wu9Ffc/WlraC5sOVq
	 zYB5E1TUZ4GQMMN3pFkWAQSCGMLouh2Xh5uM9am9Pz+KIOW35HoKHHY8wDNDhsrfTl
	 95tdnVz4VguHGWmv2Tlk8RKA2IpnUq1xEt2d1vgGFI8eS0n9Eh/cD9cMacsaQR0e4C
	 ZSaWTyW/MSP3HKbodHElyo1mXmQ9gLOjV9UE8VuKpS7X57rIrfgN9Ky/l+ihOujRrR
	 R3ERb6pQoqqgtV7KVoNmcxQL8L6t2Kx7lCnN2aOo5hbfaLc6NrWc18le2sYOpsdro4
	 eq15iTf0OB4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91956D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464277358.12125.3862895993468634784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c253d14a729e1ad5c638a492d03605331d4d6417998a1f1c9cdc3f7b22ea5f9b
Date: Tue, 02 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764642773
