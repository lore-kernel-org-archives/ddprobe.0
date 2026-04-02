Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374D239B949
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775148935; cv=none; b=YFDx4LQ5KqFHYmGnXhJC3Jm+iCxEHFXYtotT5DuUBtmdbEzr2rx2M65Bl6nZtoII0isNPdVOL9UmxT7KgcFpqA49Ivyvi0QorhFbgluLXJu5lIq7mfxWHV2f8tAySam3VL7Zm6QCj/czCFOwfQ4ZRa6PdY3VmWrm0yklq2U/lsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775148935; c=relaxed/simple;
	bh=+TrCrUti38ltUQ3CfR8MvFIqrinf7nR+URlZVmqRrsg=;
	h=To:Subject:From:Message-Id:Date; b=CKgyOaye7j0uudP7ARlSVRgM0kAGp1M7433t78tCXzWgA7gO+rSBEYXBQr6vnhU06EStJ8joznSbGo5AmmsowBCZBZnxfebwatiw7KiCkeQll03Zbp0+PNHdyZApM9ywSVkA/bC2FRuF0UfeD0oCz2Phhw3Zm55nRkhnCes/L+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWbzIMZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWbzIMZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB69C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775148933;
	bh=+TrCrUti38ltUQ3CfR8MvFIqrinf7nR+URlZVmqRrsg=;
	h=To:Subject:From:Date:From;
	b=YWbzIMZC3PEU1643zor+K+qUivBRDvVkP/wBNLV3Ww5oqD3c+rLBU5sMrI/NNXnfz
	 pi3F9sy9jMBxAIdIrAO5+zeR5EPSBAMQo54ei0NvABR9UnhY5g9MN0geCcISneQSvx
	 en8T6hgEVgB6/7HXfdtJkkgrHKyMrjP30iMfdalL8WoXALiA5JpyKGnPeeHDOe7bP6
	 aiuVeX5wh2fhdSq86ALDZeAf0+NZbskV9j5QOlNj5me+3KVyL9vPiJ4rHJa5ez8t7u
	 PdXkPS76bAwHTDaNMZshrJ9McMPXoRLuen0ov9LiBkod6qe25BfKTNDpAqRVqzI/gJ
	 KEM0WP5apzBWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7498D6AAEC
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514893374.14335.11909302373712414334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae6e7cfc23df0586bdc53182580b243fa975d8b61c4e20eba2e72366cd34d6b
Date: Thu, 02 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775148933
