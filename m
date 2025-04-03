Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F51B24C081
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743709194; cv=none; b=k0fj29Ehp7ON7VPKN4xcVK6vLiff+u1m4/OL0tAAzkVX2YMiOeI3u1N9myNrCsFnXa7z8X+nGXGYt2cJACq1HEf4kGXqCPoQbjMSdxFRSpr2clXJrw+h46qUkXC4y3IOZ/y5l0LotIECuFcKA9aeVvEdip/eQV8QtkOYST4UpEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743709194; c=relaxed/simple;
	bh=cHRz0iwJux+4k4QgbWPypCVojJWNkCkF8GVIDnqAwKg=;
	h=To:Subject:From:Message-Id:Date; b=CcgFTetQ6GmhcdaAFh/eofGEcLJN/0TZF40dsUV36oMkTUZv2U0ZW+SLVaURXOxi4+AeRNMUG3KKcqBTtFKpvJSaJ9KVFXcj4xVRQwoawVDkHRRu4NFyE9GfdlkA6z1/E3N9PXavsgG6seJOmi/1U/Ktgwe0+Uw4O3eHk6Htkck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvUS3SwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvUS3SwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54B4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743709193;
	bh=cHRz0iwJux+4k4QgbWPypCVojJWNkCkF8GVIDnqAwKg=;
	h=To:Subject:From:Date:From;
	b=WvUS3SwQ4kQjGGP5BhTrpbh9QNQTY8caMEk8cX0QDEpjJymJBHil+BfZ5HGuLvj4M
	 UN5sKcup789jOWT90L7924P2s38Z3WwzRaHD4oo+XriAHlfeH9h9dlshuHAfb0Vg6U
	 wFTsn/O19llborupJro7l/Bb69ob1zktiTZ6vUsGcW3I6as2cmpCxKB7Bx1EC4FIPf
	 zuADGL0Z2RMALWpRsX1F+kCpmgUjT0zK0raa7pGysAD5hCWn1v6eZ542iFzBlfXbIe
	 OA7eti+SJdDkHr/vKx67zre4WzwROHJ5WobE57PgN6HSI6ZCnBs5BnGoJpA3YsezAq
	 1b/fSVINP+u7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B9C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370919358.12817.4154201003357865898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e161057b4bc4ef1bd67136832f6486e73ffa1773cbff781eca9c8d49d4c6b87
Date: Thu, 03 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743709193
