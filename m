Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7B184A30
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738411554; cv=none; b=iJSKfd+rdHvLshmZI4+KUUd3iOOGv0Zwk4uHGWPfA87YedZQig4+Y+dzVLQaIPSarG8IAMAMilKwPmLaZ29GzlS6g4rw73X1YK5f91swP9tLsMAP36X1QBni70n1sZrFD2DJ5+OEbMwVT4Cpt7fDgwLhrWd3UTjr0ED9vBI6g54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738411554; c=relaxed/simple;
	bh=C4HEGFryNhrYffp+sW3bI12O8434lzJvinShJJshbrg=;
	h=To:Subject:From:Message-Id:Date; b=tnny4H7ZUtp717HFUQ9KYgvgTgIyM69l+cbuWHk1jvhulMwRpkHR0zFQOCdbj1I4iO4OKHsEmZw7kgyAaB5S1YyzkuPwehbWGAW1J7ro3Wy1EV40spINnrBcZbmhtlSFIDIJqLhW4owmbaJD2yVcTen3V2ZJzUrtyNCrJlyXt5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqvea7xA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqvea7xA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1852C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738411553;
	bh=C4HEGFryNhrYffp+sW3bI12O8434lzJvinShJJshbrg=;
	h=To:Subject:From:Date:From;
	b=Dqvea7xAJ4+Tre0KelPou2706+aDCNFraGYAR5sZuBfGf6EdpC/OgcsRPT3QHPiF7
	 C9J9fz9xQ+uyogGsh4fN7q8nbs6xrz/yOQfDRPy8q4yBOwjAGlvxTSbz6JbD8GFma0
	 EUe1hGNzMpzITB9oH9K4AkfmhS/GeoYazHsJisjQW+6vyYc2BP25oBm91YG+87oOwK
	 saji0V3XRy3DxByBGUWtjs5ph20APP+jn4V+DJEnWH/6lRvtFcLTFSi1ykRe951KdD
	 ivnHBcFLEeHg47RKjXxrUZ7Z1XDbCpNNthd/UAOnpDsmIaHDlGHwfobswvqzvYyPET
	 2qvDsbLhP8Dqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F3C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841155359.7491.10164981288378363849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076b53c14b7dca24d57d3054232cb47e3c787bc1319202de4693e3cb6e247527
Date: Sat, 01 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738411553
