Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD276FB6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709442497; cv=none; b=aXRuPhbvSqgYvqdib/rr0x0fAYejIUsnSPkXwFsvx5yZ4Ey7vtnCbGQFuKCMq6wDMSuI3xrYr6wTp1ImTZHHNRoPbgLlPhbyaA/PkOrxB/va2twlQam1wcrLKLj3zQbo/7fQ36CtWqNW5S+Sl6FMxiiBWPmzzNyzIaZPh1YNe8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709442497; c=relaxed/simple;
	bh=Zk9cD0Q+XSUE5w3gryt+bYWLWdO1eM/Fdyrjy1Hsa6U=;
	h=To:Subject:From:Message-Id:Date; b=Osaq847KeJojU00MFX9g/gqDb4pKCtQlyz8h0bs/YcENCqYR6I/OMmpI95Nj3VS+Dm56GwQA3aNHSZ9y2raQ0/x2r51LY2yPpMIsJZrmq0GTmtWESEVH6ZWIBDDlDFsx+V10SxroikMfml+3hqtl6TZ5KOQ8YkOZrWIc31Z5xHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTMB4TUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTMB4TUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835E5C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709442496;
	bh=Zk9cD0Q+XSUE5w3gryt+bYWLWdO1eM/Fdyrjy1Hsa6U=;
	h=To:Subject:From:Date:From;
	b=YTMB4TUVEbYTG7m3S1y/yyz0IFdlo/+icJ54/gQYA167LWCAVYnuZ+STRmHLdbVf2
	 c5ze1xfh3oCSOX+dcxbpWhnrsc9lyf239WoC8LHhpmfn7KArlwyrpUaixEYh2rTPRn
	 VB/B8+Vcf3MBGRfkvYOKv9PgETVfmnV4HRnGnbTXg1wadNMUtnCJ6oFbvBYHSVIeFk
	 S+hGOv6SxdPMx2bu9/r+JIxnTmtM3jP2l6L5ocPjZfr5KN8DrJ8L9rfJOw0yr0ADW/
	 EtaT7A9+GwUBEcpwlU0NteVTqFSD8wVKf7YmHauUrov68FwdOT9edBSpTv0owtW6TT
	 Pv5SKLuoDn8yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6283EC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170944249637.31160.11306260997760152990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eac4b203892fa2efb65b78acc6d060720b9c7449861f24de10ab4d262fd229c
Date: Sun, 03 Mar 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709442496
