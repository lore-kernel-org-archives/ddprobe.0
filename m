Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9F035BDC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772839494; cv=none; b=ceoyMm8vilKC/fAI+FLthX81kTL5fHlcc8W+nhzviHazr9nCxze7SIjnTDkZ/a1J4yr0JharIwyjxTAJ7oZGJTbVhw/V7V3hKLzUqJ6XMSQz98tyDT88jG8kF9WHBuxqVguRPtcQgTw0hBO1TMBlUq4Itw17f1fAlqznQ52WkJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772839494; c=relaxed/simple;
	bh=TZR7ZgRUOX0fd0QPSzKoryFDVd+32tTxDxD4Ts7oQZs=;
	h=To:Subject:From:Message-Id:Date; b=ePkzxPuUVgBHMjU90hrsCWEiZihMQx8trZ7VNcdZNErikjLDNuwWP5VMIHTqtuiMqCqb24O/9QOMxIbGGUaMPtVfWc8lcDdQiiHNsk1xI4WGF8J/otC/0pbYLGTsj4qJdUzrzgpMEChPSukguH4dz8GD6jiCijdqDyxMOANmnPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nav6Ma6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nav6Ma6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2E3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772839493;
	bh=TZR7ZgRUOX0fd0QPSzKoryFDVd+32tTxDxD4Ts7oQZs=;
	h=To:Subject:From:Date:From;
	b=Nav6Ma6NmD0hfRi9A97JdwCgXzzZ11/van9faid7WyNcp2+Tpmk/yzUAMO/RDTfl8
	 MGH/tM4WpE3MzMoRrZ9PLtetY2TD6RiQJAI/uQHwWqKBl43ijhfR1OzrTneCz+U6bQ
	 a/2tREKmZ3S1A+r2itjmJ9DhMVnXxgz1+SNqRwxEgDuDRmWU2u94bcWfzcUy+1e134
	 wO5R1gmWIpWY1sVooGcDbuu0ipkEnmArU+Rb73X07CZtOLBQmnvzVRP6YwHJvxMxEn
	 pq8c7vR0oIhQSwiioeWdn9rpJ6PFHZ64rSjO98Wovlb+7JL5I4QtzPglFXzLqH8me3
	 OM/cAjwWCs48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078AFC9EC1
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283949358.19141.13510949058429498026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7739c28df26196b6d85b6f4f112c6c683f4dc8ff2a26014209a275b0f69c8e7d
Date: Fri, 06 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772839493
