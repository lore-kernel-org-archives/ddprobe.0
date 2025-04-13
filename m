Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E80517A58F
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744579794; cv=none; b=X2TU8QAaq/CoWbF+HO7b4WQDnFw7i7IP07svX/gFD70mZp1jdqZ+z+7acc1aZHky2TuLTmXIEbacvs07ImVziV5/JSUeauWb7xhg7SWpkmt9eXLr3ps+y9wEfPKg8gKWmoF63MLUcIaBxwWTd+GHZnHP7BJIUpYbSiDPw0Cmdio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744579794; c=relaxed/simple;
	bh=DHL8hZOscNxcAVLnlGL3CsJEoN+tzF8D2lo9gml5P1w=;
	h=To:Subject:From:Message-Id:Date; b=UmFRO6bmuNbo5FKaaQtE2QRfMeKdU6jLstFsa+sNrhhpY++H1+WiVRjh5Rc/dQ/KYxEfILE6F2S2JMJjruYvC/HsljVyTv/Dczx6ZXooRIW/LrqZ54cr21cNp1khZDWiAnOYDPB6M3M9LFRkt1dDgC4Aub8GOgQp1ilVCZUW238=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuRtX5L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuRtX5L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A1CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744579793;
	bh=DHL8hZOscNxcAVLnlGL3CsJEoN+tzF8D2lo9gml5P1w=;
	h=To:Subject:From:Date:From;
	b=FuRtX5L/XyC8LF6AUB5+LMQKz3BQvlGwgcJ4MUekLQiAk7FOWBlaOydKOK0rWbEnJ
	 4upy9c6bqsz/e12e7w7y2usqF9COPljT1gun8gJ0VZ5XKRNp25OmpirHdb+17nPswE
	 twFK9L4D//7z5G5txQsh2zP6pLjxUmQ7q5i3+jdbAwJGP7A4IEpVJmSi4m7Q/otJME
	 s2y8UDxxdhLZ3sRB9Bmhd8/3LbPIKLDjIDuwd6OcQKk3nmazrTz443b2EO+77ztcYK
	 QbcI/BpUCFqF15Z8iVxN77IbWA93dkEtHT4sKsRUuBB1umZyphudM3OkXYCDXzpadQ
	 6b6YRTVuKfsdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEC4C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457979359.28409.689327718320485146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52279a6af5970548b77709692ffe3737ecd25456f12df405e521bb24a1d2cf0
Date: Sun, 13 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744579793
