Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343311ABEB5
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722642954; cv=none; b=hU5wK5C2lMRKoAHyUALGVDpmFEbcK32LVePs5N7nXtSn+pwATZpJeml5+58DESPAuRP+uPe1qB+2egVNdVVGGvxmd+Lu2semTD5slFubSM/uppxCvYCZwFxgfaWKTpAn73qfZTnGcsofuhr+Jb9OihNG7TQb8LgFJxqWwno3DmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722642954; c=relaxed/simple;
	bh=2ArWf0oatrCo5ghhvGeZ5Ibr0lpFaFP7kkBVecycN1Q=;
	h=To:Subject:From:Message-Id:Date; b=jiLfjAha1Bry/sK3v052JaN2legYtANTr9i8SDaE0JkeFrg7Pwthy/x85yZMCpiYvS8FR2wobtNLO5UVbDbe/1BEorKRzE+7vU3d/63rb9c75aau8b+/hjPcLQIeo1/vsJptRYSIwpapIBUvQI3tvGvLymsSg07bzULrpTdII3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITRUtYnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITRUtYnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624AC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722642953;
	bh=2ArWf0oatrCo5ghhvGeZ5Ibr0lpFaFP7kkBVecycN1Q=;
	h=To:Subject:From:Date:From;
	b=ITRUtYnMJuZm7vmbgJCse3p/DECb7MD7hM1yGCeMMvGplOcls2pcWZTo8gtf6Tdf2
	 NaR7qq6o7CKrUtiyDDPiLJhJYWE9Psbf35sjyxsk6qb2BfE3k2NCdRqjmWTC3hxknq
	 9Q39VH3C0u2hm43eJkFuJO69VDaIIuHTqlhcYmWF9D9SS90XfkOT7NUb7ozbDxX7ei
	 pvn0B1UoumSuOIymwaATQzH47v8+6/Y7tGMtAqfUFLdDz96bWJksQzWad40LX54/Ef
	 xh3lFV4fwbaEZPPdoKIuNuPW8PEcE/ZseR99tG58fBbysOWXiGF+6K7gHvdgM/TT8H
	 mc2RBDkITXHHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C59C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264295358.15734.8225538385256824803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bb1cbae03cde3c9abd24685973bcee39a82d9a5b5c0bd08846ebbfdf299d33
Date: Fri, 02 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722642953
