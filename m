Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7E4313E15
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764931974; cv=none; b=eWxyOud1tIjRoCXDj6V8kYqUo6U1XRi2laAzT0pB2o11lDZjeW6E7R4wg2AudOw0n+dpsNCI9GNUJr70koRzkRysUsjTdNy7bXzemSZf5NurwA5fySTU2M1Dvhin3fZqg/U2M5EHxevqLFuB7ZMToHmhmQL4mXOnD10aTC0zdvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764931974; c=relaxed/simple;
	bh=K7KwnSSoxasYMt07C2gozwYxrKt+Igz7Z0ZC5tuVzRE=;
	h=To:Subject:From:Message-Id:Date; b=FEH4MstKbf6vbAJCRpyQGPJBdKPNYzcxQJ0PPus3bwF6i7TFbrrr5To2siHRAXMQZc5WYMCdMT60QkTkCZf9/KnulUVGuiMNl30UtsJrhKHQ2yS/sxLeMzRVR6XvAU3Ft5AsxA+T80kFhtidc4tKq68OsPmaqrWD2EGts75VmmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS7V8WsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS7V8WsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F02C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764931973;
	bh=K7KwnSSoxasYMt07C2gozwYxrKt+Igz7Z0ZC5tuVzRE=;
	h=To:Subject:From:Date:From;
	b=MS7V8WsKTeuCyZLgK4fpoE+Me84m/iG1KGFRaXR6kVTl8BBwWyeV+BW1lPBemXsAG
	 0XitB7etiYSigmRskxmn+swu+xah5pHZ4Z4Tgd79bDQLv3SRDxaY6F1Beim77Yumqc
	 nwd8a//CTITFRKNL7+JddstcuhED7TYV24X6mfpVZJ7VAlp8R5xdhu7Tb45akS8/Q5
	 0qbujjjpNvx9RXQMwYqT8Le3ZGHVQIozp0S0b8v7rJwysz9D8m+Fy6rk1M1Z/OWFSm
	 PKOTSzuh5mpY7ieUUZJ5l5h7XyWSVs36EoKcNclW463JLpdBWvb9pKMBMfkV2Vs5FL
	 Zy9Vk6v9SbvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985CCD2F7D1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493197361.20072.10276459959493770475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90275001ee9cb369ffd51fcd83d0e3a30bb109253f0913375df32f29108d40b6
Date: Fri, 05 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764931973
