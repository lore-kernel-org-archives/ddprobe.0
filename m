Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42EE304982
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757612993; cv=none; b=qvRtgCkYvh17XOxNAOJIpEAzWl9YTir9GeXKpGTrCJ73DLmJBVYxfPkjxfl+wb1T+e41R0wlJ1IKSiDi+/BvpNsRCTcw/T5LOsRTDci679XZyOjCkTagp32qGNlyYhcmQgbHeAJCUlgbW/pdH7gQoab8lFk019lbhGa/AZ/fmdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757612993; c=relaxed/simple;
	bh=lM58IOF+SFPucu3/oU5dBNonpQy8p3yUGWSiOY7T7Cc=;
	h=To:Subject:From:Message-Id:Date; b=QpXtx9ZM8dAOup/v7xJ5zhLKvfOCPnssSDV8GSHRxt+2hN29pr7SjzNQNto7c6zOTHziHoiEOyEN6kvII5EBwUUou+Yn+JXAuNIKLW6j248zD1jtURFvsCDoziXpFiuN8iB477ClG31I+B06u6uO7KpIAwp3toxWPEmVk8AoHiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFjFAi2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFjFAi2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BFCC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757612993;
	bh=lM58IOF+SFPucu3/oU5dBNonpQy8p3yUGWSiOY7T7Cc=;
	h=To:Subject:From:Date:From;
	b=QFjFAi2j6tmOYiMVK/os2h2PbW7hWyrgYH74Pa8kBKibtBoavIiXTELj7OIOb2aG4
	 Fz3UJSwBFE91f8RfjB9iKDNF6FU4yI+GxbfIlZm6t9jteoi2LQrDZsdGrCq8v4PItw
	 Kyw/fYa7nRZSMXeBOc8gOtlee8OPsPSTl1WsF4pv+EPCcjcvRB/ZVDV9jbmZWreBsU
	 PJiRbQvxlBBvYHX50am6qrAc4L6rhgjf27sCyPSoQtfroSxTDduM/BOjFCDXcUwC6u
	 NW6Ez1aaTLYNb885NDtYPbQ3oWjENlRt+Beu7LaPGbximAjeIb0kSaok6B3axubNJr
	 LddOTTgDTLgGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CBACAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761299358.28508.11487263690801474677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b42eb7fb3775a8c3aa58d1f92f2e191098b0c0d579b7c5e7efbb32c02a86662
Date: Thu, 11 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757612993
