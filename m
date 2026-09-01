Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45137346A0A
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788235234; cv=none; b=K4pDF1sTFHOR9RGj2XMsZzy+wiJ9NkmVe8AE043c4HusBrCufRJLJWtYKsdPaN/YXfi7EnPh5UoRU2PN+GnFCLVJAqzz33qiUonyQ8SiAdc0esoR9QLMyyIhi/N38McaPxdjZRELzh8HxeM6LJVwlLZv3yF6DQOT9Rpxn5y5mTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788235234; c=relaxed/simple;
	bh=YZcn90Wamkx1hNM9RCrkQ9NdS6kO2NQ+CB8GrXEaahk=;
	h=To:Subject:From:Message-Id:Date; b=S17YrfW9VrS3dFq0TOM/R8OL1MGzEypTqNe+idgkHwUyS2YcxMgt3aSKDwFz80E1I9DsO2fhcYBMcwa1cKf/qHuwZN6/0jKj+mQzXYh/jCiGJY4o7CQ0erDK3eI3AnmYoGqA2SzrnBPun1nOVPkrh+LSSEuFyK9mEZFo5GycAwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvZ0tBBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvZ0tBBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE653C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788235233;
	bh=YZcn90Wamkx1hNM9RCrkQ9NdS6kO2NQ+CB8GrXEaahk=;
	h=To:Subject:From:Date:From;
	b=hvZ0tBBhF6Dd8FT/4bGlbHpm4iT6jEYDhf4P0TGlOlGd+zHCO52Bbd6sMy+gM57ht
	 vHWhPMivHaQrqF0yp8ETgzGE38W92tZLTmjBN9O8A2BNRPQG6ycxK2LgSyHRv/e7UR
	 U2ehFi+2FEj3tlj8KU+JOw500wlD5uBw8I81pL2JDuBXOtdyZ3m0Zzq6bz1vOGwmvu
	 hHPE1J33SR5ujJp9Dv8vNrXQyYz3TNIJy9PpEu0q1EZHiWyRM9fNXypc/JS5xnr/mg
	 vuWhpzL1AZm45RVlWckB5YNcZgcLoLwGtwm3vh1yj1fqzwU1r4GXpolFwkSGcurl+0
	 zX1CxSpgqhHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB7DC61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823523368.18655.10309537613009132326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48570176bc0bbbccebc6a8d59c4ec35f042c13f6d0e36dd6806fe7f1f8c91d80
Date: Tue, 01 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788235233
