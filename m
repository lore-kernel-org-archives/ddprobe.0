Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C094317D
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758675594; cv=none; b=PhJdSrWkKeQW8v0+YBdp4sDvqgBUo6xvkfot/K+AFLOZFAlaGs/EK/QkwYLZ3c3UDDkhoQIAPFgYU9vg6CNUshyFbPuXVLC+yE5jI1R4cmHNkBF6T82HIO36nhPkz9LAlC4pjaNkmFizF/eIZxSNYNrYsw+4M2NGLfV2I+93YYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758675594; c=relaxed/simple;
	bh=XGrc2fAw+kDxEcCv/uhTt4qjeVVhFwC8aGf/vHb8dFo=;
	h=To:Subject:From:Message-Id:Date; b=nxgVJtkS7EeKynTsLYAPr79Y/Uyj9vtKCYZaIFwUba2vS+ln6CNawXlHlG3GTRK8PRKX8qT2vplIQYeGC0dbAgiOyAekSeGIMWm4NrNgs5yd10vgIuql3WzGAUfVt5NFvQJBPaeb/yjL/9NRSjWwEHAswaGKCfIwHrOy0rEwWs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDCb/krl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDCb/krl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60F3C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758675593;
	bh=XGrc2fAw+kDxEcCv/uhTt4qjeVVhFwC8aGf/vHb8dFo=;
	h=To:Subject:From:Date:From;
	b=uDCb/krlAA/Je8z4sZeONfLnZBWm/4HTtilzs1yr3R5+XF2ukWigScKvpBrKT5mO6
	 J4WaMzVYheHVZ8QqH1IovFJHc3z7/EVXXPoJ2auYRyiUZSGx0xw4zLoQO6as8Mh3Jx
	 HHr7jyrjpCURYJtgIXUcsji3/d18PiS9CILCmyS9Lk6/SNPNbeRBjwZ3vUv+NcMnpD
	 opsTU+6aplo3ILU7f8bDac+K0M1OYF87c5wHueHDcw4RkfXcW40Ig5r8A9Z80HEJCp
	 xuFFNQ8ccgDGtbsORWzUiQRn1iMrNATEiBKGUd5PWR1dEVGvyMJs/NdWmiOg2pEQcI
	 QFd7HaQYEaiew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930D8CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867559359.19696.8062528803528784914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24e251ee188585dd6ed85d8aaac2ff8108b9f259af24bfc231b607cfc52b328
Date: Wed, 24 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758675593
