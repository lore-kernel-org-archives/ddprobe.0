Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B331E2861
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723032954; cv=none; b=ayryD8b+Y+594jj0tWLnc3GbbzYj60qpqNUDH+VKOgpSO6lfcjria+KvV3GAGTasOyyarwcedR3Gr3JjYECnAHfVY50xqHXz0s0+hzfllEmq4nY+91WDvAg9JvqszWPaHPuFmNwWtIY9YEymq7sgqblhDGfKRLa84a8s0kUSIHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723032954; c=relaxed/simple;
	bh=oL8QTdb4ZbDMqb4+4+VRsKHkrA7e6T6auldSUbdAKno=;
	h=To:Subject:From:Message-Id:Date; b=s62fMCLUITLRaV+DbMdzKgn21DWaglhyNG9Cw/+zCmXE+hiS0Qmv6CS50B9aD8NWxsbaMsobTtQKBbz2ma5J4Tz8XQoWAFcudKmU4WEURaohTguXoRAmfEESfK07G2DY4tgA0Sus64m59EN4Z8P53PcgIMS8oXlzojdsB8v5Oq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwnaX7hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwnaX7hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA0C4AF0E
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723032953;
	bh=oL8QTdb4ZbDMqb4+4+VRsKHkrA7e6T6auldSUbdAKno=;
	h=To:Subject:From:Date:From;
	b=PwnaX7hpiMLCdpJ8Db3fNOEMKa66bHlSIx7u2M0zJ1IXw3zC2zh9Q651OHOHkyRcl
	 8ML0rsrl4uH5b6jyIwLvffgAS8bzr1Lp0MFAfZEWzYtabG+VYUtmWIubnLnTNkcT9q
	 9/upwlIliqxGfKCa50/rTBE5qpbtzNdq5oqh4pQ30dnPpC4TObcN26mEa4lROGsUgp
	 Gq6ZslWEAWa8XFPR1fUT+5mBm1+26JPQu8e6O4GsZipJDSrbReIltUNY2lV8fgRoqM
	 JGHoK31IzK3HKD4PXrSR0Oc4KbC1j9oqKQ/ccR+5Souwv7IDiNWZDp0YoenGxcnTDw
	 H+hWZU/KwiJ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B59C52D73
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303295358.8827.10949776005106409665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dff88594df18d7ff545557cb6c0bfee94e6acd87d657f85a24df6428b7d96ed
Date: Wed, 07 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723032953
