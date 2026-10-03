Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147DD2E1EE0
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791038435; cv=none; b=TNf7yt4wlmkTViNkIg9ZKYyFiOSfjZOKlHibdv93lmNh7EmqFToY+Q1UIKJKXqS0Han/v2MYlvSY8VLnvaACDA6OkDqk+7GmTbGHs7Gp8nmwkdNZeSNwCD9inYOkcUwgPr0URucRYqjKrVI57/HOv2UWGoRSN/w11jqPY7loLlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791038435; c=relaxed/simple;
	bh=9Ss1Ne7FvVYwKeUnSzTVQMCgsum+4yEPrxRORm4AoIc=;
	h=To:Subject:From:Message-Id:Date; b=Zs5rVfdWTfamshH8vyYMYY4wgWedDUcDTu+mTfFXWCEJghFbgJ6w5czb1/G8muYGVH2xYE0Z9Picaa4rse91tev3p6R1jYEwn9sbNXNiBzDe3ayOT9cHOnrVNa996Ayt6oWVu0ZBmv5hOjZAKV+zCZ9lMcztFByu2JpDOU3R4vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXPhKbiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXPhKbiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA086C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791038433;
	bh=9Ss1Ne7FvVYwKeUnSzTVQMCgsum+4yEPrxRORm4AoIc=;
	h=To:Subject:From:Date:From;
	b=cXPhKbiXBnLQi3avUzsuxx1m6+c5w6UWOlas0z0wvUzUi/3ldCgQ5bgF7IiztncwV
	 J91EPicPez9FGVEcJMYyAFz3L/82PahQWdAKPrqnkg/jAuQNT7Ks4YAxG7bsT4cIYh
	 RAH1cMCgcwRhdlc0pH9IviKYOlKJMN8c0jyZs6kj+M0K6RC9K4Tz7y7U0dMGI+p8++
	 x8oHsli1U8WN/eyL8KLWNK0nogHSsm4HACxTCnfPUCGvwZKy+TgP3eOrYO27zzh/aR
	 2JhMUf3ufeAdroos78sVRroWwSi7d7buh0CNrBktEFfXEb0g7I5mLyrG1SDSZrUpSS
	 EQN/WAaz5zXnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CD0CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103843373.3182.8317490695265683834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1bf0be271dd70f63295d1fca3beed5f3d85aa9367f408c3fb45efff037e32d
Date: Sat, 03 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791038433
