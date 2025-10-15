Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4DC22A4DA
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760503794; cv=none; b=o91SZvbYUC7OiqFxRYyIdQFj+EvTFeziFpUbWGohgibzCLJ6Si8ILMaZOjpiw0laon4CJuWTmhBfMjxAr5w19bMS67u5t3E7xSn6MA9P/tey+sB8tS0vsHJewKac3tTY+IhNzsDOIckqKF+jD5GPCennFn1Pk4vcGv4qipKCmaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760503794; c=relaxed/simple;
	bh=J5JeFTyasJd+5UrY4XXCTqo4QjqErnUeyv6W4ghB8jY=;
	h=To:Subject:From:Message-Id:Date; b=N8wycw3dKxCLQFfAoKababdSKPypLJ5IGUuFeU91TXew/3oa/DhWO6hEP1AyJu9r9o1BfBJoVyGd2aV27+bLw/xf0hUMXFbXEYf+qKRfsvJ1BT7YT5cOsKieIytQitz4Jt+BaS+Fw8jiyHSfBHLrQnvzwfQlfL9Vk/Pa9u7Kmpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kl6OvHfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kl6OvHfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A277AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760503793;
	bh=J5JeFTyasJd+5UrY4XXCTqo4QjqErnUeyv6W4ghB8jY=;
	h=To:Subject:From:Date:From;
	b=Kl6OvHfWskJlourzFagnoXonY29iW5hZWRC7toalbSo0l6ixxw70x3l5pAa2dcQWt
	 +EYEkK9ENDYxqtp+XX+PgsYj8RDZK+VmR3drNjDqQaUFHr+jWazjvcBHFzKWelrLn6
	 yydWy8R79hi7YrBFY9cF0ulwYnyCbpvx0aq3qNkChdiYGzlQFmS9ZwhvjwKOZ3vkB3
	 /gVZ+y6UmV5hfSl5PM5pQQ9S1y7Y0yh4MNItXnnZ1tocdGVUh9sHuPKLmQXbC7cCrk
	 swUXK6Fhtg7hi4nLeVjhnM7MS2kVB8K8ETZWp8z+r9poUoUu+xTshFLGHwUH8Bn5qA
	 b4CZE6ilCL7fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F982CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050379358.4234.1233433210079637059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a668d71f14bf8014137abc8a55f1ada6daf0e9f33a9b91ad2ec55c766f7d7a1a
Date: Wed, 15 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760503793
