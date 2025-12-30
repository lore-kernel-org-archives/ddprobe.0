Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9115230BEC
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767101033; cv=none; b=bTl1soEPiDZgSH937xihTRLseiBgAfTu8OoY833KAHzVM2e1yJCo3xNOeQpg6rzSqEiGi7yhuewzVL0qWSVWgMtS1ubwo90XYjthLnRGseCfTpPjmfylR6E3Mml6/mXSk22xouj6gMpRCoBIptKBXauOHjJVE5oZKDACXD6nQts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767101033; c=relaxed/simple;
	bh=cr5d1QvAf9WUSuJGNQHZyjYx7UYtNWiZ+KDTZNgg6Ms=;
	h=To:Subject:From:Message-Id:Date; b=jX/zttWv4YRd470Ex3p5R8YJbcsumNQeMgJ15CUAiMVQ5sY799+1g2XxctTQvS3LTYlo9DjF1XvkzY56UHL9Qd4gRwToWPJK3ilyzmbMzcNtwwf1UTE+X3L7nyr3xMKQaOazl/H3j5vWjFt90HJD4ueafKulmxKVxT834mBo+4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLZdiIR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLZdiIR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767101033;
	bh=cr5d1QvAf9WUSuJGNQHZyjYx7UYtNWiZ+KDTZNgg6Ms=;
	h=To:Subject:From:Date:From;
	b=RLZdiIR4Y7IX+hg0zGp3zZqZKxSr/8ZLhyfjBr3v1jnGueL9z6bHyHVEamHyPe+8x
	 qyw4tIF8lbeWM3ldS7v+0LV810iOMt7nW5p27Epo9NR7JXmtVmlwYZ7jE0KsaIyfHN
	 EvR3RFs/T5FdcxHYe93DUi5qUjxv248p65w5O/4Vk87lJ1cvbGvrHlVAv4mM7rXpRp
	 hkpBAlFcpICQSU9lkESHe2eRm5XD8+BVvqBN6b6ZmzA/Bj41eUMW25pnUVBMlehKm2
	 xitKu0j1haZaMgoEXEiKcqZWZ6Y0se8RyAThEyHiZygIugrB6z80pSGEMTmf8acnOp
	 RPomHIxssGLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A34DE95A8D
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710103362.6068.3564670097369570094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab521a00332e8522359b49d009759763e3a7ab62813e958183d96fa0533d50d
Date: Tue, 30 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767101033
