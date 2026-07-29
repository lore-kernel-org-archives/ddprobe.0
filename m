Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C0F48664A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785338434; cv=none; b=ikdtJ5/dFCOj1Lib4e07mhI+YbfifHdEvYdMTGpnq3YlW+2Q5bd/qcU8LWD6Xs+tSeuR5CUWTdle8R2xNQMwEnp3wh/lCSBkxMWUJ5GXOqp7aqV1mxJUaaa5+j9dxniqQIcpkJmkH8CBHuiqnV34Sryz9dLdfxxcWU/6FUHRTjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785338434; c=relaxed/simple;
	bh=TcgAyf+B10yKenKv3lSe0XLQF9c6zv7CG00E8S0KgMI=;
	h=To:Subject:From:Message-Id:Date; b=K6SkLK1EcmGZY6X+3h4lTSK2x1iEF5IIYLEW7nxNW0JUcPKRR04rbzqkxOsCIdXgpSUrHoKBTrUGTgjhqiwArz8VB21G9ts6t6TXTp2j11o1U2BNYfqjDDpIO0VU+XD9lOiJ1tmwcdV11VV0LNtHBaa1bmVKLoepVIf8+pRRynE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdc3rarH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdc3rarH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA114C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785338433;
	bh=TcgAyf+B10yKenKv3lSe0XLQF9c6zv7CG00E8S0KgMI=;
	h=To:Subject:From:Date:From;
	b=fdc3rarH4q4gWeAirm5u1sLhn5TcrDoHcwIS754p+d2oXRYy4XKecbZ7Raq7KokmW
	 IvvsQDAgMT95/GKG1VJJzu8b7IYcGjUD7GWnTIrr0EMhTxgIIXjkVizGpvvBsYwLqr
	 E/IQRZl9I/yq5vQT/9VNWH+qpE9RBMuGefUWQEoVdG6yxhvgraILGcBPidezGe5I4T
	 ++b0mb7q+JID7AWED1XbHJ0YJffOV/Th//NrLRdvAzIVV/ppXHxitmPD5S4m+DtBrL
	 uz/id3PRN6XEp5bQFzv0ysEQlqwq5+HAP0S6uboh7XorULQJDP751SJ3Fo811nMbiO
	 DAwC7gLN99/1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B45C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533843368.19941.6681354816092159628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fad48b497818df713d847707424b15d62db01fb465028ee4a27fc93bc3ec3da
Date: Wed, 29 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785338433
