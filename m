Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489E26ED46
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767543834; cv=none; b=oFMbZGdoczE5vt6stONPTkxojEp8FmJAyUywwU53R8iVpBlwX5hkPmivy3a2sRhsALfrvqnJhvDhhay5UikdsQTk6rEddynKSdOtXxu8QdKBebc6aMel8h1lkENiANbZOGWpcCLxtyqmA0Ev7ndlUtoUZbhibAlN+rMk7V2h1HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767543834; c=relaxed/simple;
	bh=x85TenxSRNF2Wta1v3Wq2nnQQiOtncs5vy1Hm16TROc=;
	h=To:Subject:From:Message-Id:Date; b=CZZVyvYSid8gf5LASbCj9+44nsJx1BR3lpL/MCk1KUdGPratdJQjl/iyWsiG9NSK5Tbap/nwq4K9HlYCb7ToUmncvngJ57DngazdlFXRBEmslIdaTAq7iXCpco06a4cs4wIHVbgIzOglii/WsVJdLoyFh4RLi9URbKWaN13jKHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kfo18YqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kfo18YqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767543833;
	bh=x85TenxSRNF2Wta1v3Wq2nnQQiOtncs5vy1Hm16TROc=;
	h=To:Subject:From:Date:From;
	b=Kfo18YqOIUQ3h02tHZ5duVGahsw0hVged8i8GqbunMEpbN4oUxhx79i0Gu+y2/Z6s
	 UVL1gJEA4l66A1kLlbIA7mw9Fln57x3cEVY+uevUPXPGotUg3iqGkpU2WeFYkeahMc
	 4AX5CzHSgXtiHuOMPE+9XQXa0AMmp06ChMEmTqIoDK5E6pZ1fJbdz5/bsIQRENKupR
	 FXmbSXkCUWuc1OV8uchl7JelBwcuJIG1qWJGiLN0UaPg6UygTdkCrE1zeCj26N3exg
	 TcaYR+1/ACXG1/q502vz08UWtfGoWULOK3Dhk8BW14O/ef29Rp2krG55ugPwyItXgZ
	 4aNEaD/bDXCPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D0C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754383358.28328.9600286618995185288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a661e0ffac3bf5effb68132d3545567cacc1411803699cc9b42f82adafa2e0e3
Date: Sun, 04 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767543833
