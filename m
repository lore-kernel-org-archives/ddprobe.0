Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43381917D6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738016154; cv=none; b=b1Wf1qmebpNP8TObTftYoFI2ZK6oLDGkc/MA21n83qnm3K/xGD+wCafKJ9QuBCooQDhkqL+Emzg9I0KSzaYqwffQwpWMgSWLUvHZxr6KKZylJYks5kQoO+S58oDR0V8gYtgnMwetodTELgGw8xhTaX64AD8VA/28OLcgSI+qAZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738016154; c=relaxed/simple;
	bh=CkDRrxFFUkMRpR6YcJdhu05ftldz6EGwOrOWsP81Bfk=;
	h=To:Subject:From:Message-Id:Date; b=AEAVy8KSnWd5TNlP6KseY5ibmk+xNOL9l1d5vJCnlnIYtjeE9lXolrCRZIXdAhPx/l2f8XZKS6ln8CTI3dGQZ+CYmxMi8bv6qMd3OepFuvKzmSQAG6sAxLjJ4s38OEc+ojXmoHUCONB+rmIV3z1Jug1TKlgOxBwms+sN+PWl9nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYNtgscq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYNtgscq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B747EC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738016153;
	bh=CkDRrxFFUkMRpR6YcJdhu05ftldz6EGwOrOWsP81Bfk=;
	h=To:Subject:From:Date:From;
	b=NYNtgscq/m6n9OdiM/n9/Ik7zyrnR9oxx3EqH5XO+srAO2VKZC86b1/T9ZeGS97wP
	 TPwpkMozUYoLOFPCCtqsSMAj8mNMlNn3+sQht854jFPeRpD6/jVNPU5kX7mrCC6bDQ
	 c0M/b2bHq3+uAX65RmSCsed6zCqO1ScKULjLNg11dZkuK7DbnxzNj/XB2IcoxRnph0
	 teKamsvMC6wtvm1464cJ+PB1PVqxfVFNfKv+bUcTfeLxpTTQpTHhJANQ47ylnTrPPn
	 erMH6gFje3prx7e08pIpP8vO3tUpt/nRykX61jk1LDk2+ka10WgHNTKJ5OFr3MvJwf
	 kSYjP+HOsFk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA22C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801615363.15778.12758606079140666893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74629a6520a0a0b77f0fd560c455cee904ea84d54a1bc07cab71256af81deb3f
Date: Mon, 27 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738016153
