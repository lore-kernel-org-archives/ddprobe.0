Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E371F8BDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744384194; cv=none; b=sOeb9Tlv9rPOFFwHe98+Ys+BcA6/nis1HgwPUSB1k9LK2KRK6VywfbrMuQsFSY2FhHIE9UNml/06/OkFBU8RUEPyr230gN745HZ8ge0SIdN7OTMsoJmKWa/8YVxOWZCa0IQn+7vrSkglCVaAZsQ6SG2k680Jv42+RWSRSQoi1oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744384194; c=relaxed/simple;
	bh=7ramdawj1jyQ0f+mn8D7SUOUD+mmwML5fLelA1HRhdo=;
	h=To:Subject:From:Message-Id:Date; b=EiQ9pu8MeYkLaFqKgyDAItE/dw7Jh8bVGhvj0N+pTGa4Gqcc04tmpBEOmcTgZ1g6mc9OsRWASjGaOWdca1Ta4T0enpNuO3OTGFo7ZEHv8xBoIazypbUKnq79TsHC+FJjbsWdn/4oiCC1p+vxNKlj2P18tl2GA8G5c52mrDz0h5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHuzm2hj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHuzm2hj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0476C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744384193;
	bh=7ramdawj1jyQ0f+mn8D7SUOUD+mmwML5fLelA1HRhdo=;
	h=To:Subject:From:Date:From;
	b=uHuzm2hjryNOOzxAknDfSftxAq/7RZgumoTQfrvWVOXcOlvI+siFnxG5R5qRuDGjL
	 oUaeeWaoICVuyptK8xNM0w+U+Atp4yHF3oDL7LxACDqJr8Zccu8pp/LCBvINHYrFZL
	 j7rHRdwq+1D7IFZvt/PuqE8lgDs7b2x5gw2q903Qj91TMobXJUrJ2J/2keucCBapa/
	 uDVbTr4viBmICoZ9KWnQGFHq/r0M2073Au8eOsR/v+zKi3shT/6s13fJQLpUIpbab1
	 mQmvJ/lKRj6N9rd5oao9hNaJkGIx1HPJcKvZUXdBVzAGjANlBt5zSIFji0VbOGT6HY
	 GSITF0qD0qGsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4797C369AE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438419366.13724.15062829819503634424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d8d5cf5674f7ee24ab83666371545fe42272296bfd1d0de56337c6d03a285c
Date: Fri, 11 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744384193
