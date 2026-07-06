Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5057F2BEC5F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783346914; cv=none; b=B5/l8xUSR/wFyP9tHjc/pWZgdk4lbFKflXqzeH69K419Hu2LVSlysPbkNi9PMGxQQ9Tj3KwJbFo19PSFnhPWPVkVLHAEMMiZqNmJTXAqQv6IUkzH0K1Z7lFrkiqZARAziMHTP6XDoAd05C9cyX45aNRShrz04XDn/dQHBZ1aIOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783346914; c=relaxed/simple;
	bh=duhYzDjSCkHMyBDBT93OTf+qyLLonsAvr1uGWGAyoY0=;
	h=To:Subject:From:Message-Id:Date; b=tBiXm7iqnfRZwgIDPLx1rpuvk9AhERstQM+KOmyB896VNGbU8jrhNfK6BrkwNNiejsbVPJ6gCPuii4OqbwIJm1QrSfLhFCAk/2kiELJGekeE5f0LlrY1ZsjDNporkWKCuKHWtJqOeh4yLsXcAl4PwiibGebWleLqqvEFR0/i8qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOKj8O1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOKj8O1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B01C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783346913;
	bh=duhYzDjSCkHMyBDBT93OTf+qyLLonsAvr1uGWGAyoY0=;
	h=To:Subject:From:Date:From;
	b=gOKj8O1YjwEaIOg4sCFL3hdD6+Qt7K4OG9TtXdNzhPeiC93Y01Le7SN+nRT5uAs1v
	 XtK44KTeS/6wG0yZkO/UVUGNHxXLgiP8o3/GHaYyyvdgis8Xuen+Pe0s7f7p1UvupP
	 tdn7HGxFv2I014UAGUb/PYX9qL/4ImaMuGWFHokAS3wDwQZN8BRQIlYrbxikxtITLz
	 0AtXtt1bvvEvvPRwh85wpdmesp5IKp+e4fllRHn2/uQo40CcqTz7Lpo/gM5qFKlgPa
	 q/hIsbp49CiMZgmaKHVb28u453fKfyyE1e74dxZbEcig77DqOsErgyN58FYXOTTU04
	 Xo0dCi3va3zvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE28C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334691369.29528.16344918562176650273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db789e0e5bc6ac3c31787ba7bdcff7310336435510cecc61e97ce1d08e9d1baf
Date: Mon, 06 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783346913
