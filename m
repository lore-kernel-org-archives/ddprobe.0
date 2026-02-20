Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B2830F52A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771628694; cv=none; b=opmeR+UztivCHjJnOZtFm4gsbWpWSTAMQvwpgn7FTbCKTgB4jxejI/pYB0Pt8oLkk7LUNi05yTTKpzRffEJs8ZWTl89J22qmvZDK2VrX0TUZ6DnYbl2artiU4BM8G/1oXlT1LrJMrjT84QCEQ8RXAFwqcehrkHqMnj781KdcQK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771628694; c=relaxed/simple;
	bh=6QpbNDDbznqzzQ4B3CePqdsKAIQ+ioNpcuXmgIrKyOo=;
	h=To:Subject:From:Message-Id:Date; b=mTYirlVhmr3dRCJzhwSEiMuYPV88UNkhWZKPdw2AVflLwzvJEJiqbcVVhY+OWToux9VkNq8pH+OI2tI4mVXpOHTnbIGFGqMmezaNWtrgcelIn036DfYbtzPefkr0rY0uVVc7078Sa/4C921HstK6+PbjJRe4ehmhuT40P+CQe2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPrzxwlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPrzxwlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E06C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771628693;
	bh=6QpbNDDbznqzzQ4B3CePqdsKAIQ+ioNpcuXmgIrKyOo=;
	h=To:Subject:From:Date:From;
	b=aPrzxwlvaP7gNq/nZ/Pc2CsxneZ2eFRgSHSpYUktnUjGJ6BJm1QJp7DDXpCrb2jM4
	 3vhYAcS3egeqSICU5HBVpkuELFbbWRu95Z8TdIkM721i460ZvolvX3+aFmwyGKcB/I
	 Mue+B7ui5gxLdtPrByvKFFxsuZgh370dX4QH3rZNo9V08yUNH6H8oyx+u28zUF/yVO
	 otp2in6gHIk2/TqgeaD1BplrJgkwBYwUEhEndUcF/MRN9UPNXsqbcjC7hKtEEvFbi0
	 RMyKTE8y3DS91dw6tnYDBCXuw+K2tsHSSWYmGR1iitCnQXGjSBirqRDakG6nZfVH4f
	 hPGuJQOkS4+ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B806C5CFF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162869360.14711.13358987952936327927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e39e431d1432460310d950c79cda66ae5bef9d273d3afccb5eb08cf2357bb3a
Date: Fri, 20 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771628693
