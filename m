Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200C01DDC1D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777484854; cv=none; b=Dg2lM79DlBcxNcBR8Lu/FzNDxfRCpek+/N4/KqnogYdF5I0auPUJTe2TOEgnkvlwMWd53esLOFsR4ybd2YWeSUvgbAduqnGwzFGOpMlFqANkWleqPPrp4DideCk34U9DE9co5ZPhjI9QI6AlToNye5WlqU6YMOkX1N2Wr3a9WQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777484854; c=relaxed/simple;
	bh=yvfhrEXxRE+wnNZTvczjxnRfIh5VmCeuedmplew5wUM=;
	h=To:Subject:From:Message-Id:Date; b=PGZONud6+3ptViPia8vgP9F2gTlbf+e3v5u/j14/KoV6ff/GxEHtcGsG+l8tQbmy2u2p2L5Kp5xfNF5IBLzn3/VJlzWCzEgQdWCBCs3rr/MmWeWMq2izBLEzlTZr7v6hTqDrlp5zZKjT9HqFPPE37TdJAbxnJIsisz6/CQ0DKuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5Et+6J2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5Et+6J2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB87BC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777484853;
	bh=yvfhrEXxRE+wnNZTvczjxnRfIh5VmCeuedmplew5wUM=;
	h=To:Subject:From:Date:From;
	b=S5Et+6J2hUWZxxD/07KL26v5D/ZJwcT++vage44v+MAk8rCPA3GCA+E2bxpS4htMY
	 QJi2E1GOdsUqVILXfVW8XCZXJhIErR8USUCFaBFhhJSsRgaJWU26cK2hs1pb+W9P5N
	 DANFFN8bz2ALeIPjiCY27r69kskLBfGuntPbQV9izv7+3Vh5ytqkvaSVRXE0+AZM4O
	 /UWQlo1UPB//8j6o4Bg8dbuhwAztLsMwnb1hsgiTCWX89097wNM44NU6fULiaI8Rfl
	 D0X3DBI1er9A8TsBcncHerfHeezRCrykXlUk3qTOAjFZNNAnkwtI96aYO0QnCI8XID
	 cF5iMoRwh4IGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92EFCCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748485368.10205.9620438576080922090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8d2d92df9f2ba547c48a60efdcb57e2b63f36cbdf500656b1505ecb1ce6415
Date: Wed, 29 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777484853
