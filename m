Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1618915ADA6
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732314354; cv=none; b=RF4AFfZ00aoKZKMkLENlIpJqEnK5Ne6ruVHf0C7ZBH1Rj/nyLDsItMgjuJT6Y2e8yv3WViNvkB9sZogmJeRCBYJKaAgBjGKAEs2rH5WxXI6mD6F+t1JlQbVkmMVOBhRMsiwaoHiQ6bT8kCKhPNOog9x04HIxa0AedtlwwLEUhCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732314354; c=relaxed/simple;
	bh=rpu0XgB3V8bCpz9cLCsOW8RyRkDWjY4a94Wb3LaIi6M=;
	h=To:Subject:From:Message-Id:Date; b=F1THFnjtWg+QroCet1N3m6/SkQ5pPS2GX2IVQXxobOCO/UI/PXQp55fr2dBPeKSuUgDVuUje3TbDmjji/IFFtc0y4V3ujonVKZM1oSrCggcgVKSU1jM8C9cP0MhHgBRxuDFNeIgeto9eBb0VdKTM1owXFoM8iVljPCOY2mvljr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI08UDxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI08UDxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FE0C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732314353;
	bh=rpu0XgB3V8bCpz9cLCsOW8RyRkDWjY4a94Wb3LaIi6M=;
	h=To:Subject:From:Date:From;
	b=cI08UDxXTC9kOZivetMfgfbkNs8BGzezcptUbMDJMor9sH/TrnN+mtJ6y0qYWpRZd
	 WX2aqpXIFyq4Gya+KzFMnK2WiAdLKN7D1ZarT446x6voaKVoHqwcb5MbGOMyYABTQc
	 oBRtvBFes8Kucice7Q7jOwnrvvgKiqgKlRmZPExe/dvDUhdjt8SpHKcQ/+HFcxDSV+
	 3y0nk3Btye2K2YgGWzVoQxv4Dj3Hs5Iwculz9B4bvR8LSEYC5sZlbVRw/bDoL1nhKj
	 9XLclMmKFM2ueEkxoHoWOblR6ErIa54J+SMThARHFqotEhitcuH7dffsbv9kcP81Bi
	 buA7Uhi3LXGkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4FE6ADCB
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231435360.16497.7101440315986026391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbe86a2c42699214a445383adb777579333e644f39def09d4d9370ee840d01b
Date: Fri, 22 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732314353
