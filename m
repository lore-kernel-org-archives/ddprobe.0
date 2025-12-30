Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9AA2264AA
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767136434; cv=none; b=OPNjllPpkdw3pIyRABeBHCrowny/4lOHam96h8eGPjupMn//n9dh3d5ayyon9CbfvPDKyAdrhyHlXLKkBxsgxDl4Ju1QjawnSxXSA6EnTT44sKUcztuUt9uAOb3kkm1p/TD24yA2KWJtJcuB26NhmKiFf4+Z1jNQSC3lTpNR//0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767136434; c=relaxed/simple;
	bh=9r0C0cFjj3rV5xGNZsSeGUQvZUVY3YzNk1B1Q/DMB5c=;
	h=To:Subject:From:Message-Id:Date; b=XLkMMPyvKTGJDgNEkOJh3MMzojp08beTKf/3rZ220jFZfuVwesjbQl92JIggzZDpraNwOY6SGAcqDuGJJn/mhJ2bYupgxnxvTJj9icUUJ2KgowZso1o4mC/8LEwBUzJMcaK0sKoK6B1ESpoHzaM+e/MCoWNfuGK5lgGeRItBnz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5xGdFbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5xGdFbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70F4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767136433;
	bh=9r0C0cFjj3rV5xGNZsSeGUQvZUVY3YzNk1B1Q/DMB5c=;
	h=To:Subject:From:Date:From;
	b=k5xGdFbBvrRcdKPUfUicVdRYTVHsBh00go4nKUNr0JIgWMNxqnsl0/GhS7bwkFGkQ
	 4eOMbpfvlcgnNP/kaNEhctnFhprJLU5GIu9FEV1NR9/rPK9O6Bxd44u/RO4vmqykBO
	 5HEFIny7PbfbBCjoVfrdGZ3+GWc0Rzfrc3qTjAaBXsxk5dyGRd6VCCCxdDET01R+ab
	 0Z9bnECdtNIEHtSREeMW/+BbwDZWjHoyJAURl3kYS6aBSXZHa6R2W5gEIVOfQoiHta
	 HYWq79lO6ORCGYT3+0VPEHn73y3Q1jNcx8dXdE1gjS79jqCW9xKLCZJjUxfSuxU9Sw
	 1VMcArP7HYWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E17EE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713643357.10888.1867039335300637412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be82f90c1bdc7a1c587b39d28e4fdeb75c7cd067fcc1140f200d27b0ba939fa2
Date: Tue, 30 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767136433
