Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF6174C08
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716293003; cv=none; b=b+2E3bF10p9PxU2Bjj1x1b1ztE3DeurDTNGNFiIXAVBVJA7AI12EjRH3kSKjTLATitc5XVaL2W92bHGvdUSOqVJrmMH+VZBhIL232mkCDvjLEzQ5SFPIeZsmwgOLq0iJFWgGOQLyV0FshZdmLYm+ghvdfbC11qM/Z6t3iLnMEwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716293003; c=relaxed/simple;
	bh=aOzpsv5LGF8ZNJVvf5Me+DIdOSQfsgd2yLkFYgL8KiY=;
	h=To:Subject:From:Message-Id:Date; b=ipFLpzqgYHWSP/89VeJEIMTRXZLAZ45p9q8eWT1sNSFhiBLWygJ7nB5jjChp/XnvhkOwLs/DMDbXlcbF+fCls60ZMEzpmtB7TldiynggHSNUz4260L1WcWoYoBimiaZWkzMljDzXluRmzqc4+VZOryiZf+xa1rMzUzpIXrKnJs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwY6GZ+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwY6GZ+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CC1C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716293002;
	bh=aOzpsv5LGF8ZNJVvf5Me+DIdOSQfsgd2yLkFYgL8KiY=;
	h=To:Subject:From:Date:From;
	b=bwY6GZ+SUo1DfK7ZlNA4ipP8ojqAPypvvcxRmrYybiFZC4lVrlQB7eqKbQClNWYV+
	 W3X0nwT1nNtVmg0gmYx+zhKuyhO9BFiCED69H4MJhOepSPpEWAa4AW85trB6eJ4ujs
	 /oDqSnQrW9imbB8lGQysSxJZKErEObEHCQM+AbGvh3bZ2Bf2lvNB9Z/ni7ZprdH/OT
	 brg1NU7qkvfaFXKW6d3uJKMq+IECCYtTWEmbPLZrC1WgJDS+D2IwSX7XWSAH8u5nSg
	 vYQUyhzxHnhKP6tTnm8iqul/x+XRB0Z099lTy2VwgAYKWchMupPrBB0cVHAfBxUEfl
	 HqIUJB9Uxll3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C9BC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 12:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171629300279.26892.15783021751249656759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d4fdf730397f305c5926273ed70d4c0e62560e590826f21be0ca878be10d9b
Date: Tue, 21 May 2024 12:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716293002
