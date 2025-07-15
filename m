Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DB3231849
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752569394; cv=none; b=oCOQbrlpBdqVyCWmzTGH3BHJZrqZklMmpJaZH8B4sE8Y+f6ZpQBfZHzY9uyEBZiEGHx1QzGyn5DSnwHXxmYQuZTuH0X+jqXmgOMboAYY+WOQvzYzuQ/ef2bOXLUefTCIzPZZ4AI9YbNFOvYM00Dq3cCnHYSIzSW/cEzn9XgadNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752569394; c=relaxed/simple;
	bh=GpyUZUrWTOMQauSFcUtM21uM2Bs4bWhMvSqFgaYjeog=;
	h=To:Subject:From:Message-Id:Date; b=lt8dc3cRbOlG0DcYqS4Eg9xdXkX1JSS4k2MPFZ/In4npY0NSeMJBsWMYx6A48h3gSFv9ZSq4r+d08JBgVonIQsRsDZOvMKKH3Ck0DFdmabRg24ypxntK2sAi6DUgXBNFIK2A2V7s3p2gTi64jByZhQWuZrNhMI5hdFiwBUC9Uhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdCdPeje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdCdPeje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5950C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752569393;
	bh=GpyUZUrWTOMQauSFcUtM21uM2Bs4bWhMvSqFgaYjeog=;
	h=To:Subject:From:Date:From;
	b=FdCdPejet8kfetv0Zgjwptp5bq4NENEH7x+Td+1T4Z6PzDttc/ZUHgT13f/av0+Gq
	 F9yM4ZgU5/mMh5SBeMCqRnhqY1bHoVOQBJWx4qCwdEVTtWr9+67JVYyipTDMwgoZR2
	 tai7g7PmE/U8nwYJoz+L8eWeOT1wUKj5qbN1I25O8HBIR21+kCXhEpt585WfSCw4bP
	 92OOUbuahUh4UzH50cmZ9YuNquITAu32WS7LvM4IWkCvSLJfiXkj32nW3EG9QvpfTZ
	 whaW35oFmjruEvW95UeZSPbvUwUa4B8zXhBCwRKVY6O8Y2B/aT87p4OPVy/U6mDEkz
	 Xe7WoZ+OBQl0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD7C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256939362.13633.14008878675317609199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389b5c4418a25659555d07830eddbf8663249e452cd608177c64c78b02aa4ed0
Date: Tue, 15 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752569393
