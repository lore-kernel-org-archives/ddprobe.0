Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019CCA921
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756609195; cv=none; b=BecGA/JCrpS0Iw6btF6t/DDqgjieBm9cZ98McHXO3miBnR/tOEg3emFk1PNbgF5mZ4SKEbF9qg7LuztuTKm03MJrURMsrvhkdSH8miRVtEr8zAJky6oiktJCrqStZ1XAkdp11ekGzJmUoSOLpZ7ki2urwzF55ox57AjOI9d6pjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756609195; c=relaxed/simple;
	bh=t04G7NBff16tj80UrmhnccBl7YX2WhIePluno4lYg1o=;
	h=To:Subject:From:Message-Id:Date; b=Z2xiHAanhBpOFmCcYvzVZJNxI60YjeFRwiIGzWAtpvgTXhuS3NY3ENjbVILnHVYUMOgixi2yJxf7WUSKjfNi9A4PoBe/wNNWRuVOJuQRW8zMoTE1WhvxzVCzrKSgYFtUBtd8q6EPNLROq00HzZR2sgVlESpzQ6sPwAajXBNy0+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8AlzfcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8AlzfcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D26DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756609193;
	bh=t04G7NBff16tj80UrmhnccBl7YX2WhIePluno4lYg1o=;
	h=To:Subject:From:Date:From;
	b=M8AlzfcIerXn6WXvxLDNnY0Zf8P4oHq+IZGU1Tt72Q/kiw09enBb6wbYAo6iCO+Dv
	 MFWepceiisXRqe7syVcLd0G1J7JZT5VhhMdrGPmIpbUuwtnTtLk/MXvWJ7s7EWntt3
	 lv/Osus5HrE8A3eqTZIYIrhqK+aI4J6FHG2Cjvb5656/tniXbFHqqENsr527OjGvwk
	 Rt2lluP7UmLm/zbsEyAVZ/Q7sPiWBBz1e/V4W/2PkH28B7JY+HrTYOwU8pyd+5jwLQ
	 1vFDjKvmdQsDrRfJ6mf3ngFlVdYxaM/VGMYb8UW9IWTuJLUY0iaSEsL+SsJKY3yONO
	 SqGiM6Kn7pplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90726CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660919357.24416.12975838703463308296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70b2f3b9e09020737095fdc0a46b729d543528e4dd9c4a2db648d96fac29472
Date: Sun, 31 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756609193
