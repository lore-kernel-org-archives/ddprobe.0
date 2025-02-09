Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43913819
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739063754; cv=none; b=XbRoKGSfYuQIXt8+seaFwzCqo7JRvNf+6IcKH/qx5vsChDtnhewQzTvq9tfod6n7w5UPOQUH2V8E0OhwiVoVuteFjgiIp0kE64Y6j61L8goP6z0XrRGmYzpnBFyB2hq/isLjqQXkJNGITyJfxmEfpJUNec8RjThA90eG4Dmy1Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739063754; c=relaxed/simple;
	bh=Mml2QXcBc7/qUAB3opk6KP3NemsgNFKrvdyGeUu47fQ=;
	h=To:Subject:From:Message-Id:Date; b=PjwEftgpa7OsHIXUl7DTA/2yoR6siGVPtu8gVebgkqe8yrOMLY8euoACDb0+EmM/1thI/O5xLpHATqVEfNgj+o84mTuKfxiapYtmGyzyW/CUYAfWXyMrfHQJLWZYpryolOcGqsodXxQK0Nda4YXNz7/RhRzjriKnRkCyTupZ2FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AU5W5kJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AU5W5kJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB373C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739063753;
	bh=Mml2QXcBc7/qUAB3opk6KP3NemsgNFKrvdyGeUu47fQ=;
	h=To:Subject:From:Date:From;
	b=AU5W5kJjSKI7a//jsZRtCGuQU/QENJa/ICP5OSwSk5s1uIjrnXUcgMSzw2mkFqQUV
	 OjoVzBYlxS5VV8Lv742/22dBqkXebbBHWhhOvMznU8a4+dYs7Jf56YEUOoYxDhIRah
	 t00xi9nDqqDnWy7eB21QO/77l/3jMAkazOpsoEHeZ2dKXy7o7ZjnBAiOuxcQLgKjxe
	 kDKayAqFNAs6qHu2tdmsaXjyXCH9XFJ05h+VRrfFGp8K7S6jjoTV4UC9csRTF53Dk7
	 lE+494uLtzQ9D3IGphAjtOK1lA7DUBs6si9hR0FBDRcBryQGHaMnBd98ufFVSMzooz
	 K5h2/J4Ba1ZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546CC02198
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173906375358.31931.4613012181378596886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756a85865b4cb6a0994a47f253020e0c06835eb5a9a108368dfccbfd6ff2748b
Date: Sun, 09 Feb 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739063753
