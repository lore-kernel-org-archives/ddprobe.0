Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 794EF39D3FD
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790436034; cv=none; b=nH70ZsxmisRzbDsmJ2/twGnnk0MnRp3jE03flWum9BKy5au6m7G53GMsE1sY2za0hxqUhHMgNWR/aTKjjZ0AqxDGMXcMLtgrYuMpKFtT7BzqPgEdekh75DllJpNZJ5ETLcDtOKj/kcd5PAz7VZKP8qlTampGgqEtrKXpA9G16lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790436034; c=relaxed/simple;
	bh=9pMEdxdwX6nNlfBlEJSufvBqKyLVd3nqxOPIhPqqO0U=;
	h=To:Subject:From:Message-Id:Date; b=jXc3DfauC+TeJIMNz+d07iXiCkgKadoJ5j75vyIZwk8ozrrTwxghJy8pAQ4yOVwsIM8AkadFYNrIeFuKVQr0E+H+FrePHiItsaQ5c80b8KMtuNcfSXLhQiBS/RX4J4hKI/g5Py+dJc1WIzptWXoncsD52PqBtcWmNGUiR99mI5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D593VPnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D593VPnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9364C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790436033;
	bh=9pMEdxdwX6nNlfBlEJSufvBqKyLVd3nqxOPIhPqqO0U=;
	h=To:Subject:From:Date:From;
	b=D593VPnl++HbtGV7pXbTNNRp4QYqik2TYUZ/ig2td/C/TJQ/CpQ3vbNxJ8Hxy0D+t
	 iuivwrPrpB8tg5VBqflw8eO2x6BVqINjtwQ3s3VR3P5VlyCscwNnJWWx9dcyKUo7Jj
	 8Y/eYkHG5I0de3doVNpt4Fdv4ppRKbvQlaFvyEfXrLWvKdqooO1K5p8RHop4900C4b
	 7LD8N3J2LfHtuS1szu60hOeuAO86XDqT4Gc58OqPID4iM2qqAoeOrDoNm1A9m/6eGz
	 khTOcRioc9bk5EbVOXDhOdJQ526k59EGyn5au4KyXkiTAjSLUVqaDCqzem//y4NvIu
	 HGm0uxmlluToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F1C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043603368.2152.11029733597558178262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44eabf26beae1adeb3709656185a09df53d4a39f9f23df33d23161c1d03352d
Date: Sat, 26 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790436033
