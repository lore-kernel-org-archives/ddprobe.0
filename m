Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EF92248B4
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741600734; cv=none; b=TgU/h06wrMQuh/IVXIvk0Mmv8sHSOUBVHexmjyBSwPbYo6N3bHVra4UESZFpqtogEd5EJndWE7VhSqlUVh743VQF5mySkN2lxpz3/9dZV9Tudfk/SRIpVyZS/jUJbtu2U+9lGWnncbawHUh2exWGIf780tN4SE51eQj2xgXh2+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741600734; c=relaxed/simple;
	bh=11k6l8sgVOTPvLSfa/ZVwXiA+yeZNmOYnkbxf5hEQ8M=;
	h=To:Subject:From:Message-Id:Date; b=EGRtI3a0Q38fiCv2kZsPqA4Rlnd/LCB53o7YQ30Q8qlukm30vFomhx7KpYtMfDGTn+/gOs5/6RZg8D74guwO3V44Qa68sIj41t2jAPGkOOWzYYQTyymbFXBIZmO06+Q2zt9mVxNyojTeEr3skjUL6YAAoqP1/bhc/wkpG6Tp4fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwtvkbKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwtvkbKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBCDC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741600733;
	bh=11k6l8sgVOTPvLSfa/ZVwXiA+yeZNmOYnkbxf5hEQ8M=;
	h=To:Subject:From:Date:From;
	b=hwtvkbKFw/nIkgby4W9LnuxIz6ccysUFwJJB/g60yLhjF8qYkoIxFYSeP+/wqTpgO
	 0N96bcUp5EaXjBmotfjs8IGT9TukIv3t0E7KdXNYoAO71H9Wde4GQtIJg27n6jtPVN
	 Fk+eZQ7R0pHWojSR0CxW5rtXqoTTBVYtVxQi39wiAq7Xqn5aP4Q2ijiE1v/z38Mmjr
	 ADxxwWrcyCbE8CaeHwFz2Jn0Tjh32hpDRbKja3RsCZorjjY8mjd8OQ26NdwTiDfnY2
	 5a9Cg/rl3SHCVIOOuQWGSzep91t0Y32F3tjUtD2W9Zg6zvG9pTcStR0xWKlRIAfD2P
	 1Zx4AsyUwH0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ADC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160073358.14730.6059220244871684522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39db7085ed5a6a719e9922b666c679ef910b9bce011e6c65f161862c802ee5d3
Date: Mon, 10 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741600733
