Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C972B2EBDF6
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760284193; cv=none; b=Y5YCz1DJsFEFboxoJTSxrBHmdYvKNKJWPncnkIz6f6h8HWrbyQmOdlYh7Y2Vl1JOptgurQf1WPauP939VpOYzQFWBTouSFv0eYGQM83i5VUB0m8QfVcdaeDg5Ik47UQYOqHlN6KreP1hd1hkeOr6t7GndSC7rMx6AiKeSS8njwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760284193; c=relaxed/simple;
	bh=VBEJpjUueZ+JQ/1iwEzWQ9cUibCvOcnra5AA4F5ik10=;
	h=To:Subject:From:Message-Id:Date; b=JKaGjUGGZLFs2ROGgNDwvOjWNRUq1uaVUywd4qdhS6nLcG14L7o0rhellnXBOkq4nxp1SPjQpdXheAPLV8aJChVQixO628P9nPH1TE5Z5IwiH1yAVAZwFf5fngOyM6h/z5zu9URpXP26d/fQOVNTzMZ8+4tXr5rqgnQY+lXMGb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMn5FHtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMn5FHtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760284193;
	bh=VBEJpjUueZ+JQ/1iwEzWQ9cUibCvOcnra5AA4F5ik10=;
	h=To:Subject:From:Date:From;
	b=DMn5FHtboyaR+Gi67jD/AANJea9GSh+fdvziYew9reUNEUz+9wHHnC8GCGs/Kp6CR
	 fJgauP7K88PUOzXauLmx2kwp1/YZLs7SqnTjrmdfdEQvTkFxo0BUmz8gQ+EtdiLkDg
	 dhML4zjdXhQhacMGj2Y4Oqkwnv2aBQL0nCWmnALY6hicKBlCXopl1IggS4s0sO8plz
	 SmesidfJShVttqV7iHJulGbLWLSw5i+miUlJ+Fi7GJ26a1glWT5s52XE6dq0oDOVN3
	 CKA8911P2jY9FCDecH9p+kKyUEfQ6M3Ymc9guAfr7KJA/AXE1naYnr01xkZRQJ9kYR
	 LvmtT+GorDkZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F7DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028419358.12358.3481501481279074394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7b6cb67367de3da2d8a54d7574cddf8928b910d2d59399178b38361a6057ae
Date: Sun, 12 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760284193
