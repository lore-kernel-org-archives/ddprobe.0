Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D312472A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775178934; cv=none; b=GfWGBmTmK7DGGiP4mh3adDtFJjubWS+VH+zMCXpJbMWvRuP7D1noQToUUdVp7BYIlVAN2FtWjuR6lPVFjNLMQ9E39fwnInmOhMTzSeNJXmOr/jeQGHbIrBSy5AIeZ6siCT/Tld5RO5dbmKh75tSgxjMpQJzIRdbftypEScLiQ+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775178934; c=relaxed/simple;
	bh=6k2NbDVSAecNnsdMhA86vgo8zsdOpFnQnXQtuGg2k94=;
	h=To:Subject:From:Message-Id:Date; b=fTUX77XxBw0uLAdhToGv7/w7heH3URf7VIAr5jONZ//1vKv7r64bMkC6unuUopjE2bDxMwDMcdrxQ6hz/jCD65hHHM1MC6nSFg7Bl6nGWIDXrlB2C/umqEkzaw/KMWtMP4OFbeQe0rPtkKQkkW2F3/thiLRE/JBCjQd8dfYUtHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxjE2Nwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxjE2Nwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D2C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775178933;
	bh=6k2NbDVSAecNnsdMhA86vgo8zsdOpFnQnXQtuGg2k94=;
	h=To:Subject:From:Date:From;
	b=QxjE2NwdPto2YGaVKViJukqtyur+mIxXRUOT5nsXOLLBLtq/5N4PLWC+7mxGFDs+T
	 tIhjMZqH7Vwy5zeh3RepVxtrHah8GZHTjin1/gnLCnKJRNZZ00uuoXAsrRzx3e5kT9
	 eKl1l9C9KyEdO7wppkYCL0MUd6ZJXWLJzrlZBvbcPd/oDeiwF7LrAyui1zE06H7js5
	 33px567G1r6Vn2O7yEWCq1OA1cyOhWGV+vQC5pvGbbXU/R+1+nd+AWAMqceiEHbeUK
	 swS0Oew4GZMqL8bTAK+YhrzqTXJmsV6TOBfl2/RpTismf2BSolQnHWSG34K/4bAvIG
	 XgHA8LF1CLyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4DAD6AB1A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517893369.24591.7575547190181978042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae1352530903e825132810182bc2cc69ff1ca1a9a2c578e8ed3b19d52eb651d
Date: Fri, 03 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775178933
