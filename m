Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2024413B58C
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749799794; cv=none; b=kwv5NCjXhzN09MBbjNLMWz3Wf7Q2LaOblycYixi2lZkbsVG3DWGBN2UCuNPMDTsAY5Ive1/lWpkQtHBZPBwBs16j/ZzC8zwzF6u1F6o1rTHh3RLEV7x5+SV6+/NpgQ0XZH2B9RJrhJ06rIiYKLGdghTybIR8c6UEwa03hQR41wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749799794; c=relaxed/simple;
	bh=hM+QvZv3plyG8ep4PulAz1pWuZ/SQVMxCtnWYzQ0/jk=;
	h=To:Subject:From:Message-Id:Date; b=BU+3S4V62Kshc1+cIe9ZVnQAcFtCnlOP1T18+76whozl9Ri2mLcFRIx+ONB8WFQI8IvkRvvXoNdSsEyE9CmIqogkTw/4JEInWz+gMRvaecA0tPyioFSS/Zbwk8DJAtvwd0/lHOftP0/xaWxxE2dsv5FJFbP595ZZ81tJsDrHxcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN2k5UsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN2k5UsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24BAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749799793;
	bh=hM+QvZv3plyG8ep4PulAz1pWuZ/SQVMxCtnWYzQ0/jk=;
	h=To:Subject:From:Date:From;
	b=PN2k5UsI4I89xAhi858bXCIFf97WzB4tZdI1NTTwYb/r4Wgva0fMYIUgbhpKW2Lh+
	 7zEha4z5HdBLFgaEPeivpV5SCUsYL8w7vvPbgoVpOXi0Bca7DsBdFiQyRrFqmicDpu
	 WU11XLfc/81TS+rdM+UBh8XQoSigAC1MbsWWiyZsYuRyyQYJWUGEtdVMViBqEKBnrm
	 Tz7UjqpEULccQE02RQ5/+xL/ohKWTa44hxEd8tBok12HPggsu4ibhRaerm28zg5B30
	 2/mb8aQhXGHXS/KFLtunT3Re2Ah4Hc7Z4wIs0HJBGc8Ww/ZZfZmtMZ/R3GWELuI6E0
	 j/PbImr2mFsOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1BC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979979358.25253.2191222293257318461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb8a4d7632f3dbad41d7eeb0048f4e383ae8903af490e0bba69e0fb4ce19613
Date: Fri, 13 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749799793
