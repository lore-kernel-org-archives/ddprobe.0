Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC32239E65
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751672994; cv=none; b=QYFR5nG7KGb1uOv6wRJuhReGugo3cQK/o5vA5n58pYDVqoI8iafy5a4gAfhNPp7pQWymVhJ8SY6PUY25lB4OAY7YDu1AuGa4Sh5ls4jvjaY8xHTQmH7yC3nInlhc11oHUx8Tdpdrwq8G7HTaMCZ0/DXb4BWZAV4EWH4wYPy0+SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751672994; c=relaxed/simple;
	bh=KY5qbdSpxqKZXVFeH30KXtcTJUlKZf6rcc9vIAJsFQI=;
	h=To:Subject:From:Message-Id:Date; b=EMZoD/tt/3tMp8TKkvpClmbR2/JUhL7CkXDtAOZv3Oe0Ivi9gAZ9NcKKgyInYzpTmh6h19avVu8pOWVZhD8Z59vtNr56Bhb+jxf9NjHPIM0ApsbpTq715DrppGa9yRHzCBanKDjz3/mwDy5mnyhvQW+3GPusAgoIwbwq+Q5lPus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnblpWdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnblpWdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFB8C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751672993;
	bh=KY5qbdSpxqKZXVFeH30KXtcTJUlKZf6rcc9vIAJsFQI=;
	h=To:Subject:From:Date:From;
	b=MnblpWdgDJlu40sAZxUEz0S/mnNCPqSmGbu1zlPaAJACx5z6HkQbxUNTiDHYXlpr/
	 0PkUBpJJDpgdv7r+ejfQ56irm5twqeMnKlCTlF9qnXnWcf+fDVhlQrABdMRnMKd9Sb
	 wIvPMm8l8zn6gquZyFeHOog6BWNu5b0xS6/lI9QSxTkH7327RAhtlXnVcbTGAfKNOQ
	 pWC5vAe7gmLeOEb2yIBmqjd4B44vNqu4jNublJt1rzpUjBSpZ+iipV2LVnbZZ1kBqG
	 H25A9Rt/XKWOKAZ13uDNWs1jooSFNjYOYoH1nuuHOBk+EQSugrMtCAePI9G+86Y8TN
	 Be1CAOClV5z8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0A0C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167299357.14928.16571045215400915929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0478e5109f5fd799a88edb6de59a093e0c480792f2ef2f3c606707ad7ace26ef
Date: Fri, 04 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751672993
