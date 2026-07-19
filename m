Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064132D5432
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784491114; cv=none; b=enGrH2kaFhJrNXG+tsPOdDYNj4Ew3TkSR4aOLJRA3UXyb5kA59ba9HdIkb6MmOnQzpd4i9disPvyuMG+GvwTRnDGWSwW6YwgVV6LkFmBgfEx0j5jKAuGDSBvpLJxKJJ3qjyHY+Na0Ch0ixN2vdT1veKFSxp/mxTLkE2MpPsdW1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784491114; c=relaxed/simple;
	bh=y+peIQJje26GV+8UPnOFIZwO/G2L8dpXSh+nJJ8HwNY=;
	h=To:Subject:From:Message-Id:Date; b=vCnnJnFAQub8n6xMW22GSVuS15whQ4WbNCnzKuJgQQsMt5KuzIXQ7pPE8gN391EUppFW8U7ZbmVnSVrCVOK8tawxPfDOOlNobr7F0+Jzc4AzgJgE56LSgJ5VimEBQiiCAlnFve9VQ5wodulQautdWDVBoolaoSkgQsp5Weipnm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rf7VJapL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rf7VJapL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5E5C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784491113;
	bh=y+peIQJje26GV+8UPnOFIZwO/G2L8dpXSh+nJJ8HwNY=;
	h=To:Subject:From:Date:From;
	b=Rf7VJapL5NmFSC11WqHOXGITZydlziWjMWaDLxIdV8Q4L3UwpdyUwqbTaUQGB+4XO
	 eoubX0s+mqCau/d44SEakZTE4qE3wkuk5Y7lw4CRB271rMIK5A3uDgIer8j9a9EKrl
	 NthEMYiA9W+nq8zDvz2tZ9rYwa0alqAbbvU224GfDDZVA6xuOeKUOgc3RfgKW6BEGK
	 3hVGvsJx46GYGMeIY/kgM3uq1ddx87wicq3WMuk30a6m21296tprTnbcl2t1edm6aP
	 jgl8nc4+u6/cBWHYF7EQS5EZtrBNz9fRPK0yt1tCczEsuFAMHXuMasE5c4KgPjZWsi
	 Sh5t6/wN25cXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D09C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449111368.15801.8649349736602879894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4016da3db04333e74e54c0d2e3be8a100b3e211e3994830f94b2d782a7d4d07a
Date: Sun, 19 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784491113
