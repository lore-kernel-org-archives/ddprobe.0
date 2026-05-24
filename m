Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C51D1DDC38
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779586954; cv=none; b=kqjLG2Hhka4sWUbfip1ILXinjRDBb/AMOaosWg6BmSjbcjQbso0ONfXPjEVK/b6uSThyGbiY6+Q/wE5ORtwrMpurRfadXFR8vfZjnYzkSlo4+6zfUcjhp0VnTr/zvf51rEHw4rGdtUGVoAM2qWvnamQ3bWTFDxzRiOWDIaTWT34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779586954; c=relaxed/simple;
	bh=4ExQipH0d0CxngcNKpvd1azbbhqwrYBj2XxxsTnrg7s=;
	h=To:Subject:From:Message-Id:Date; b=bKyKJwAUUwGlyGja9/Ob8zBwtVUh+/LdlbuDHWm7GgA6npFFJRGsmGu89LJLdd2F4stS7BqnWZu4FpwnuOmNsI7vIMKjlLPZTTPKTk+0cg+rTc7xxJ0tMhWZj8yTBCfzENyRZ3wxSRrFxNjsStoIn0737DuhWTrBXo2fRo3ckpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqOv6Mnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqOv6Mnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C1FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779586953;
	bh=4ExQipH0d0CxngcNKpvd1azbbhqwrYBj2XxxsTnrg7s=;
	h=To:Subject:From:Date:From;
	b=QqOv6MnhFc06OdXBZavdslqUgl888fyHR8dnOu5UTeP9shcPASdvHurEC3cwuIXCh
	 QyDxbIijmS3ZpQqCnewzn4ngiLAduFmBYTSZBLdgSBGDdONhszyH13IjvMh8iFoc84
	 PRvx2qC2XPyz2oI4CbZ1SrhofJCh7oRSeFKycFbyt5SfJbB6qBVprZgHgOyNnGb6AU
	 fESPisMccTTTJ/qQCzdbxaaDjBeANvmIqzjnO2MMkajdBcrZMCsW87TrOYLcSlDpjR
	 WEWVk/Dfs6SHvVb8sIwEzT+TzdhE0B0dT+c7SsQzmgClkB7unCdX3uWpFW6SGlzt/y
	 IOgbhzB3Sabbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0E8CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958695368.30065.16406036279516119077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70cb4281098717cc9b0815340c670cbf66f5c7e9d7b255538a036eb5ff687ea
Date: Sun, 24 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779586953
