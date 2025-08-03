Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0151A8F60
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754201394; cv=none; b=WB6nLM01Y8W/JwZj030QjD90N5Jn/+apz5L79g5HJy77uRmIIzpttwCgEjPu5wpw/pJlOkPLaF6AWsl25nKk4pmOzQTaoPS2M9I9rfD/mTrdngmIWXESEpncBCzJ5kopiwoUGnHmqA/v+1wR3R1iX5Onwu8F1XeuHwtdUh+iHRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754201394; c=relaxed/simple;
	bh=g595PzntVsGHo9qUgMIb3XAjKhPyVD2Ja4OJRtuZwB0=;
	h=To:Subject:From:Message-Id:Date; b=UAjeHca6ebRa5TE1Sx1KbdFzPej2Lihb9bsa5833AhKBCs7gFF3KiXXr01v7zxj26lCYFCzpkSn/8DvYH6JsEkVYrd8dxHStXkDDqRPrnsbIBNLx8pwS8IT2lUe8fGRXOeSQrqQn494SeuYxxcchGBrgFPHeuje3Au/floPUER8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cy9WZ8N9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cy9WZ8N9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8D2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754201393;
	bh=g595PzntVsGHo9qUgMIb3XAjKhPyVD2Ja4OJRtuZwB0=;
	h=To:Subject:From:Date:From;
	b=cy9WZ8N9OAQrKrUzOTdXJkW+op7fuMRkm0ZHDmekk09G+rersggkWcoSF7PEc+BVp
	 h34aaH9zqr6sjmoquaiBRKrA7IMjvEHpqucn1x9VTZG+zTdlUOXiyHCCXWc1KMB2yA
	 i+RA6hnwjQhAArEEZmwC+rVu6eNmDB9AvZhT5BID3h0uJKbyp8WVSIoVDSwpW09YgR
	 tOJsY43IpxCkDXV5SPKlp5yr8Zp/YmYUXv5veXeFNZZqsXAJIvUyrwWs01v6Zz387g
	 4ZxrXhr1yyW2p+iYpXc1I77gpqEedySjEhmPp4BvJjEqK/tBa0it1ZYkb1m+n6P09F
	 E/zynTBlJrhAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB0C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420139357.12838.7232025616679968707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db79509248e31e66cbbc629422a2ec570a17dc8f589a1e521882aa3da4765c8
Date: Sun, 03 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754201393
