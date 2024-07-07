Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49919EDC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720362983; cv=none; b=MNXkWJSjgZRZpmnGHQH7kNk3nVPc6MFcuyQG4myNQFh1+SBPNDFMb5znjcP6swfsUQA/DzCQcCi8UGMh59wFyl5r+s2vgvp8dHFB0gzI2dH+/O7F6qz7daUwtDI4fFlsLo4MfPlMgJ64c8It4UucHefFu7rpUfu/ehOpScpA5zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720362983; c=relaxed/simple;
	bh=TGw6Fd4ug9Ve/DkWH7aeAaabMm4XeYquLRxMZB9EEwk=;
	h=To:Subject:From:Message-Id:Date; b=lAfBD1aVRlEHLKutG7Ce87DfEzFupUNzM2hPlLCmo8y1rgG9YsBIYD5w/0IVy1OrgQDgr1E9Xl+JdiqpWAFmhGgEPvjCFqn5D0nQkgWGE51zAdBgl7mzsJnKFidZ8COW4kiV8nEe5swZjy7lECTO4j2+fDJOoHCiNBwfYtQHaQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQzBHmCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQzBHmCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8C8C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720362982;
	bh=TGw6Fd4ug9Ve/DkWH7aeAaabMm4XeYquLRxMZB9EEwk=;
	h=To:Subject:From:Date:From;
	b=iQzBHmCp6N4IxMkhL6wvZUhVB4vZBzvYD/sKlI7ebkwDb5NuluULxFhA29uekDTzo
	 ucay8WBGp8DVsjadrL8Hgw9uIbb5trS6lvIgAlnajDH3gv/NevUpvMRfw2R0EHqEd1
	 ATsvoon7rblPTcw6XB8iaIdA8yN3/uxXcTdk1K8fajJkXMon3Tcs+76zrCw+kZpyzz
	 ZbH9BZhUY6xbJUUZXaY61kE9BGu57dKU0J8llZV903q1o5zJSnS8nXoT00eNU7nGKm
	 nMm8NWauIskdXWk+aZcas+TOQ3Kp6Cgp9GXGRXqQgi3nAZhQDuKk0zWU5lDYnCqRVV
	 ZFZ0/79Q5k0wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5562C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 14:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036298280.4303.17005877784443947495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f3ea2dd502470d53f478540e817d0451a7abf93048c8825b0a4f630f1f37e8
Date: Sun, 07 Jul 2024 14:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720362982
