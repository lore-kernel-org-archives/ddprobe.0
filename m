Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0EA155C97
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755945594; cv=none; b=VJ/PvrgNkV1utun/GTzpNglYRhI7o2hgn4CCqob5jd/w/CZ9qG4D9Cvfi7a1hWEXUraNUW6BoBJ0tA3VNHzVjeJWjn/AiOd5cxbsSzTQ2AFKTNAgSeQkCZ6F+nTNDjf/j+LBs63bAyD9g7R+HSf2kuqRfeFN4E5TzFIMIeX7iLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755945594; c=relaxed/simple;
	bh=pAaqq5i3Z7UCTX8hG2X6urai6fYmLBT6l69/DotCvmk=;
	h=To:Subject:From:Message-Id:Date; b=n2xqQvVZpGH03ccu1AJ/UORzP48sSH+jSXTMO7vuhufPHmhngZ3vHTgjFu+MOKWquf4Vtc88qUR4PfJhrpe46QrWVIQ57VIC2k0RdLZgw8Q/O3Jfd2lszF1zABDbTC7x4rS7+f8gdSdZpJ2HSo/GqzK7vHHv8zFdx25PihtBY8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnWuwO1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnWuwO1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06AFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755945593;
	bh=pAaqq5i3Z7UCTX8hG2X6urai6fYmLBT6l69/DotCvmk=;
	h=To:Subject:From:Date:From;
	b=FnWuwO1xr8LPGwf3jCg+//0SZ4AFc7ZTU3HFmBd29Wy3VrkEa9QaDjWyDxK3gXcVt
	 XsCks11sp+oR8YpED/K4ap8+bfik266doNC8jzyY0gdCv67y9fusqLECSonSckOsrE
	 KyCkS1ox2tq1oCbOCFUfDkK/bW4Mwg8BFD9omxO5hF/idIagvIj8Bg3BMovrIZHfjF
	 IOwJ1N6bTwEjWwDsPaXYw84jtxfsu8g3QYENGqdhRKng0UdxiBiaLA7aqQ7J4rj121
	 wVEQbErWicXUxG15/3vfSa9WCoClV1EGmRaTuBXWJMv+hZPchcLO22dtbs6QKFwmZB
	 FpkxIpUsZUPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077BCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594559357.15803.712602138357866116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed576ff5341f19b81f8a87aeed16e3497553ab59924e5164c9e86bbc68a3563
Date: Sat, 23 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755945593
