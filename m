Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1731C3CC7CE
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779782554; cv=none; b=QiodKvIQjCkJknOfQduQvY7W2DC4dVwnUKLFGUAHaSKNW7TCbqCHmq5Ua6K6IgyWzMeWAqA07suLJFK8Ja22kFVcSeH6eev2mHDyywnpPw8hF8G+m3Rz5+tc/u9Hlxxl2Ad/5bk2YSG52Sv0EI4LLITGPh6v/+aqLiUxwlPXCvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779782554; c=relaxed/simple;
	bh=JIJAq6TJfjOzJJrblgV7JZP3OuRGtt4FjNPTcarMCvM=;
	h=To:Subject:From:Message-Id:Date; b=NfgbpWf88GcAwStz50DKSqq10sF+PvbeQQGCYPhUGNTSDSe8ltjaG2Tbsr7LGeIN3BspKDnHPpxMIBIJTeDZ4Lhsgq96+fU3AXvNLmuwF2MWCHGr6WOuG9PUC/msZTagNygZXj2L/z9rC5RydsgmxgG8kugLKUNQofigtglF6Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRBIG8eW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRBIG8eW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B227DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779782553;
	bh=JIJAq6TJfjOzJJrblgV7JZP3OuRGtt4FjNPTcarMCvM=;
	h=To:Subject:From:Date:From;
	b=uRBIG8eWYpA/pVvqUwimnPzsPg6Hirfy3nXT8V0F3P0IhVdcJxacZ7IdkOCOUgY/s
	 TAeSeuxb5qUglDw72JhaUTRGO04Y2MLOkk75TN+Fq+NoJ4P1fGRfbQCityHv2Twkll
	 IxvjyC5w2KL9K7PaMYI1V9maYK0NCK+pNn9tklqxezjJWAB6TmudGo7capWCYjaMJX
	 b+vTNzdc6nnNNQ/s1BBCbawzXmEfC1NIFnCgFxVJ820OgadM2JbztaO8SqMR4HHnov
	 9ypuwku4qvRwmqYJv1KqNaY7U4SSXHXg2LPSxHW9fPyM0vBCjYZ9iRfI7ZjXn6vUJU
	 zdTo555zbzVrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B58CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978255368.21224.11931086678951408207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583a766b87bc58b910fefe667f8bc90adea80bb76eb4e5487092258425f35207
Date: Tue, 26 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779782553
