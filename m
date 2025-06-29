Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACDA2A8C1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751201394; cv=none; b=O3LlAIy/M7I/V/R7s6e38x4Eqk2Oeg55aw23sgf3izYdVXFLLNWhCc2lbSlkD6t+6kxhEJW3lV6wCckSzVXUIhRCMIBeog8n6UNTj5ZJQFlq458nZEbNym4SLjUFv5yF9xrKucMAgZg1XhCzF4y/z1Mu87QHUIyBUx+DQuLihIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751201394; c=relaxed/simple;
	bh=9XxDGBhKUhWufG8TblZvif35W14WiMd5y+t3IQbVDOg=;
	h=To:Subject:From:Message-Id:Date; b=Ghc8hon+q62ODrMKhFF6PKI1CBwpv9OkM12Gy9IhnlIQwOTfHbE8KZEAy7/9doqajkoVgZFxTPpJ9iUO9iuzg2jNE833I6RQL5eBej/eAhxNCcod/xzK9iLmqSVr0V6j4o2A3jve9Etg8OR6EMGjf4ODf+z4AN/FPHPFjBXr0Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBYRWKFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBYRWKFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751201393;
	bh=9XxDGBhKUhWufG8TblZvif35W14WiMd5y+t3IQbVDOg=;
	h=To:Subject:From:Date:From;
	b=SBYRWKFYf78D3UcSA+O27LWkegasglAcenj51HohfZoqisEsKThb6O2Nt/s8GkGxS
	 bJEudiZwLgP36hbJtnFloRN6d4jv1cngRfrV5snFRbpoQo8va+fQH4uig3RrqeT90T
	 jluGlQZqxSWR1Kh9GwKAROIt4ONhr15uETAZxcql1c/X9Fy9HUmombgJXuSTLgHQNH
	 ppvqOhk37cIskM2FJUxobOGQ3SYk02IIieYYrncgauDRKn4uAm51mqRhz4npVRqD4v
	 lTVZP6S2yzKb4GtjjHqp42HGwK1dihr1UsgNFM2f/eZFb5EmK6p/y+bqzNHEsaM+Bh
	 64DHjwyqG4cxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14BC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120139357.16930.2732764969420962629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c8e573d8612c21fe3e8e5b939ea0ef10780dd1559a2c2e963245579318b022
Date: Sun, 29 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751201393
