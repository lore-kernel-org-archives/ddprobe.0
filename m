Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F94A16F265
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736867754; cv=none; b=EignjFYjF1/XCRqVfSSXuhIzHgvOGk4CVcxrVwd3y77LLJBMrx51YX9I13n8bgNlU15rDdTP/paCpXPDqqZOSCAiBdBDeLS1g2E63oaXhSJ4KhVcH7NcoTIHwECYFK1IWPWdblTloV2SF82iOMvM2KLXEFgJACYSu40YN/cealI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736867754; c=relaxed/simple;
	bh=RESbh+Gj2eDJstolN/B3XYIWP93g8KcvMnrl1cj2HDQ=;
	h=To:Subject:From:Message-Id:Date; b=q6HgXmE/KLTBPHwsEMPzcM3eTJZsw5JLcy3A2kEEo7L6Ej15CXe5qbuRNjYMU5k1+4jYuINTDnJoi6d4K8VY0tUDtclceT+LWRR31zpJMsvCc9te171ISdEXnWOhLB8p1Pj70SMs4RllL5NW8L/+jlnXanKzc7HCMQdufZSnHtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=us/D70g/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="us/D70g/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFE5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736867753;
	bh=RESbh+Gj2eDJstolN/B3XYIWP93g8KcvMnrl1cj2HDQ=;
	h=To:Subject:From:Date:From;
	b=us/D70g/HNn4fTfxinpJZg1oKkFoWwr8DOprLTw42L14VhB97VZG6rLDI37MNOiLE
	 f3wo2ztS0CsmM7HMKy50zxbMi/I+sZ0QC7JsFFEIupGZGrMoZ+1RzfX+iZcsT4XT9X
	 +e80GNNL2q4wkwOvrKy0RA3Daa6PSfx+GUGKPcHJaYtkYWloS1lPmO1aorNtYnAHeK
	 40vFwpJQlANlH4R9l/HU++vF1pLstXuJeou6hbmimszgh9m5NbT32DoAbM50osVv4O
	 JPbjIXDTiT9y4jNseSnof1A/bFZJu2B4ezWFVtmq/6SdGKfkCM2jKALpNbtcnSggoK
	 k2y+GDVFKK9tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AABE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686775359.20933.12700545431432828182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b985b450c3b51e45389d28885a5f4407fd671e3db5f2acc426df6b610dfdfbe1
Date: Tue, 14 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736867753
