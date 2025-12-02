Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD881494C2
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764639774; cv=none; b=GzoLWpn/AYNk70WrMvKqp13kLfV8JWAZX5nvetDW0UcBW6yjokJcozTQIYh5mvtf9qMj/1YO1NS8zkI7y57sE+qG9OFANMbj4NYT4QQVMmkdJ0mJya/4kWBO0cKaZ5ZX8BAaH1n7VELx2MJC9mPufs1bymNo0MR3ZGH44aJFgjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764639774; c=relaxed/simple;
	bh=kdXK3EWUvg6EXXQEmxo+wEYpf2ljq/0PO9t8NlIEuJQ=;
	h=To:Subject:From:Message-Id:Date; b=iz2G3FH4S+WIcXUrkH/UMFDOeM4aG5nvWeD0Es4ucVnbMqjgYPa6u+Knr1wVWfbiXlltqBbIYO/5wtZTCf6mfJqN6B/rq566bDUYOTz7Rugjx6e9rFbSxiU83X3faruxQv/AKKKlDmRs4BqyzJPCAxkjuzj08EWydsLhtINMTtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGBiFmOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGBiFmOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE708C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764639773;
	bh=kdXK3EWUvg6EXXQEmxo+wEYpf2ljq/0PO9t8NlIEuJQ=;
	h=To:Subject:From:Date:From;
	b=bGBiFmOMjFi4xH5sBBFJAY/QTl5et35mMO4xihjB97WNjht0a8aWZWclZoxIqaT/y
	 FpZCC4hrjmBJh+5+ACVWuvq5QXDWS87eqnTo9fqUGGG+tkjEodL0VB4lOW28JMikRG
	 +T+1EOsi1dQdK+OMzuYQtyFIJ+RRQ+kJu7hacmS8ezFjJUCxa+S09rk8Z+NZExmNwR
	 LaNU3FToXTdXse2zWvdRC4XkOxI9ovGbbjrJS+i4MQuZ7bbFfuA1h/mQ5ZLxrVU/oY
	 kYRyGOzsqSFgQHTbadU5+rDRubdnxcUpuvofgLPXrOWj0D8baiIzBZDxZtzdr4M+ZA
	 JKLWETHOUhTYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C43D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463977359.26819.6749146726206650190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee029b10e832b18297bb20d6a840a12402f99d7711a6754d8708d0abf87c664b
Date: Tue, 02 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764639773
