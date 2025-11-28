Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398BF3A1DB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764305574; cv=none; b=LFGWQOr2das16E60nJUPFqauiApwwuETIXzLMCAMPXH3zH1H/1U4P7/7moYmokMfvowXJdYR4CoLnz6diGSq+HzCtXG/PXNTFeX7SpwurTSgYxnN8qmP75eUlfzPeGzKKAwAwwGmH3PM570fkMgDJ7XzttoKJ3FXL177HFbHzKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764305574; c=relaxed/simple;
	bh=2VZcVAolEjFeeO/qQ+eTVJMU6dBu8/oJkAFzFeZme1E=;
	h=To:Subject:From:Message-Id:Date; b=bhommC9rzpNU2ksIEK4USRv67FXm20tMeYV89OOcGOtdW1PpNBoLz0eNI94xiY7MoWlWWITRMb7201JDyHaf/Sh28zlTpJOnCsWOPKXjfoMD0HoOJ8bEA89m20sJ0QM6hDPkfSK2rhesxZPHChy16xhRVqu4E7Aw9xxeX3Q7ZJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ni+mSsLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ni+mSsLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA75C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764305573;
	bh=2VZcVAolEjFeeO/qQ+eTVJMU6dBu8/oJkAFzFeZme1E=;
	h=To:Subject:From:Date:From;
	b=Ni+mSsLj6gWdEi+v8pixrwFcy4gLxsEglE3VZgcIqMxXoOWu18vwpnL245aXuUjGt
	 nKIe8yWSetGeaWfsX0VjPuzWwAYuqEfD78CFkpbrqkmAnefnc2kBbmu4bynt1TN9eK
	 7H+7o6KRP20PTtFtdu6DUreEWUdpOLxGw3G+Lm22qJYMnToPw9Wc3knLPW6o3wXlIy
	 TcxjHy+Dnaj6Lho1hcsoDO88g1ghDcGGQVflMV+RripbRfa2hZ2n45aXpRdc4wW1I1
	 LwPPNdNEifdwjJdJJ3s4TLh46wGmmFXRBoX6Wb9JlXFCjnk/ev4Lv6jj8MLYWf72eh
	 9TuWKYNN/GXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98308D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430557359.4790.5527984807334814152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f87d6d8e0ceacb73c531824223e15fdc55013db3a2df572906995c7d2c5589
Date: Fri, 28 Nov 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764305573
