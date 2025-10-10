Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD62264F96
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760103594; cv=none; b=a7NJNnWuMMDEYPEqa+S7mTVXJRlyOO+UjHjxtoxztJPpMAczqt8T9OPX9RtOx2knukiqVtcC1rwGnsqIGtre8tJCmcnZTclO6lDJPQJFrC0dqLzJE4whW8D5NHwZJdKFPAUIwo6SWNaaVMJ8aCZ849gjmBfcCNFG46GXGtKHq8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760103594; c=relaxed/simple;
	bh=EmcmL+pMqmi7dPC4UKfh1UgD4NPzmLNPL8hJJxE8PWI=;
	h=To:Subject:From:Message-Id:Date; b=TZoooM0OrkQjJ4UxSMy6yqdMp9wxeqyu08W+9SRMB5Rli9gHEnU2x9wirgez8pmbTZdIT0sSBELzC6P7jkIXlJRxpgBE3fG1kdvZ9rHWJFXhNh6KQE63rLZrWaLe6ZBD1frYbfjobjtHKi+Ibf+IU9t3LY+lXZgkNKiu3PCWQVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnINIHKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnINIHKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760103593;
	bh=EmcmL+pMqmi7dPC4UKfh1UgD4NPzmLNPL8hJJxE8PWI=;
	h=To:Subject:From:Date:From;
	b=QnINIHKpz/Mo86ukCGRiCLMyx51bv29ibqd7WSKmWyf89VFS57CXXkpZSIC629X2P
	 EaeH7N8Te8Csx+l8Um3SpcMhHtm6k1wW6h/4Gsi9X6D+K7FXf4QPn+JAhO1DFzPMSi
	 gN+Gtzc5AykZtdpiW5rNR5THwW3SOd0o6dObBm+err5YFUS7pZvy64S1Ne17MiEpIt
	 uQmNrWGZz8ialD7MFBUj3GBIqQUSLvW782cSF7/brBC513v7VgvhClmkvDlOfW8kfd
	 +SSY6sOKad1JFPw97eIynwpBLDjVO021Soe/feCqkCDF0b8/fJJIiWT16XrX1SU7L/
	 GyDFXoY0ggMuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92252CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010359358.28082.10345539439878705846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ee99ab7c61464d351631e475bc31bd0125de066590e242065de03bc773c2f1
Date: Fri, 10 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760103593
