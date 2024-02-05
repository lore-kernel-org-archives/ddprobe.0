Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31F2C121
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707115697; cv=none; b=SJrQadPH+SDhITDUqaEOZGlgpCrLEj3He7+M9iNSsn1pYJ8tzNwKdwwQXe29oH+gs5VWNO/OcmArl4XoHiKRSMSghiGfpNa3BQHE2dJEdX/q7p1z8RAcEmHYeikJHK+mNcvLs7PQfvG6Kf09aZSh5rC3jJxcVG6BfnmlktK7HOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707115697; c=relaxed/simple;
	bh=8uqz1l+6nDGsZ60NNT11uwbSKBb/eEivsNfTUGLjdPI=;
	h=To:Subject:From:Message-Id:Date; b=bOKq6jg3uapmnDmI7lEtx4VFXljriKAtMLthY/k1ByvfZh7ck0dbv+ImB2QKIxfiv7sEw6rJ6KbPHjamFjF8Pu6HbLuKm9x2cfuQ475NjFVC0GOynX735eFAED/C/mTdDauT4hHGdYd8HNwA+viHNH+HEuVEzGfMPTPXFBEr1BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gzk/mDQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gzk/mDQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8B2C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707115696;
	bh=8uqz1l+6nDGsZ60NNT11uwbSKBb/eEivsNfTUGLjdPI=;
	h=To:Subject:From:Date:From;
	b=Gzk/mDQHmWRyDqfNTUwuvXU4Dg/B2qssprElaY3gq/8oHXVNtyNUgLXwVLkKz2/1b
	 wIXGOMh7HudeXX694cuqo/ryin36gPXbqp8pbZSrOStiuJBGehh57zU0mKUE4OE5Ik
	 Om9pkQR5kAYH4c1hay5JMUFEPnFDdmEidTriHR0SMVNz/QHssn6XT76WvRAei2avyO
	 buz/kCcappbjot7GLqyxrhuaxqB6DvJafJXyUqI1k+AYDhC19+QuvwsA7XFDOHTry4
	 g9jo0nVm7nkyYS+b/MrgoD+8tvUkF+vXnoGByUjh+KeXA2cCPBgXt4hMUzu3WdLeyQ
	 xcyFJYHIJGwDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63227C48297
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170711569639.8168.6319455017062848402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba43aec1c8e97bab61a34d506ac5a9f0a8a671298d98a752aad058ea176e5b6f
Date: Mon, 05 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707115696
