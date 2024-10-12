Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30957D2FB
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728762354; cv=none; b=MyYc9vsihV8BSzvKPxB52pOOVc4993dxjWgvDBmijYOgwm0XhT2xbmHfzCQ+8SbRgoqJBIIOZHX2autbaa8GhYBQcHjGFpp3eOFOpB0nmvOOcIftiNRbJgp1nFUmKoFamQ5TGGz2kCAp3nPH2CCx2Aq+o2WverOmwAKaOo3XQsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728762354; c=relaxed/simple;
	bh=VeF1NITJPjl+3dQ5AQSk55icSGCipXKFRLVX4CW4xPc=;
	h=To:Subject:From:Message-Id:Date; b=iFmZwunezmRmmQiTdrhwhSDW6/gwWgG4p0VvNU+IGOKsvYvy9YbYa/PheTsqHeAEPI0ICF2/mpGJjRM47r335PdcsG6gsdqiWl/caaRbRkteWUZa0Nqnd1PGZOyKCZE1fE6Q7NGZK8iwUPwOWS2XHBQqY+m7oXLpVA/OfS8ijj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzwOhMFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzwOhMFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53C0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728762353;
	bh=VeF1NITJPjl+3dQ5AQSk55icSGCipXKFRLVX4CW4xPc=;
	h=To:Subject:From:Date:From;
	b=jzwOhMFU77U9k8HfS1G4mTIc/5KLfBX+/rTezqA04mw/Clfn+TlcG51AMgAkZS1Om
	 4c9YGyHmYWOnLsXv68J5grwbfz9jgPsVf9bfg5oTfzQmblMb+SnDD4epIFCDWD7AQe
	 1o5m5da/2IoPmqpwcwnU82pqiYH4Uk5HHqmqCDU3OQWnr26mCecDj0mhqNt5q7Guhr
	 Y1yxJcOkPAV/UoeX4Xk/ZVcDmsZM+QwkovCtj/Thy48kn6wDY+9h2a+wU2Sobz4fAc
	 z49q/0JcgZupkqiQOt2m4FGUgBJ3mRRZn4bKvqbJsCiKIMnlVEFmnLSB4I4MLPcDDe
	 7g6P/C46Y04pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D53ACF2578
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876235363.20717.15214829625720535868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c6d401a7bbb03f408a4761ce21ebebc089019daed70b44559d60dcd32b3665
Date: Sat, 12 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728762353
