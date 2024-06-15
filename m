Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76491168C4
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718473103; cv=none; b=KyCM4BLtRzjOb2z1l8PlQ7lMQko+zCf9UALzNVzlC5DaSodW7DHYC4mK+hMU565RUb9GoJr5FM9R6E7XJ/OvKj234uHcmrV4salOOqtAxhnvKIbqfo10+d4vh8efJOwPAKYZ8eTqiv99xUEqKYHJXyqTwA8ZeB0u9mVNqTUmKok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718473103; c=relaxed/simple;
	bh=4c5rHYJKvQcJxD6C35vmH8pyEoKsViIV0hWtQtzo3IU=;
	h=To:Subject:From:Message-Id:Date; b=RX8jOwk0EHaUVIVQ3ooSHjzpBciH7If6UvKh2868ahX2lRh1gfA6Fw9WOaGgZx75P+YT3Wnj3PGkSUuxAmZHgsDTABiCNgKSF0ey66iHoZ2KqeNx2XAUL00xSqZHEUkuOY/5JOaSPrM4py9jWA+vPzpJzws2iUp6oad/FB58LCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T13nf82H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T13nf82H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1324C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718473102;
	bh=4c5rHYJKvQcJxD6C35vmH8pyEoKsViIV0hWtQtzo3IU=;
	h=To:Subject:From:Date:From;
	b=T13nf82Hopv8lDlnVKF2Yvr/bdPgWHlzjlUgOcIYTpCAVrLwRaOIu6A5e1FdeRY++
	 Hid7rSPMXLDMCjU+gnJkt4p61WRCsk4Oym0egjtj5Uz2P2kMXWI26HOzz1DcNm7lKq
	 0qcy5s2KlOKawogkdpUAhUDUbi8+YVuv/oMYAgpf3+0CGEGU9YKSm7wTqvvFNtrbZQ
	 nQe/Fu+ivQWQDX1XGp4o+c//nV5N1jL0oPtPtQb3pCyftgbVGkhzjt9/jVchmI3tkM
	 2fqOUIVZjw3+28fpRl2yNXIM2uN2/mqKABVqCpGbDGs3tA+ZLPnD3/tXcUwtl5fUQ2
	 arpvkyxTyPbxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF5CAC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847310280.14037.17385681426218791459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc30b00e127c72dff197cf67155ab0c335f4a3ce3bff6af8cf521bd42fdd19ac
Date: Sat, 15 Jun 2024 17:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718473102
