Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4506C1F4C84
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743060594; cv=none; b=G+sigV1qTlC5dsRDgFSwRzzFp1h+zYHxZO7gVZXTTdX+tYagaTPSeVsiYO/N7tTj7dWdv9eCihfylV9Ye53hLzUZh1MpWF+HhEF+LanF2DYVJRvd9XdQMG9QH2hOFrhuJHPjBEaBEYE4IvF922WSJF9stn68v+Riwpx5uNwVYTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743060594; c=relaxed/simple;
	bh=ndjmJuJptONWWSJ0JvO7sU8mw+BLm1MsN5jzCAtNRGA=;
	h=To:Subject:From:Message-Id:Date; b=YFWljm89DTrPlAxE5ajkqOhdeKMMXJhTMlF/BjfLCOFIyaSaH0spzK9GQYmebcFiDjhgJeqy8V2BomEsEVFl8JHR/mgM6CWmKW+/SvirgzDscRd8ykfJQs0KhiMevePgkLdNcmqvT97TLBUMSqadiEcIgVIc3Qd1Hk1tXFhdlx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu+0BElb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu+0BElb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDADBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743060593;
	bh=ndjmJuJptONWWSJ0JvO7sU8mw+BLm1MsN5jzCAtNRGA=;
	h=To:Subject:From:Date:From;
	b=Eu+0BElbS70/telpxIWun/GEbR4fHBMtQ7JB+ysl0qp5aMrkY1vTwpFzuMNp/aj8u
	 ZwwCY7wfZEhEdxG1DhUQyL6Gvo+uCrURThnPcSA8pz3gwoIbIdC6OG2qufTIz0eh1r
	 KiwdazzpGPhGAkKWQWke/XBuaMl6+a7PhclV2h57cThIdBt2rYuj1iCqRYsDhs9XTB
	 Kf/VTFOoyahI6YSZdIbQ9MQMVAJtEwRHl3oZPVQR6GbR2KE5KE/kEFAlcGMNLTjoxa
	 FHWj5eU/PN6QaYQgRu1jyNG6mdxKJoXBuh8d6/pddsbIIcgNmdbnr6PhdCW8/UEWGR
	 MmiqUk1HWl7tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E8AC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306059367.29849.15890589051800686765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0952a192878e1c14360b2e682e4725a12224e0ff26bcc5b9d5effd15922f2ee
Date: Thu, 27 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743060593
