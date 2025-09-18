Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185C625761
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758162594; cv=none; b=l+ujj4hWuimVhgmoov7ZZd4JGUIoajkNQaA0Yv6JRLIB8EK9wDckAG6HqBRtAQXviHYOGrSAzadrLc3yJSy1lrPN85Zoj8NGhroLb0JCz4sWwhSh45uUDEUOnBGyvnR7u+6pSu7ZjhROdrV5Chw3Fv/aanLNqGw9byQE8dLw/Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758162594; c=relaxed/simple;
	bh=SxtSgCAy8Qv2D2hfPSc2kM3fxJptrwbdjYg2+s+bhsg=;
	h=To:Subject:From:Message-Id:Date; b=tsKIunDymLG0A8Cx/S0ofGIP0Wie40IZrmuwjtsYCiwLqbfgr5f7mCCGF3CTBxktMJukl4WaKlxSLux5udpq/JBOwYYxcGoZOP9JP5RTQ0QvicJihqncJS4SxQvftFTFSmGI4EFCaHVxOku5+KSwbIWq3PgKc/EzXR2xRa3N/1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8/om6sE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8/om6sE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C09C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758162593;
	bh=SxtSgCAy8Qv2D2hfPSc2kM3fxJptrwbdjYg2+s+bhsg=;
	h=To:Subject:From:Date:From;
	b=V8/om6sElGEY+cbBA1r3VnXO0SO0qB4VKmmmfcNxGtbDOPkUggYTeDK0QvDrB2T0K
	 oe/fMEeoX0XeJkhvom5hMrxG/zENzE6fG5GJiykN9YbKhvJltg8GTQCWqjT/vVtK0n
	 QuK0pUDQY+ETisKP0f9//B4qaWLPwNb7L8SlbT1EB/X2tI9bKJ4Uiu/tX3HFIpA5u3
	 YWVUmkimewaHleJNvoGryvkhxZ1NxYlvhN/g3NfIzhcjIVimbUGeuEOt69YqHrd3RY
	 YH5jCdsBg3e1et2685lpBk4Znub06BQEMUToGhcYFbSXdbpndD96J/Ia2lyyYNS+UV
	 h3q29f8lg2EgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FACAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816259357.18498.2520368440818981711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f486ac15a11b75cd7a9aa3ac2fc53e86da2036956477e4b67f8dbdebbcf48ea4
Date: Thu, 18 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758162593
