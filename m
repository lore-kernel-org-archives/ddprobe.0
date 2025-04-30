Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32825224FA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746056394; cv=none; b=H/2Y21HVHr8aPbfJO0yn+2Vf90AtRrPXWaRuhdY6eaDRvvMAwM0XUNt9su1CJ344XtwtV3qXh/mnMWh2/bFOFHmEejtsoL3QuLe6Q7ahUHXFkrrzKQ2/wzUFJSRosBu2aRW4nlBrkBvjXMaBBTnyHtV9SAUHkuI2ZvfVMr1cZB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746056394; c=relaxed/simple;
	bh=90DbnQeCAN+03akaZM6u2Qq3//+i3hZ9r3wI1x+Mmlg=;
	h=To:Subject:From:Message-Id:Date; b=Vha5iwZ0dRAxbEWA3Wabp4fJm+kxd4yMVeFEoNRLuznGoaPFdEcToqH6TsfW5l3GiQ4n/j/eti8+4j/9Fm6ZZZ/c6I4RfSx0e1nUhS2sYk/cB25wVaow4Rqs1yEQ5VoEbYxqWkRjRkR65J/RhtTiirHAuMvm+lSfESmGaeyAF+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP/lbNMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP/lbNMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0109C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746056393;
	bh=90DbnQeCAN+03akaZM6u2Qq3//+i3hZ9r3wI1x+Mmlg=;
	h=To:Subject:From:Date:From;
	b=cP/lbNMa/DBIAsHzTriBDgD1dln/2MpAJjaAhUF2A51iQM2XmmrgwqfT9FB6ryGY5
	 JbmzAN7oDhB3quHdsjNo2dJ8KA1U6zTgUvjrHvVaPWKjXIEFsr/0gEImvvsNjmfGUm
	 fmZh4aK2TtrBuNGdVmWN0cnF++LHNy8n3fuwptzTidfZYoyZJSXfoTBzhowDP7SDt/
	 TPe6BpYO91czrmg8BE4ZDwBVD7XS0F7YMuFUropuWHwrCljQ8gGyQO5m2JPMH8Yd65
	 o1XEEkBVfZ1bFCPE2b2+ouWBxxx+wnbw/LSyVy+y0B4v06+OSzJ9VZLpGLUZ2MkQgw
	 nmJMoph79DsEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2BC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605639358.27170.8536599797816174208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee987c76e106e5b04c873532c9d7788b3108a773841fe7c33befa741d05d2fe7
Date: Wed, 30 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746056393
