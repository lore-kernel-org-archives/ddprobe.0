Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D63DD500
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778748034; cv=none; b=t32AsonAvCnrCMIb7RoZPG5akZSDYvx/ba7Vo8DfE4vfv0Wq3Nfw3GEezG/P++1G+Zy9xQTCwTnRZCZQLBlYFiJciW2xIijFjfLPWdVc7dto5qcNDhweo21HSKiaNEE66MKolQ+joGdM4j2NMfotBEdGkh4ACEYbDi9tGWxHwww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778748034; c=relaxed/simple;
	bh=a5CEHrhcFRPk1SeuuO16YOGxcnYVmx6TSDS6nwv4bl4=;
	h=To:Subject:From:Message-Id:Date; b=e+yaEh/FC3zzeFjyNvvwb2bA/Ooin1VLS00nbYrxvrklVZCokIi4Tgbdnnh8XsPqEPniQ/Su0pNVqW5dQ+Rmx/a2s6fKDg+SBvgVgTANLNZ14zDoO8cMR645V3UxmMYMk+J+63YXGqngj9HdHA2Jc0Dc+aFEFgFCvDarSA2BXCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrAf66OZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrAf66OZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBF8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778748033;
	bh=a5CEHrhcFRPk1SeuuO16YOGxcnYVmx6TSDS6nwv4bl4=;
	h=To:Subject:From:Date:From;
	b=PrAf66OZupk4Jg7wrV9oSnVV0ij08dHk698a6Q727x4CSvQpj/qlNOIL+MqmTsGtp
	 qQhUHXdLJKjFrNWTS61v2fxolxji89Qfqnij1dE1ZlvIN8To+KAWU+aX3RJ9Yj3uqC
	 UcgcLUl840lNXkWkbG0j9nhHrzRoO2iS4DwBzP0ExLKO+mZokCoukLynuEblsMAWOI
	 mItrZ84HfpbhDW+FmJ39dltNbwUwxaIFzZQ92XTJT33w9eJ9VvGtnhxgdkssZV8G6w
	 2U7ItEq3iDgrXnc8NgVELnRfUI5i1TGWjpHX1u3kTqrU1gty+gpZFlFSdXJanjXuGj
	 Z7UI15gnn9bnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB465CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874803369.32674.4708179872925057484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f345849960d10ad888906717706648e3160c5d03f2f6d21543bf282a8e7048
Date: Thu, 14 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778748033
