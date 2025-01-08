Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DA9205504
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736367954; cv=none; b=Lf9O5ALDIRFF7NwlrPm7khLzzMuqktmP49lMVgRaVi+DhqfObvPtQ34VmtXRzGiZSBNmGIOogc9Ca/kbspnIRwsDRIhvAPO1GHPtGzCyb9rkAb34LMNXMeZEwowpMcOEKQyGj6qNqaLDw269jBDwvOIVlvqW72XdluSiVpHumo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736367954; c=relaxed/simple;
	bh=EqQv2UKVZsH70b8Na12AlFRDF/RhTi1LX3h0s62ySIY=;
	h=To:Subject:From:Message-Id:Date; b=huUI/v14eK3fS3F443F4jt3PoH94hnRgHQEOMaooSmUkH/ooGOY1E4r09avcwJLQJ00UwY9uLsg+zW6Hie7GeN0j/YVulMJ/waxH6VWKLZtNodfTqL0R9DsXCCRunemaLXFSTALm+Owrp/fK+yoRdtSHosQ/TrXZrhfLnKHxLHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQtmzWC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQtmzWC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59B1C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736367953;
	bh=EqQv2UKVZsH70b8Na12AlFRDF/RhTi1LX3h0s62ySIY=;
	h=To:Subject:From:Date:From;
	b=jQtmzWC6S2yelcWNDIxA9jHsNH73UWOcfXhpMsnNS54CdlPIsAdkFGVKdmLjQO02n
	 gnQorn1Rpf1+vWmX7Qrbo+LChySr6ZJTmXxzHPsArrVygEPjXm0Ak9jn/pMikQzWEZ
	 t8xE74nLltdnkPNq1p6xqwqriQ0ckVFNRKQRQwqy/IeA23NwwDnA3HCml5JwnNth/C
	 ZvPR4M4HeainmcCKdJmuosJ9XOs5nv0NZqC5I01dWaOdQQwP71yBA2Xoo83meIfkRQ
	 r9IjsP+CT/ECz4UgTgMf5oaw6fD0p3CE5FhZPSVQ2p44dnLE6hJms0acRy5kUOQL3U
	 fEBp4VY0/sSPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C272E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636795361.26993.4840272235774624147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04388fc46b467a259bacac77cb0efe8cfcfe811483ab93a4c1e4205ec02fcda
Date: Wed, 08 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736367953
