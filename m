Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0969B2253A5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753919995; cv=none; b=cR5yT8r16bQ3jJ5EjOdwv7QWCXGuOPI28VrNCqm8JAvgRNfpwVF7RfHKvUm7PaFynvcY6YP7uXvQZOj5fyta4fsG578nmERKgi8XToW6hXc7DEM9kPWKEE6HBiGVJWu+Bka79s1mvAVEw2KNsl8509dc7jOpIxLo6P3qq/F+duU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753919995; c=relaxed/simple;
	bh=3I6RMOJkYpGW5t2TPexY9C5yMWCeNQllpY5UmpkN/jo=;
	h=To:Subject:From:Message-Id:Date; b=F1KFFKV8Gbk5SJll0xDEY5c2+Aaq3SaqeTn2brcb5oWp6v9r0oDZ0Fyv84d3KntEdo0143TX2cIRJnWovylES+Hztv+n9mLW4RcTnquQcOlZNcGopK2UTJD6cRtl3+oublit4gSdX4MShLp59C40SPwSlhE5PEpe6OVhQ1v+wDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TT2Djria; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TT2Djria"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F48C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753919993;
	bh=3I6RMOJkYpGW5t2TPexY9C5yMWCeNQllpY5UmpkN/jo=;
	h=To:Subject:From:Date:From;
	b=TT2DjriaNNWUQLiKLxJCrYfAYpS/yzZnkU4FENJ2n+GAbNOO2i0WebCiQhudl6ChA
	 1u+j6PlALDOWChwNOtwcUUs1RjxILkKWJzFkk+3JQXr7MqacjMmlzR9aplth0cbxOq
	 UhK9WndnmyN5l42uNC9/Vg6oUzOVXTVBRLHA9QTHedCXm/9KQweiIMZn/wHGeboDin
	 AWBGfBrfbUfTpua9sJw23Zb4Gn5LDro1KqhEjfn3MZs9KpsKpXTNUSLMTT5BwPGsVl
	 4Ev+kD/hZiH8igXTnU2J64+llxiUPz+q33VBstbkIhtw3rp/ZQ6XnxxOlmiUTBCNIO
	 JQnwfUweOjhUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9355BC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391999358.28412.8482273889062541706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42523fdfcf57733953d53c9928607220df10be63f19a4a7bc5685ed961938e5f
Date: Wed, 30 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753919993
