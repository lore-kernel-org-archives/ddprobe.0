Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CCC15351A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720476983; cv=none; b=GtjTZDhmZE3T6GFzkEpcDSMrG5oQRbvGgh8wj350KvfqOItA7/oTN0Jf50fdQHsNHCr64Uq4IO0qyo+J0Ioit+YqWNCdaUA3uAC1Zomfs+IEuFeFwf44VfVOnmjhNZeRk0qWEVU9zCn5c5dNUztqLQHU3BUdGJnuUcvVmy498jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720476983; c=relaxed/simple;
	bh=PSGzTGIUptF+nGw4QTeINQqyNM8DHR9qk68tk1hIOJ0=;
	h=To:Subject:From:Message-Id:Date; b=iVo0VtG4rBHPA3JD1FZk6Gp9DuykLeRenuXnegof+kf/vLiat9/EaBDdMaKFJLGqK1Wu5gOJrRMMDjie8oUDbmltG+n8X2rGM2cIXkoDwBm13TK3qx9bUdF/lUEXDrDyziTZp+VnkrPlUN/0RpVEd1+1SzmwcGtqHg88QkcH9i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FduwtteB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FduwtteB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1164C4AF0C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720476982;
	bh=PSGzTGIUptF+nGw4QTeINQqyNM8DHR9qk68tk1hIOJ0=;
	h=To:Subject:From:Date:From;
	b=FduwtteBoPw3oCoI6WKPXa1178Yvo8Nyr6x71vvOO9qV1GQzuax0AtRmSsbXQuWHd
	 +675lWttowo/Fp6rUDcFTiQulG0Hz8eIsy4c08E1tkEYiM/wJN7WkuY87LLy/fMGGi
	 LJ4qP0gSITnp9CXpo0VMsqmyDJRz2qYHXVBCxHt6ded4pay9QX+wkrVRnagHctRUYS
	 rtrqMfuPWJbMte9Vqy3JMBVnw6gCvy+rCI59bLyC+otiAs1KjfiMowyVkZ9I3nqoU7
	 fP3eYlkcFpFApqmCM/KU1obqqK91CNE3o6PxNBLCjC4lcu99Aai+tA59/kVWooWffm
	 uuSx9G6N2lqqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF340C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 22:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047698277.25290.14501670335877807940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c9da9c59e3138765325c15dc938d34e977764a4d68aa02dffd16eeccf73da4
Date: Mon, 08 Jul 2024 22:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720476982
