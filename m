Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6050C48787
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713785423; cv=none; b=IsWOuKVSDwcJi6HzjA7z2jEBXF1Dv/IIci1LKe2zJGwuLM+Sf7RZ2EwakNOq7SM9IEAOkCR2nTCoZ+yi141Sgp07M/s9NcmeDbIC5wXBf7WdyYDdv5TnhbRlNm3b8J48rXIk6ZgRNT+Ho2HZx8DG4g+awzepQxU828EiNDt6/Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713785423; c=relaxed/simple;
	bh=aEnaVpLVo7VIUI9PwdhyYFTN2kJjsRPruWNF8Xaicnk=;
	h=To:Subject:From:Message-Id:Date; b=lB2RPqHYNavE0veIOLKp5HBnDdoz9Ek996zEYMVh93ZmMoVgvKlPNfowEglc9JfFNZn76HrlYit1f1RKzUxqK1NearL8eZZpoMMS9z+Y+1N5SrSFAnlPJ4ZVu8WgfoexvnqRuox+M2Atse2BrGgFPXPxXubaDSHlHyXTil8e1uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EijBmDAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EijBmDAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CADC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713785422;
	bh=aEnaVpLVo7VIUI9PwdhyYFTN2kJjsRPruWNF8Xaicnk=;
	h=To:Subject:From:Date:From;
	b=EijBmDAwgquMLMolqof7GIunt4H7IswFkaOIhwX6SJaxyn1rArr3q4sN0N4eTF8O6
	 BSqt/oC3hbyHUQk2PMzAOE9BFMI6QxLdH3sLdI7s69i+QHYrE9ivh+N7ajAtO1S/dY
	 23bRM1oRAvdoxXGG8shC0hXtLvs9E3psAc0RH8/N15h1ErwjYY2m4eyCL/z2wRwd/7
	 9R8bGxYT/ez8+hm2wRWdlllvtgnZ5RqEQyLN9w4VG9bmLYY1mdqVdAqgT//Kr8evL9
	 L5DBa5rZm8HfbtsShlCBFCnJAwBWjDJs/SL9vvbRz1Nm6WL13fpwhOK1NC30f9uPTW
	 FXBpw0K1xTYdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0B0C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 11:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378542283.23238.11574746197938368919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1121c7497884b2c02250ca1cfc1f798ca5c45be5b785be968c91d8074917d372
Date: Mon, 22 Apr 2024 11:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713785422
