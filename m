Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511908479
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738971354; cv=none; b=Lc3vz4AlRCHKTP2lfQL/0U2AjdHnpixSLBThkicGYy0wxiBQ+Ic5aA2x+XClcgvYhH3lozsln3qIIclaKcFVM9ulhbwNv1NHIV788Ng8+FZJzZd27U8TaZhen0OAotiZ57fwbqBAsxF6zIiNZ5IlOLEtHu/4kVNGCkhFYPFNh3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738971354; c=relaxed/simple;
	bh=IKqTw8zJXrfltRmZO5YK8F6aLk8v+lYizYObjQsX/80=;
	h=To:Subject:From:Message-Id:Date; b=GspFTl18funkYHd1jX5vohA9zJ/hb6n/35OD2ET4aL7rrI/L6k2d2JcZQlxD50GEEY47b3yBA5FhlRTDqo2j2O5goKLmQZ7u1aei71sjc5eH130wn5qY+IZRaP4oDyE5WgmOoR/tFybX//SySbMTXkxP14ohJ9Dn2AxZVKBIaV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5ARZGre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5ARZGre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2B1C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738971353;
	bh=IKqTw8zJXrfltRmZO5YK8F6aLk8v+lYizYObjQsX/80=;
	h=To:Subject:From:Date:From;
	b=K5ARZGreNSW4TeeGWFH8moQTmtotUSuW0lSeO1dbbnFWidtane6CSXZGxKn4BjzqX
	 TeoIuYVIOoQ3CKbS068x6LfkSvxUifZhNz+ZWLKiTdpPOjcJRuTYBitbmVUqZ0ra83
	 RiWasqD+qXx717048s0+sIL9Y9MxseqcKFpFUs7H7f08EJCgvbVgdRMUrqJNzKSmmn
	 9HxEk/VCmFL7sxsywbxnQGaFWi+7KpcCpverB88RHYhfiEnLN8I3cbuWDO2JalCZu6
	 ZuyosnFvsZT3c4AzAYU+VOfspINymx7f79lRStxNZOVIoaBHGDFqoGkpQaeWBP1FgG
	 OwMB4LIRfMy0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F9DC02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173897135365.25769.7778364814012567243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28b75a363f8579c73e8d9d34561e88887acefd036a25320670641ba4b79f1f1
Date: Fri, 07 Feb 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738971353
