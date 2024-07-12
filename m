Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2821411E0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720784903; cv=none; b=QYe/gMhob/g7eloqOdmVmpmj96swfn3EsK3K8PGXfmy0SnLo9y0wr6TzwQFYXjKRxOCfwKuxBQXxXcCZ8Lgu07S3GCxdR/SXa4p+W00PBVXCutJot4Les6PbHuC6uR9ZIK99da3DaVUqSFR0UX3sr4limREmGAwZmH3i6OJ1CmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720784903; c=relaxed/simple;
	bh=z0Yo/Msy0p218se964EoUBbUc6Tl0TM8cpCsgYQRj2A=;
	h=To:Subject:From:Message-Id:Date; b=PGci/ZR6FdetAdZPGDaRRjTDKUgymHvv17rjubZQyB5KCA+WuaRIoCUfLIbsBmUjHAHanQYxm0tjlhwzpjezslItQ+VY/zVXK/UShFKRcB4ruz83c2dR8SiDrdwOj+rzbYPNuz0yqQ9YIqzsTOJqlXbRna6+oOsVaXBm+WsPVv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pw7Gt3Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pw7Gt3Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EC0C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720784902;
	bh=z0Yo/Msy0p218se964EoUBbUc6Tl0TM8cpCsgYQRj2A=;
	h=To:Subject:From:Date:From;
	b=pw7Gt3Y3GO0OBgZuWIUESwrjgo3xxqw09180sNnoRSHR4w8/Yx+bcBhNXr0K5JCpw
	 jUIE4MqKs96ch3hWxvcNouYSO2T1MCYMUoI7q6B7kGlM+GSJMvepzYT3y5FA5xIIaI
	 sogskE816V8hT1nNknUjutccUknoxX7RSNGb3lJ9bX/YYfFjkE1DfhwNeOV9abCygz
	 dpLkUUAjzXDB0aFDzWUgtP2Les3bVyAq232iZwobK7VCb+0P0rol3vfjsDLsoA4Jo2
	 8tLvdlbdWKcy/AKuTCoS55eVy1r/ATBgj82Bzsw0f4jTa39mAQCsLX5NX7I15teF9s
	 uge18b0cZdIPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD97DC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078490282.2281.15226608044886454967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95c7187aef67acd6159f039f298826094e62f754428f0a4fc7f0d00665dfa43
Date: Fri, 12 Jul 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720784902
