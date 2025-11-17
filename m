Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB4D28980E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763348514; cv=none; b=XhDImtb629znmVS0d6KmKxa/Pp1Y0DTbViB9TuKPy5LJc3fno/jHOih/GO3/cgJkhorRsNcOVdV+G7nwe99Eu8EU6uEaU32oQSe+ydgTh6HKo/9AvR2tkCxEYEK7Q8mEn6swD/mPTHsJcBjAWcFIErqhX1neltW1R6yLNR0JNy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763348514; c=relaxed/simple;
	bh=UoyaeEIK1boHbvXXAuXzTqdBGcnXOacwzQUBhIZoemE=;
	h=To:Subject:From:Message-Id:Date; b=Dq27OJZRbvSw9gXR/twdu6n0AVWDHu6G7bekWHLUrzfgUfp4DmzgvrtnDYThB9wolAYWrqJjyEcrMluHMqX5AMRp7t/Yz9LWBjcDvEmnXe0epDWcgCT18vxZ+De2m7C5h6PJzesYE+5dGuvOwUlrL8IMcrg60O2F2gf5E5cRqXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngnhha65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngnhha65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6A5C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763348513;
	bh=UoyaeEIK1boHbvXXAuXzTqdBGcnXOacwzQUBhIZoemE=;
	h=To:Subject:From:Date:From;
	b=ngnhha65amNUaeag4iGThsOP84bZtlGdutvVg4PWXaFF88bK9lpd/8OAOW7gcm6eZ
	 hEkUQNeWDW+2P9EvLo4ZlIcM2Ie7CKan3vUPfYPEfck+922furoXgYcZyiI/EFY0hi
	 mnVoH+497BU+L5fNfjTp8I4c8UXzzfmOdb9+iNf5TD2gm2yp6CAEpDcU7r4TqLSN7r
	 0kTlK2MfD5O4W2iXoVVmN7p+L304BPYj2rjdxzpmpyLHIoDZ/G9gldATpQf6xCCA7N
	 aZSQ/iUWucUpc7NTRWhaZm1Ll5+4ih7E3YONsbLrjOowMuYx2KxhLeeQsbnvehrvn3
	 AEGitVXSe0Tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2ABCCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334851363.15693.10188140442209737570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da5e6ba50d808ca775232f8106a083b550c755210cf32af63242928fbc3b92a
Date: Mon, 17 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763348513
