Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AAA279794
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767270834; cv=none; b=VsnB5t9K4A3nyMxVXq5do8ul2RWRkkv8tkri8+BWkhR0z1fSVCwE2zqRkxM5jrYyby2gxVxPBQqYDYo8Nsgw7flHwnoJ0O//m4D2NRNzm6/zK0nIHC+XUZKZkYHqe7wNrUG8UQFdchWp9T4gN3ySM+6fhqvYEZylPbd8mrO3Kjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767270834; c=relaxed/simple;
	bh=itlLxYkJFlGvEfKhV9nXuQvDEe8HTfAPpFKlP8Mez/w=;
	h=To:Subject:From:Message-Id:Date; b=nvYf282mr9jh7UT2aD2NGzXgNRbXl+GCsT/ZBQmWHIi3i9GIlswQRaCEW3xEq0/IaBRuv9xogJifCR3xVTSBZ/5iywHCcwUFGdIQC6+FiU2RzuZzo7bOrsDZyeuRkRiF3abtovVkmYzvduu7JSd13KgJpH+B23LjXFNHViN4TIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAqlPttm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAqlPttm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EBBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767270833;
	bh=itlLxYkJFlGvEfKhV9nXuQvDEe8HTfAPpFKlP8Mez/w=;
	h=To:Subject:From:Date:From;
	b=aAqlPttmWHtZjIFVG1OzpL8ZBk/TEaqTqj0zVYrwHCjemytD++RxZ5yS868gzC3n9
	 JvPoO6shZmwGAI96t09AgDyBXXGDgoRCnkJQH7HhjNWqJIBkp/T3cZvTBry0F1GPpO
	 enG/0uCf8zhmlxrJ5L0+CqQcZCrPEsuBH/qYzkJRHjdLW64DrQ/aeLvKD+nJamApnY
	 wjdLmrgAKrpMd+7lBCOVJ28vsLF31cxp0HIeB8blL1C//QZbE26u/2xL6iGj8wIxRP
	 yAYzIKBtxkgAZgKnZbSrEIRuUbmatlmgxHE5pffsUgX9Ll2vU4TZ36Ut+lgnSn0RFc
	 b30TSC20L/57w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91653EEB597
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727083357.16950.14497530409844890060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e42624b143020c736d5b8dd682a517b8013b0bba19eb6e1ab21411bf1e7fd23
Date: Thu, 01 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767270833
