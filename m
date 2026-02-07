Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192D5255F2C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770435834; cv=none; b=rPkVWJQiXIyoQRO8+/Tjhv9xxlsGGG2yQyicOUm7kLOCdNIJdhJpZYbuE6mQJP6iHH1ocack489URMs03PEu1zooAy0e9mRZs1we26R6mQdnWJfRKa8BmRReAXxzcDmi+ulp9I5gTB/nFMffkjCPOWKgUS5wC3WjlLDDxii3H8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770435834; c=relaxed/simple;
	bh=JaNN3KBegU4y0qJozwvYnOgHRx7d+sW8890kshBHWzc=;
	h=To:Subject:From:Message-Id:Date; b=nJYcQvDzeTOWqT1KN0PSBHDzJ+yA9QCqKsqBRPN/WAvA+LVIkhehWwnp+Zbmor0hhgzuSsSIxKz45bALtfio9DdXCoBKvBb6bfzJCF2Fz/XcvENTorxtVoNIirdCl3SLjFmsShc7wdt7ESFE4Cl/KJlu5cKo4ZOC2FZb68KUYmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwG65RGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwG65RGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF025C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770435833;
	bh=JaNN3KBegU4y0qJozwvYnOgHRx7d+sW8890kshBHWzc=;
	h=To:Subject:From:Date:From;
	b=BwG65RGsGnMRM/IJabmCBEp9Q6chIht3A6qyRk7TD6PLXm+t+ESiFmFWXNVEonCEj
	 JLg8A8U0LFR1NG3nErZaYUmXXTqm9NE/9CN4LG7Oh4QuLW0cgV9YakUraHQJsOypDl
	 J8/d/kTOaOFk5YPxVT+Bu1loBLNcIRrWtG6aclLRdJA7F00m4Gs7tCrM02yOijlvq1
	 TqQb1+voUcjbMOGNShK+PliSkQlRr9U5OeqkCp5uWMU5dAiWR98PofEtFF5Kyddtw0
	 ruhn+gGPaHXVRbzAEm/L49XJaDOJznx8C497IeK1g1PdlKXXEP8J+lcb0YgcGM9iyW
	 jlpV0zdK9+j/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C232EE6B70
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043583358.5859.6310633878000634036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f73ef9e5c1a4a062c1412400bbda64056a5a5b8d76092c9e1508f704a32cb12
Date: Sat, 07 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770435833
