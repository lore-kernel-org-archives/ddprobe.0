Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D7A43744A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783951114; cv=none; b=ONvW1vCRBewv+DZTFXcNdFx3jJ2gDeq27PxldqH5CddASC6laz5GJQuy0J4xbJJadFHlQ9ckW5qZ8NPTHQ/5Gdh+EVdiRn6lF2/VWX0QxnQgMkxvzZrpu1BlAKb+74kVmoL9nhitKvbXkJL/bTl9zbfJmlLXR7+nsWNFdI9m0ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783951114; c=relaxed/simple;
	bh=qRMOYL1ww3ws06nx8H/hktVvnCiRLmGUDdprCRvJ2x8=;
	h=To:Subject:From:Message-Id:Date; b=O4N6KM/IZbJfC5Dm53fnRfRUySr8N2ksRjfUz4cOAND6QEr3vEEe64V8VYHzuZvBDlDu94yLMynzrF0KTILTXSYFSBkyHbBBlLEli/pF67s/5Z8aqivwWd/aT8ypbLdZDsvmUe7TU9bvRgMdXMw0du1m1VUmHs6lV/gGrX7qJZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cr8fcvxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cr8fcvxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA315C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783951113;
	bh=qRMOYL1ww3ws06nx8H/hktVvnCiRLmGUDdprCRvJ2x8=;
	h=To:Subject:From:Date:From;
	b=cr8fcvxL70V8SK2n5CaSG6/AiRdvFzPPD2SbSa5EAl81CzhGBYC4h7OtMGfqlawm+
	 RwG5Vp7zVGZ2Mud13jvWSTzqmDq5V/6duDvz1aJgHl3ViNpnJDVBRe+4PxXTo5ibh4
	 N3jeqyLgGR5tpHSJRpyo4jp7CK9ZuNLSJrhwruIXse3hffwNwvHrrZdE7ITP6q4fpL
	 /N/MZ2kWNfksHUDPhMpbUIJqKJ3yMc3ggB20l46C7Bxde8tuI8Bmxz5EDwOZel9/rO
	 eCUh7ur+BtLkZmxlUFZ1cIdJk+czY0xYSbmVqC/xWp/jcKJf1LoIqyNDv1bn+Tsyqd
	 IOZoMCDU0PCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A78C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395111368.4558.15224604117426400357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b75e621671cda52bf134022b7cf9a8d7b9643eaadb5bd8adbc5049fd938ba4
Date: Mon, 13 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783951113
