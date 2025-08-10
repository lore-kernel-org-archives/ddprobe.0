Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2631B1531F9
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754791795; cv=none; b=UCEsZU76/YqhZavygXDKCefXB4Lt5Lexm9GZ1essrJ5hz95IZDPxyaYSnjcDbGZr7Mt8BoWjkk492D5K0FCsGsRAfs3Mb3iqimRgtnONTpISF7fdygZtkt223SRIm4ZAKwpheJ8TwJVLCzcgeJ8UXmnPZjK5NtG5jTZfm4TUtdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754791795; c=relaxed/simple;
	bh=Y+aDUSGKt8Lh1OgzlUVSXfvj06PvU1B6pU8/zpyg9C0=;
	h=To:Subject:From:Message-Id:Date; b=IX0lN0fi1yUs2s7Pjfj/yZ1yWWcit3eKjdN+U8IBIqCcup2qUJyq3GcgzRjE4Chjk5o85Ev6M7A2007kxts20K4zPxC4CEAF4NGS8fwexNtT7rc3oZmqqMNJs19I/x+z+Pq2Tk7GExzhtlRXEOy639oUAOH3dPAMM/07azaZVyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q38Cz6Qc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q38Cz6Qc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0818C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754791793;
	bh=Y+aDUSGKt8Lh1OgzlUVSXfvj06PvU1B6pU8/zpyg9C0=;
	h=To:Subject:From:Date:From;
	b=Q38Cz6Qcmuy6174A1OrTGTKiqkz1BoG8CO64CgnmNQ0qsMsr5ZfvLKh/v4pyJNKJL
	 6JtsRaIgaXgL16clf1dEQzXCRR/QqfO+JsND2sWfZfmMQev1/k0rdLXR44MILYEDV2
	 ocTZEJ/Pj8RWZ9QDN421FWCCoOuN7VgktnQfs1LahvljiU9LvlhCyhmmX/bveW7uGy
	 VSwr5fOnsXEjHzlNqlm/zyUFt+SZd9DAWTV6fqw5+j1ab/fQSgm81uHcDv/sPOTJ/e
	 XcF0jq6vIHkPoUCXMSJOKWdOltZKM0jrbee3lWBT+kGL/VUv/OLX3RJCEbWJn0q24F
	 BmxpWvBXMYtNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917FFC87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479179357.27589.7808091004184413340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1943db5d37f293fbe915628629bc4c08faa28f953cdab9b95a4e8cf702ea6f1a
Date: Sun, 10 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754791793
