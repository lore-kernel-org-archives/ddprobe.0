Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D962CCC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750178993; cv=none; b=J8OqvxPShi2T18omar6Fm8sr9OTrESJbn1AJDS0tG/1/kRa8YJyG6+KkzAPUX8vd/swxIyz3EoYB0Qi0g3U5oMA6qZtpNHZtLHp2cFNAdeCyaMZopZ+OLk6rWedSvHBopQMBvefoR6cl3iNo2hnz+50iSWQo+enB+xPd9Z2BdGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750178993; c=relaxed/simple;
	bh=5boyMKaXZqiZmi05RE80RQssUvwLT/42E8RkHZO+erU=;
	h=To:Subject:From:Message-Id:Date; b=kRomuEzh/NcjBamIQ7Pt+Y2c0XISOOS7JlMwOjNlqqp3t779cO10JULc5sTchwbWMVeSdH7X+wmOB2lntedBL9FcLMxpjNl1s3fg6GKQgbup1UT5EPdFH+8ijMn4nmhNx4/tNZb4FM1l10sGwUTfjCjFwNRKr7F72y8nVNSpx9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8BrSi4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8BrSi4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAEDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750178993;
	bh=5boyMKaXZqiZmi05RE80RQssUvwLT/42E8RkHZO+erU=;
	h=To:Subject:From:Date:From;
	b=L8BrSi4svhVEGVIIyiMoHP+hv37uqqI07Reu3I9nr1SzG9ptbhibNU8TimZvxlAdR
	 V3hSHxNwuTQpJPP/NHFgpEaW/mm8kPsW4STZYS/Oea7JdFv60vlTld72YcqB9IFCcy
	 2SZS5ZOV6I4AGAQKD8BVEmRSsBwTQsQVUDH9JyzdoElBe9eE3kitbLtk8n2HBOo2mY
	 YheaQvHVTo6HGsC0IML6L++ULrK4XnFW4Ang6im3iubg3ya1UR4pOn01RsGXIhYMDH
	 GYlHoFWP8hjzeBxV8cOoOe0AZMXE94HIBjmA6BaIQ6D+be911uyawOHZO4QWQYNTwf
	 DM3PgNSyXII3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900CCC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017899358.518.103079073300198259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28da873bcbaa22f22258ab05c2005a074889e2167d18b2894bc0b0560d2ecf84
Date: Tue, 17 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750178993
