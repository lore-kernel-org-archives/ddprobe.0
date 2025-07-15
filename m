Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304F0EEC8
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752554994; cv=none; b=X+gKMBrDNyOpdkP/VqlKQxI+BHWskjKdsp0VxINyx0bVzw3m2Dq2yrvJE3MFYH9ohDSu9mIrya/fLpeklaerDWJ6ez++KZK34gumslqK51mhGuhFkxaqr6F9gJnSFuoVbpAbXSJgAKHjhhRWQZXcovbxPBQHh20M+qzDAXT6tyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752554994; c=relaxed/simple;
	bh=DHDrULV+NQlbsNNvKL86oJb3bhg4tfIqsyOSPrDn4tw=;
	h=To:Subject:From:Message-Id:Date; b=FJWXtH/eyksQfNsjqz7NvEjVTFO+oEs0JPqeJMfGpgAcS0UuqIbJFFQg2711fYO3EhyH/2Ea4l8ZHkYMS3nem55fNp+oyXQU3earixEMDiRa3Q/uAcRa7k4MgVNHKHEQP5uFRkYfMUQWw7aoLVm1SJ41Twycdy2Rfq6n6Y4EKuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APc1Do1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APc1Do1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752554993;
	bh=DHDrULV+NQlbsNNvKL86oJb3bhg4tfIqsyOSPrDn4tw=;
	h=To:Subject:From:Date:From;
	b=APc1Do1m3GUI22hHjYR/pJnUxhuh/RGYvzIaO7fBBB9mWMCZM1idHBhZgRThX2oh2
	 Yga1356g5PmS29WdowI806KyQ9YNxbPptLUzwqtjkzefAlKE2myacObZtmMDKMuIK7
	 Q+CZ7sP+Ih1gFcfH7F9VHRrDzYwD5FgqyR+PSmBhuz950MDDftSjhA+wS+HHRgysFp
	 XER1kuczYV53I3kDOcgSlRimu74Aqx3jsbu1A6gAXWq5USmxiwDNrPbQhnz/aCh2X5
	 zu5nLc+7Z62hIR66cCatAlVXl94b/fu0SFvz8bAUL0plsmVjXP93w0nkgZT7po+Lbp
	 udTuPNM2JpkNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72CC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255499357.31705.2608345230128369126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad523e2f9df606a737842df4d2cc4b14ae95c9f6da542f95011a7edd9908ac7d
Date: Tue, 15 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752554993
