Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104A3CA5A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761113994; cv=none; b=e3B6Wi/K2EFTP+3yHnKjbYCi/QE8ydutF5/2w9xXJFbGr4gbU8b/NYaQYxM0sSdmayUf07vUp99tfNgioQCVxzjbK8cVR0ffEIYSCSPDOVJ/0fZNppMOFsfVRkGKhlgAtgZsRmsZ1yi1YJLnpDhBuZ1b054i17XBtD+h1UFgfcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761113994; c=relaxed/simple;
	bh=nUgMB6IGgwdbkcWBBsd846empBWfCPlUQRPwRMk4TLU=;
	h=To:Subject:From:Message-Id:Date; b=eC7dhsBcPKMtSXf6340XyP9dzJYD98q1rwcLyD4VyVsjgW5y0PsELTUgrFiAYiwI8jPfSmCVJU4LgW8E/qbsPlfC6Uz6C1FBfl+KZx4GApS8SJbuJyS0pKyx+v5g7okHgpm8uQ2g/4lRZGp+PKqsaLHPGnx3UQxApMcm0WhxAck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVl9PcqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVl9PcqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761113993;
	bh=nUgMB6IGgwdbkcWBBsd846empBWfCPlUQRPwRMk4TLU=;
	h=To:Subject:From:Date:From;
	b=AVl9PcqHxEQIdjNp2J7nWbbjMSqjrTuKzpLwZUg2kvuucoqeA+o6JCqQMH0EfFTvm
	 Q7n1rbyJpRwVLXlJghMKXAlX8VaUoY/zdbJYoimNnBTIiMowUTT6F4ExA3iyvUp1Dc
	 spQDtm7D2uf+t3VQepg1BPSUCGO1z27WSA31kOkHlIqbIP9q2cXhA1mBMoA13ypqW3
	 mWuuTHNTBtiNmZR4XqMCEZtpb2nVQoUEmaYZBXOvPyAKgXfyOBkRgBTjHe/DnA1NMq
	 tvq6B89XSrHE0QA+XYtfDEOkZ6Ahv0QgPTPghq1djYvsORCrZJjsgF311A08/G6Fr3
	 veiIvun80lPtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2ACCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111399357.21080.17653505303473105591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2476d7d1be639977e2a222662c47b21147822f9c5620151987032b641e647b04
Date: Wed, 22 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761113993
