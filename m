Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D564756C4
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791451834; cv=none; b=dUDhaRLzGL9YsOSheNAzo6VyZwvTUjp3ytDwcS6YnrBERaR/0iHQNfCKff2CtsDXgQeolCdH4dZ5EuQzuNANf9BYBAeV/1ljv7Rv8fLTF19yQBY3/2VUUFs4B857AJcs6ovZPHoiIO2l2sXVlsbmFDg4IB7IIZW6Zz0Z4ujWNxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791451834; c=relaxed/simple;
	bh=WLykX8PUXjFGb+EVlybPTX40Vp5/kUCqrLX8sgghf/U=;
	h=To:Subject:From:Message-Id:Date; b=swhhU5FPHdWlh9yQUnOwv/ezlGTsVTFfSq8R9TqU1subsQxpEljK62q7eD5fZGJnqE648CZWOizHZlRbvBDC5J3+iO9upRynOHfni6tg3rbFv4+fQdY6IRR4Bh96ks5mY33NE99ujgKo+id/E8mmem++uMgHgk8EoQLdZJEIRRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT9emd+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT9emd+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB185C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791451833;
	bh=WLykX8PUXjFGb+EVlybPTX40Vp5/kUCqrLX8sgghf/U=;
	h=To:Subject:From:Date:From;
	b=iT9emd+xIm8CUIb+mfTADJorIrGUjT7s6AdJiQOt8XQRb0BGtks5iR7waSYW4Lkz2
	 NNctDqKV4sZ/hfim7f+Zs8eLSArI+H9cLjPHd+42mXr32bOFTjpnA4X5WB57rGCkkx
	 mwOg7rkSeftnPGI5CzDNhWGt48vqaXkD5GfggKym33FB2xD5AvZL77p0UKZ4fFqkqs
	 tfWujoHqxg4EI3THkcDjubmZFZFnrbtWETPKfOrOSBboZPYfjuRLb9v4rfYKuoOYZH
	 5b3DEhAd9FT+KXNeSFZKnxckmZkn/SIkFlc82lvpdIRZfLrNUYz+2Y81EKTMRGtMEm
	 Y6/gl2wt8f3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B6CA600E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145183368.21242.10369228080747799692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7178eb114a109c382ae7b304e4079f313d99d3c4194e1b7c57c000c99a0af5
Date: Thu, 08 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791451833
