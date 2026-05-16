Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCB23E316C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778944234; cv=none; b=mN/zc35tb2eeqm3UU7l8z+IXapaVTccaa53vz6T85kGDXEzD3L/aoL4NEBU670/dU7QJDkHPGAy3rDyCvjsvgBZIAuWKdsUjrvGivGBa67idTgzeKkuki2ECwPQdispBbdepXpLZ4cdUGAifDTioCRuI4kFQ5552eQjt7PzXNwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778944234; c=relaxed/simple;
	bh=0y7EQyx0YinswK4//EpLX/moYyoz8pEmthAW/Vlsbgo=;
	h=To:Subject:From:Message-Id:Date; b=LwrTvJBiqVfFmSS3kvCjFQ0QrhAQSU/cjP4MMoqjmSUDFPFGzUvyofHpNxnMFuhBzpkCCPwhhqu5q+3ryxaD4Skf99Hg56RAUggEpI1xaCUEzWDMA0mLb101DZzP81pSV2j2aAUB3cDJXO8g8652W8HN5UIAOn704fT/Z37THIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1IUfnq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1IUfnq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C5AC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778944233;
	bh=0y7EQyx0YinswK4//EpLX/moYyoz8pEmthAW/Vlsbgo=;
	h=To:Subject:From:Date:From;
	b=e1IUfnq988YSEI5pc052yvE1b/DDG+1qOiLVls4Vl18UZBCua6KmIvoQY6zYxbgkc
	 7MMAYFFWXMz2Ka7S27erGBS3KWWCM5qpl186gsyiKUYfADVRppvO96USp3vLiq93jo
	 PDtay8dbu++GXynfNp/ot3aqBxl/GxEKeoy4qrPx+kTOSvEcuqr5tCXSgUbQXkkNfu
	 WL6T4+p4gaNok51mOmPT1W8qtFO7UjEDpSyfckDnFL0qP/TN4tdT5OEW32nO4aHc+o
	 OIsdPHkAM5oS4+C6T/hVFuREH/DqhWPNynlHMV3O73atSMosy9K+wVRCTOXJpniSvl
	 BVrRnxz/AWxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11BACD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894423369.32700.2849168020780609831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c35abdddf922586df10b97546568ec6f77b4d65cb357acb3c316991325cf888
Date: Sat, 16 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778944233
