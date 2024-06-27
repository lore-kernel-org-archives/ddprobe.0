Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D67198A16
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719500663; cv=none; b=Z6csYB/3raMhfwmvAdrrxQulgUy0cQZUWiJmwwiODHC2Pp2DDU00Q2SYn0+nHcMop73nF6vFM+kiPEZy+EG/hHFWdyDIKt2b4TFfZHqljk2KZEsn1Z++DF+DoPWXRAkydGJNlAgySKOlT01hDEHHxThMFW++PY1DYrixDUzZAe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719500663; c=relaxed/simple;
	bh=KmKLd63kTvTVEonIxWROawUlfPe6j/DH9UJ721xu/t4=;
	h=To:Subject:From:Message-Id:Date; b=L44L7+bk9JMT5C2BS7uezdbO2X2QlU6KgmeZepBksaLrwerZHoOWqH+/VlKXYquDN4zEk8xFLQNfmh23oZdxJmdNOyaLBRuPbxrQbRrZXEnukzAqOI4cdLj2Yb0cM+rYweFsjG2UMtUboAr2N8+yQf/gQvuCgyPWaqL/E+3vrRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fG+/r6Z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG+/r6Z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 079C7C4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719500663;
	bh=KmKLd63kTvTVEonIxWROawUlfPe6j/DH9UJ721xu/t4=;
	h=To:Subject:From:Date:From;
	b=fG+/r6Z6+SStrhothcc0AzMWK0v1198plPGkk+1bIlfD+HSrmMkI6quehUUe6zwTU
	 ++tVeEMxFxSizv75t4jD+F8xKCUDLr992LGp03qJJdlwHq48F0DOw//gNAG0q4iF+6
	 9MWjpfbP9/+fCtGGVhPZSh4sATHan274gTfx4UpCpbqStcYk3eDY7abyPWHBIPGaZ2
	 AYyABnlisgoK/hl/v1ru2BtYcctoozKP8yWj2X/ZfRafuu7N2zf/qypdacO6uQz1qI
	 Aa9PW1gMjkrdJV99X5OeUgqwnW6LS1+EaR4jGkG/ybHuVSKHVRHusE5BYMDHSzq88z
	 bUq7GJiduwS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE4DC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950066282.17059.15172218392437517917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e15e302d651ce571787debf821f3047d55810f412fe2fe30895e370b22b0c4
Date: Thu, 27 Jun 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719500662
