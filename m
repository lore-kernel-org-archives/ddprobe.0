Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87B14D282
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727421354; cv=none; b=NTIChKR6gXeFETwK99ozuPG6hSYFkWA20je5TXZxHGw7ytfpZBU+GkcS94m0svAmZwXlUCaAAtowEvdNKWg/c1hFZc5i11na++c+zFNsfvnBrLLC2yp+M8LAozk+xdFABu6c+Zl3QCjrdirGKcEnrTgYy6AtZba6DBHfu9LapIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727421354; c=relaxed/simple;
	bh=r2lhgau3uq1u/Nmlxtw/r9q8aijN1Bm5e3EViOC3SGg=;
	h=To:Subject:From:Message-Id:Date; b=mwm1koAMRuLPpTiNl9FW4nxVwaj9EuQQc5G6E7ZMyUmBqOr+qoFolZVSuEE8JUqQDMnEEo4nko0+ZbU12xDuOAvW81a1lbGwCSPzQV6IvP4lJYlU65ew6fXiS0VqESES/abL7VQimOFNpB9pgZLKSY6dezHbEcBZimVCybBbOtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpM1305C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpM1305C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B110FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727421353;
	bh=r2lhgau3uq1u/Nmlxtw/r9q8aijN1Bm5e3EViOC3SGg=;
	h=To:Subject:From:Date:From;
	b=bpM1305CX5gDSXCYkrOB0ZszddgZZn3JN/xoj9t+NhKNqhGmJbZXqpS8HBzgg09W2
	 zwOkzF+mxS/yU/iQaSOrB8vjId7VSLTJY+QGW7KbYRLsiBPUFh5HqWeY5Rrq0U9fEd
	 byClDFABUp8AEHA2Mt3e9kh4EmGvo4XpLRv+epIv7lmf8s7mIIoPRCMaUzhYICZUXb
	 S39mMEqdqMvy7uQBBE3zr8DycvFgJPHkIu97he3sOvqaD1L69svSnSSmm5cAbAKdR7
	 6QvK59UlAzRz79x62f6j/dbdCkH+tMWDNkU1MJW7OQX15FXJVp/aylrJ/CN12bHijw
	 8VPBeCkCSiKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A44CEBF7E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742135361.1994.12163113226280030974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095af9013b0d9f6c4e69af7666515ef04edbf2544471e8572f368d264bb69e77
Date: Fri, 27 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727421353
