Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65638560ADF
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791996034; cv=none; b=sEDlVOdMXaepI+vwghcuYiKp7sEbKDZ3p8iQ5EqBc7AAjk8F9al4sWJelKVVWI19a62JMNHUIMqp5jtMIjYXP++x3QGoqhrBfLstQ15I7kG+YBijud/QxNFt2/W5nlkHLX1+aKCKzTMH38YGhlnWwLVs8GPfi9PcYi6tuJUqMmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791996034; c=relaxed/simple;
	bh=nGVhylHpl41W0CdyFoV49Q01b5844Fpl07nyeKfFKq8=;
	h=To:Subject:From:Message-Id:Date; b=GEHptJfheAqC8n7kxXH8Zo7gU1gJVBsO0ylPtJgKGSwebPrtgRfmC6syNiBeSybjg8bL1nDFFitNQ+n2kGHlc5AGT13K/gUoA9x3Yy4C0eCKtUgLrlS9oIw8CUhnpOnu4ctZHG1E/qu9mKZvdFDbLPby4F3NunAVCw2Vs0hsJas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jjh7t8k1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jjh7t8k1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29AEC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791996033;
	bh=nGVhylHpl41W0CdyFoV49Q01b5844Fpl07nyeKfFKq8=;
	h=To:Subject:From:Date:From;
	b=Jjh7t8k1LlxlsAYJwI3cnjdHA7cm9jKnPn/GAiNaorh1EajkQ/kYEy8+9qCftmZdD
	 qAPEReVGbPWZ/T5Jv8ZB/G6yvuuNXzdJokcLZuhThbsMbROye/1L5qgf5QCrooA15o
	 eNr1LnvWcXOgZIszJgujkat6p2K3VA0DN2TizBCZjXBZ8obUT+mO1z7fHzNSZNgVbG
	 FobNUeIpv4IMX2xO4QbTypKJHCcdlo9bHavtPv/ZoeLRy8wQKeUbNqgSy3Swo8GzJV
	 KsWLcZsy2HSuVKPMc8N+sBtFCgwGjCG3oS+LZDM/getRzQKsvi+vZA3dzGg2jKqk08
	 e5baHdwpFv0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCDFCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199603370.12184.13362861600471962774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926933e8b4e1191ce92babd9698f88540baf751a5d0850d831f9a94ff8f9e10b
Date: Wed, 14 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791996033
