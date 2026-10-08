Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5159A40F721
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791463234; cv=none; b=EItaH87m4qvzevLy/csWXsgup+YTnuYmuKEBVshM4T8YxQ5WK7lvK5AyCR2pI2tBP+2+mgSfkFc3yHL0FbkYR4Z+1mx9VS2e8ZldTabBgyvMuHRZT8NS5ouIFdTE9j3tceN9FDdo5Qpw/XLmRayUzZ8Weq2Jl+SLg/HiYOdMZGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791463234; c=relaxed/simple;
	bh=GqeYfm+FKPQhuaC8Pi42lPNEfcGRMsWMjGE3JwxyIZU=;
	h=To:Subject:From:Message-Id:Date; b=DRz3LHg2X54dRI1tPnNL+L+YSIs/Tt6YtxcfMWOtZeIJgeqemQqcGkdUfdyaPoekhlv6u28dEj/hQ6WWOHMTynmb6O0UBkbJmd/Zwqs+K9/yLIK0FEKBC3VY0pUcE11AaZHT34iABUSQVHiilTTgDAs3srbh8hluxvA6WWvdbt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1oGiBKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1oGiBKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7F8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791463233;
	bh=GqeYfm+FKPQhuaC8Pi42lPNEfcGRMsWMjGE3JwxyIZU=;
	h=To:Subject:From:Date:From;
	b=M1oGiBKkQnL4dKWRuQ8DKaHJprzpXVBx8DIVegwRJ6DiAMkvqJsXyW/6rT4Rs6ZfK
	 5wD6j7zx+BSFodQYKK7GHA4amw9yG2cfZXU4yoys2X72jyrQW2RoE9q5kkuF0qSmbo
	 i4AEAq7c1hCToCPyhnyqDF+9pa8AdqGAsdQEULwZW5yZfFSh+0u2hvg6Yze7kr8o3g
	 yDj8Ec3P+GcIEo01ynIVjisRCaBnXelapb7hOS6FxVE91Z5bQ/HdmUg414qzf8CGqn
	 L7+OW7DCv+66weaOBquOo/CdxhmARZBkaowCPzDVEqbR+9E4KmasUiv64TTGV2Ovj2
	 vyib7QBFxRD4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB92CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146323368.28504.16588427659970561096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc8600f06e227253c1a1d846f58ae696e1d49058f37f056168e0125b923bd61
Date: Thu, 08 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791463233
