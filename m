Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C4A279DCA
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778807434; cv=none; b=n2Ao6xgN0isP66JRz2ADemW1PrwVeDrRCWK6kU3VssKrT1LDEG5vgYXP32Dn1gKwcQgekKmquh5mCIw/l39AiHBBXaK9rSbI55D0eaEgSavwjmZqoSwJjnxVTl8slt2ngWdgvkX6yQtNrd3R1UkCgDPv3Ebb6w2B13hd/EvF5vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778807434; c=relaxed/simple;
	bh=DnRv5GIVze0qayT1OMPo8BWVpCXquuwOWZvzAy0d+qI=;
	h=To:Subject:From:Message-Id:Date; b=jHKBTa68f0T78wAUM96bdaM90g5QpU39ABVOJHXQTZ1k+o7kDf9EEVvoL6KHWthgfwETTrVWUQJo9IR1T06oWKI0ZGGpMfVRrZrAHZMQlTQGtRSjTWIf/97ABoWJ4ribPt5KXLySbvMplMIySx7CVXj0ELgI9z2bil3YyrsfYJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooOeEx0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooOeEx0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD52C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778807433;
	bh=DnRv5GIVze0qayT1OMPo8BWVpCXquuwOWZvzAy0d+qI=;
	h=To:Subject:From:Date:From;
	b=ooOeEx0ikoPb5HowWTlaJ6Rhkv1tUvk7XJsRACfhUU0NoV+/PRblqhjuN6IoioxF3
	 wktuBmJfHtTheI8N0rulyXZCnNKN+7brCAfOeGJmuJvn/Le3Sd4wUzdInboNKm1Ah9
	 LLDfZlcdV+sLCj0MCEoKF6eP/unn1gYrb5zrPOFKNEF/SyyVMJTHdLFbdVNViRjklD
	 ehkWa8L+iZid0v2yJus2KAvZLEMojNBBzqmf/weGuQfty1IKTGuPI0ah+tClIRJD7n
	 cVrtemdFb8cGavVrY0bL9LCGg6rUnaD27w5MFHiLFpCvv+gSPioffQY6/dEFMLkdzY
	 dQzluAVz23DSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACABCD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880743368.7324.10398052342610991330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b07440b726e5ccfdb19567c1463737a0aed7638755cadf1f1d43e95c37d479
Date: Fri, 15 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778807433
