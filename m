Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2272314A84
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722720354; cv=none; b=Fxfl79ISyppn5Th4L1e4jx+VH53k63nUoEKK+Afjdk0xNi22r+bxTE0bjYpl1wsJAP5kbchoEj5WEt7QY1OLOU5HwT0znu9RGFNQJa4KrdKjnNqXZR8arJB6UHFZ3B+46U6A0mWo2Ng0JK1D9RjV0pFV3XnJajlYuP0GocE9g1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722720354; c=relaxed/simple;
	bh=Ix2pKI7EFnGVwRVlF74hbIoKWez7A59W78kMEWj+aoY=;
	h=To:Subject:From:Message-Id:Date; b=E4WKAt+SHZL5+9K/kDhW4WeGJciUw2RVZ3cDhyxSxKEqCTeYp7OjmCZL7uKZI5VeCDhEdrlO2HAYr34m3y5sslod0kQmwqLGBpskGq05AjV+tq2ln+ylM9djoQ1ewtjHATEp8OOJmTc+pSrJBukgifC4032oBvaQkZQrcu6F5YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lY/ok4a0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lY/ok4a0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A769BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722720353;
	bh=Ix2pKI7EFnGVwRVlF74hbIoKWez7A59W78kMEWj+aoY=;
	h=To:Subject:From:Date:From;
	b=lY/ok4a0HjpnGWAdYtt76sSloIzMFk9wCnUdpe4PVCoG4997jf73ouHQ1GeGvVD2G
	 yPPuyl2bdsdOBDhiSi+5rUnY+hgrEPvfnchehX91/OvMU+C1kOREQXs0x0ZE7VG8xF
	 CF/BpC8HV6tvNHaFtIBTVatVqRk+7KLsser82AQSXmavFBvSGNHNkjNVbqyWoIz6PP
	 LHE7OkLvWCK6vXwuHYQs1wgNnnQy7vSX790WnmogwxgUbkbvoYytAzzY0p/ZqHLB8G
	 zkJKO7uCwXl3S/duDHmAqd0tXNvO0z4t4EeemgGNxAKOQMGGSUVzS0IVaxjHWz+k0k
	 iFvYB+vu440rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9548DC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272035358.17599.5543250501822182635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00eff4dfcd45bb95f8c4e190ccb31679a3b56945a3bd5db90b28ee16f05fba7e
Date: Sat, 03 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722720353
