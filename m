Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F1243147
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765566774; cv=none; b=ul0i9jcoq8RLljhhUa1islGfKp8GG2LF/DrvzSlcmXGCeX37YS4sqWoMFoKdQXV0looKvV+a8qJ3WJFuNBwbRoVLoxeS3euaiuSA/ZxhJs2mZVjgUSvQTwZmioY+u7Z2PhExW9WJPL/LbOzGz+TGLVRbnj02vpfIhfVtuOvGBj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765566774; c=relaxed/simple;
	bh=OgTCNrpL0PcwfDgBdt4Tf5Ibz8xcq0w3cTNkej8cScw=;
	h=To:Subject:From:Message-Id:Date; b=RN0GYcPYZh0J/saOElK1Y8+EarQB6Tg5jRlpNuztBncC5QiQQ8cF3xtgUkq1WF6kD/74HPt2RGcpShCDE5eNOt+5qafUu46YltPJaVF5xDsP75kvGmF3j6uTuHjuS/OFU67/0ueLYtm+lAh4Ek1wWDTPOG2+p32uvnnK3qwvC10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgrP3bii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgrP3bii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3887C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765566773;
	bh=OgTCNrpL0PcwfDgBdt4Tf5Ibz8xcq0w3cTNkej8cScw=;
	h=To:Subject:From:Date:From;
	b=FgrP3biiIUJ0bzkRA56sOCm/yl2mb7ZdJ/FQfo+S0DLhkWifuxptC2guE6NfchqoM
	 AkGMVJKcPXp/ci9dACQLsEWoiFJTBg5s8TUJUJfBBPUX0mfVCbynNfa+kwC77hYYPn
	 O7BzzQIEHAIPRDZH8SD49XijJHmtz808bqFGafII2CbQ8UhFOgL5e3ydk71H8Aq2BY
	 cLYH1UnEw4rGWvhANnGFARj5dPC3zi0xbhjRii3UgDOJMjRlcQqFmNPKSB27Dwy+IG
	 cVhMh6H301yjMPc9wgZqP3xvSFUW2ypVQvv/ALzzF0WiGIxAShYDuojllcIVBlEjuw
	 QTh9OLNEmNOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC5D59D8E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556677358.22078.13512934048754266291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ebce308369e2280c8a1ea271faba6e9b40fe5dd57b517626f6ee2f79dacb00
Date: Fri, 12 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765566773
