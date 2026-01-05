Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D33533DED6
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619434; cv=none; b=VmfFrjLPHlm938b4f2YVG9H9lS0nGQAOe+XAvA3PW8MLXQVHkpUmndPBhYUEEBCpJy2kDggWkx7pTr00oFYwoTHmu77dCEoc8VwQulJt0aTxBlnKkcIaRhysjwAM3NegrLCsT7ip8XWJXrZ+UKJbxDzuxegy5ttvdOhR8zYi2yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619434; c=relaxed/simple;
	bh=V9Km7cRHbdFRYUNZcybFM2QM8zgp1WiVysMY2SShAMk=;
	h=To:Subject:From:Message-Id:Date; b=dGMqMWC5DgzI3EnNtqWrsC8mNgfEB2BPuojiIe3o5kwgMk0OuF9V/dsD5TOFHf44SdgNEge3vmrgZ04iKc9s+BO0yx3KkV8JGQGsy0L2Kn7byQRD2Fd09WNVjFcE1V3bHKomG71v6RSs7YpCClfP/0wBXEXCOzA9g3xWClzM++M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/raLrJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/raLrJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A8FC19425
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767619433;
	bh=V9Km7cRHbdFRYUNZcybFM2QM8zgp1WiVysMY2SShAMk=;
	h=To:Subject:From:Date:From;
	b=Z/raLrJgVuYlllzSYK951nOIjJLk2B2lhF0ZvMKc+k5zUsOYXbgQ0IlYVJg5D+Y6m
	 +HcLW/cr1hSsvrVa8qZOz570M41AIDufUOSSBKZtRy1EYtF+85JwRpeLriwdjJcL9z
	 A3OfG/FBX8AgTrCjTKLNvIEWr+fe0K2uSd6u3u4iKpxOWSTXkJesEQoZOAo+i1KN74
	 uL5bcbAABRyZk7brF0aFR6CnYZ2aYh6vmnjLXF5rBViLr4JqFvajKn97emoatYdFhE
	 CEjW/fzx5b+a+CgChKrt34SNntScbsA8spaN7stg7Bhp/qZJIMlfgHJkTmU3mGnSSC
	 SFFOHH+3mj1dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F740C79F87
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761943357.2729.2133478387578401947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7147d63e73899274bb071ba83c55fbc25d41ae86f9ea48e62d4287b1e73da763
Date: Mon, 05 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767619433
