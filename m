Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EB0253B58
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762582794; cv=none; b=t0gFeyl+FeXpz1EaY+WacK/Sz8aAjZXwhIfA3k0/RILRex9OZeaGp+dA1rpneLqA25cXIylQLDMxqzrDOX70xfRYYEg7anmowBIm8GVryRhvOimdQ9eX9ZDlZwZfHR7WP6bdS6qgk51g+q4otUdRWxM8dSaf4JKBIC97dH0uwWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762582794; c=relaxed/simple;
	bh=fXc51ruXnU39K3sAIPmBTkhDqFaCwFmVrIIehwOTwgs=;
	h=To:Subject:From:Message-Id:Date; b=qEqFj/EKtoz1/O6beYIM3KCzh5uPUS4zaKHL101C4xU6yK/Uwl2y37r/eQZx+owq71Dwk4TVq9gqp3t/CJ72JppHJPm5XblDBVQ5pxJyhbLc4ZXTxxHLsB5PAqXLmCBz4oq1hda32F5us9n+rXZxM4evcgMuLeF7JsX9Zi8A1Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewX7kBWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewX7kBWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC00C116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762582793;
	bh=fXc51ruXnU39K3sAIPmBTkhDqFaCwFmVrIIehwOTwgs=;
	h=To:Subject:From:Date:From;
	b=ewX7kBWR+ayrJHr1SVVf7wcBXVHmwkCCGqDfOzKP6QMiZ2r9xI8Ulm6wMme9XUJjc
	 NxhdOZK0EikZ2wQuldu1wtVuBtRFuZkeaWJ0KxWL8H/iGoWfkwBihBjefubPk3nZLb
	 Yuvy5ij8otCXWYEernEf35BcmL5icuGu+D62oAeWPBhfhSodRtcTSt23Uwp77RueVC
	 0lmwnfBMCHoGsDM9jNTM4zS19h4xT+s+QSufj0rE/dIVMMuQLyjIMHB8Hf03zmkRC4
	 0y4shbXnePyLJ0Mokvg9RUX6TX9Iy7FyDGgFs4DLirVYEOYr2xG4HWMRpQvPBVcvHT
	 6VsbF6LJK5ZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E80BCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258279361.14092.9974229270036721908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c830d832d23577f2a6fde38a3d639d9377b60bf1dbeb6aab047e17aa5d9f2b71
Date: Sat, 08 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762582793
