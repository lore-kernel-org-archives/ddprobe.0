Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E7123C9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734826554; cv=none; b=JIYFEiTbtJ2VnxyfJm+aRvOXuu03zGqXgNWIy7PAwpZpxuJ9hooyLh+l9e+CWUS5C8he/JH1GsK9zmgOfMsnAGvqUekK2X3lSp2cUyHrVhO0YuPdr276IpPbp7xnnPTH3RhtID2tAINGgDL1hJmyQh3d96K+NHNRoOsLIUwumFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734826554; c=relaxed/simple;
	bh=ualVPG38v7OXycotd++Deh3PQfLNDFVdYxIlw258JDw=;
	h=To:Subject:From:Message-Id:Date; b=W5ZRQ0M0SKTmNcDkmjYw7Qwbh6FoQyyHMBkHG/bT1JL52vbDZxcuAORdBV9I4Nwzl/7WhrilOFNA921nxe1yhyAbpjFmK57s6EGlkNxvBBNAapgZgPIiXc1cNsPek7bYdq6iwEkuRPBrQCrSn+uwxgqYymGgJAhPyeMLh3KHsNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if/xFV57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if/xFV57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A354DC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734826553;
	bh=ualVPG38v7OXycotd++Deh3PQfLNDFVdYxIlw258JDw=;
	h=To:Subject:From:Date:From;
	b=if/xFV57a+HjD+ucWbrjl+325gPA6L+t9DOVqxZf6iHSh9AnzPtY7NukENKLl8wEW
	 rUH1OxP8UY27jijDYXGnnbdTd3IIbnwf7c6JIcCOaCFfopLyba+082fEkUwJrlL1c6
	 lsrpuqa1dnWbQf1zZEia4ZEj9w2rUqB52iiDJDldY61aWXdHNrj70RpIibD0een4/y
	 jq7Mb4T1gdROB6EnM+g5RhgDEE8PwHOsIqUUVyh1au2+U4RvRhEM1S1SiMi7Ooj9dZ
	 o5JauGX/yBQwLmlJkUqHrDZTQYoHP6Tz0TW6oQ4XzvjfsxveFGyDCt0Ke5jY1GKISl
	 X9xeJMYu+9PoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9411AE7718D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482655359.4007.8334909429470846936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d40529563d56d539d4208b29d5b3cfc776814aac853a38224d0dac292f21198d
Date: Sun, 22 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734826553
