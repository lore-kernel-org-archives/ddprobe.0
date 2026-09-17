Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F358517BA8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789654234; cv=none; b=MLxYCBfMJq/H2DjbD3XPWY0tF0Mi2nHNxp/9mR9BlY6mmk9YAARjqxgH7LMk2890wM+XGrMVQ8P9J2l3oKalMvxY4Qt2DDQSPgLrEBQwMBGYFaYBMzM6sZgOzq1DAHiK9wn1W12/URyDTm5OWBnT3xaeSyiw9kcF5IWlJATYYXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789654234; c=relaxed/simple;
	bh=MmNCURWBbpe3f+YqniMHhjaJZfYkkEaXwrsGofme4Ws=;
	h=To:Subject:From:Message-Id:Date; b=VC99TZnXThHukjGrNRHn05btCDN4bfby0xQGBjZr73x0DXzc8gB58jY2UpDn5ugh340x711Yu4PxGWsujuzYj3Y2H/09r/YtDXSEWVkc0tHp+v4VI0cezoAnekvyepcjCzmTCA/L7oMtg12D1ncmgW/N3jhpKj605cF8iikGr6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktf7jW3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktf7jW3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD078C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789654233;
	bh=MmNCURWBbpe3f+YqniMHhjaJZfYkkEaXwrsGofme4Ws=;
	h=To:Subject:From:Date:From;
	b=ktf7jW3QRMGf+LPfetr+6mzplg5kThYIZpbJjUm1282/rDKxi0tEzpNK0UDUUJb0H
	 ovOq2KyeNwayYjGOhAjoOug5kBldmM0GlBgIDJmj4I8cW78vc2C+Hpr3SITBkBLx0k
	 OwGLL8q/ZRPklclE7TgIJDuBoJfAMqmf0yyadgAcfoj18fUxbaF7hLClv9Ni6iAKxq
	 2NWnjGB2+dFNVVWLf9Y4re/P3D4FAenED0rJoFwKqvmr/H1moDXI+nVt1mp/RIPE/q
	 +dpvlj/9zIamLMnNdjTZK3etR/epOv+wPxjSTdgm1a5vWWoNS73d23ClV826BpDuxp
	 mDYBJ/4MhxEhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F6EC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965423373.29045.11595049007331742161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595b7a3e28a1c1f4ea41cd6be575ea2a7ac571dbb68d8f94b9abd83d3c36da2b
Date: Thu, 17 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789654233
