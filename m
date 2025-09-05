Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C356296BB7
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757088594; cv=none; b=YEz1MsFKwV7SHoQGCDYC5vG08EapV/gqsA7QjUsXtAec2o7AcR6pOO9A4QUq2LhQWqQcPX/r0lIqRiqcP2XPFBwMARJwrGn30TQqeNzMJ3Pj6lnXWS3vkFsfxT9TccOY0ijHEM6U3gXvsSAtihE/T7DsGULVobFrc/dnXlzQfjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757088594; c=relaxed/simple;
	bh=MmQbq3DEN89SeL1b2HV4cYOPn5/JAJfSWL4mh8h3rB4=;
	h=To:Subject:From:Message-Id:Date; b=Wl+ka5zWPKerw3T4vkHsHQhdBwoWTgqOf/IlJgnkgSbObWR3uHogDMAbfsohAp6rtKy11arM9V6nM7LHUJ0sRurSnYBPB6UZX1KopglakYGYMCZ/qZEtw/af0kyyKLnO5k/263OBIUcXGyq0iU8TtSIMNFL9mN+7Rgn4yR9lfUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPgWWTnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPgWWTnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1800C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757088593;
	bh=MmQbq3DEN89SeL1b2HV4cYOPn5/JAJfSWL4mh8h3rB4=;
	h=To:Subject:From:Date:From;
	b=WPgWWTnFxickqmTrN3IMR2LkCEyOM7SgXG4fazTb5nPy7Bgk+U9TzmK5CjkKm8gqk
	 4GSddZRqsZrTsiOh/DcWvT9yn52082iJ9FZ80XWmeHPP7//5hCQWHeDIy/hMkomStb
	 JOhYQX6hDHf+yV8xtJQJVQZ7CRf7vTqG9F3F8l2GOdx1sbmYXYD+353hGhzb3Vaomy
	 AvOF1+t6ZvPPiqfwEBZzOuAihiItX68JXLykxGDSU8xb4uGpQpgM8PcALe6WLel3+C
	 NaWqPNreYVcs2A7+ipv3eIP/7T9sBQIh00COwn2o26si/xrn9c2AKx3G/LstaP6Yxm
	 mJ7qBsty77U8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2FCA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708859358.6998.8529190226434326927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211215a578aa38c6264c3b66a4e63f9b4cac58034948655dec02613a220ad7d9
Date: Fri, 05 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757088593
