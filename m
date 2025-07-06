Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32EEEBB
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751777394; cv=none; b=Pvq+AIr330AykaM3wdWpa1NVe0BU7v99CnZnDXLT838Zty/IzA2YqwgsiGO9G83dhhmvrQlFgajb7n1/JKbTvlV1p6YelrdOzCqodQe89ExoHpHM+Zd5TLxBGuNWZd5aY2BKcOGb9wWzHNWT2BiDBUZ+VJ8BoJ0B5JgIuoyJ0L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751777394; c=relaxed/simple;
	bh=6CPcPRrhpdDSUurPRbrDMzsJ7+GzcXgYyLzMsFNHjIA=;
	h=To:Subject:From:Message-Id:Date; b=BWzeB6gBDjKkfPF1acqcRMWY5JX1a63BUYTiM0z82nivkAxunmxMV0ylvyutEgGDwK4x9s37BecfjHVJgq7TqvhMiEJJyj/cQZgvDKNsWFo0sgXi2hASLxYBCT3h+/dbmSPvV6d66rb4dJ2v3bNIHOLFfC65s2GFlGDyOQMv0us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DATCSlES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DATCSlES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A510FC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751777393;
	bh=6CPcPRrhpdDSUurPRbrDMzsJ7+GzcXgYyLzMsFNHjIA=;
	h=To:Subject:From:Date:From;
	b=DATCSlES55yLEKA/jV4ZghD8wt21uQEIymo0jocT+6kWPmn46bdtOKGXi3y53Ijgn
	 98ibxLZhxbgSxlQx2k/PVqi1C/Kg7d0RKzdMm8ZlXaQBEmH7cmdr71+Mw3tqjTLnFh
	 Rc37fpRZP3Yia5BIZOZ2GquXGGK9YwSRKtjUeJNbqVZ1/fB3gM+AuvYF49BcmboqMn
	 /K6oULnett8FB8CH3pE0ciZN8oEoL1xQW4Iz95QvdNTXUmfwggOKtJwLixJV8kS9Vm
	 DrDctfQNyimPHzX8bwpKOSV9z/munKuzHjmk1qSnmOiax8xZjfd6bpqCrc4WIRqXLC
	 KmCBQqX0tiVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918EEC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177739357.8075.2356685116812620010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4aa79327aeac2836084357055231c8d0f7bbed95b6cddfe507c23cae81b60d
Date: Sun, 06 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751777393
