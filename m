Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199383ADBA3
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780749874; cv=none; b=p2nNhFMqLRClTrqINKKLVK+/NBTThdjz9mwO4IrIIP2F1EQq9KjWXIfpjbkA2BHv7GCaCQbtex3oSD/c3Y5JSziSLgNqtg7vg34DESr5mFm3NLaHp7njc8hcHMq4ArCdlgSjMHj6E5vzDS2/UPI7j2+u5HkaziPWp4Kf93ZvFa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780749874; c=relaxed/simple;
	bh=BlK8zlffuOUpryZigHoripZk62p0SSSNOxBqO5xGfVM=;
	h=To:Subject:From:Message-Id:Date; b=at4QI47jk9DRI2B2f1NNdPYCo+WD6KWnoPsWBD3ASAH+SmNq5mACPhAO7mRoGBnftDc8QLiFwhH8zobILtcVuazYIyXMD5/EddZGun676V0SQLe7FvQ0SQYJk46dSoJYiH9po1CK0nXxZD8FQfD40fAL9hUHKP3ELxaXyIG3icg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbaCGqM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbaCGqM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0747C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780749873;
	bh=BlK8zlffuOUpryZigHoripZk62p0SSSNOxBqO5xGfVM=;
	h=To:Subject:From:Date:From;
	b=gbaCGqM4OvXsV6ZkG0gcSDCOGGsZ3/oIuOLdOQOSdftZPdfLl8LttDK7gsxXOMt2D
	 6yCmB3yxaqL/lKf7atPlHVgyuzRLnli01+BLEwSZSO8roMvVJs2v/A8h3ZfCdO3D3r
	 P4jrIoZc+7sES2hHjJY8ymS46m+onz6g4HL3jMH34KC/Ma/vy0fKIgxQekuxHaa1lo
	 zdRddusZcL5NAgkC433XHSUyCLlMNXAJ7dI1J2OgRR5OEpF9dGzJRHgGPj4ujENZTj
	 55tsXK7CpmjVkyaQ5XEIOKDznlOb2HZDkd7JSIB/6th4MgNrszO6CkwOJasu7A6/jO
	 9Pqntza6euWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0186CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074987368.24859.6453401588752869781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8733b8ab3cd8dfcbd36a9f6582f831a7953033f089c2ae2b0202e101a7381e88
Date: Sat, 06 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780749873
