Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B748434CFC2
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789065035; cv=none; b=q+fKwE72lKPUnrx5UI5O1vxa4hW5QlDO/c7mTxJ7gzaQfFYzEHJlOOYTC0NHl5YL1IDu/789GyXohP67Is4Oy3NyYt19lyZTDHezKQFFSoIWetlETfNgp/IMOV3NgSz/1JTH75VgEFP2pj0w6cGT9M+ml49UjRBbrz3A4MDn2yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789065035; c=relaxed/simple;
	bh=SpUdmmGdz3dkU9wT6y6/1VftrTXIHfL1beMDraM2FSU=;
	h=To:Subject:From:Message-Id:Date; b=mUO54q8ZlY0nwxCli6T4nOhxv+qXR21Xub+pmRPFvRlsByidmt/iOi+COlxspssosc/WJjvTxCvQSffq0aHxxXbLTDwapDPnzw9juXuSnYiaXKZDCa8sXgj5UwQAq/ktMf+Vb67hx0AZOpZFHjFg4FT1TZHhdKfk10N7knWPZyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0JizfDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0JizfDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04ACC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789065033;
	bh=SpUdmmGdz3dkU9wT6y6/1VftrTXIHfL1beMDraM2FSU=;
	h=To:Subject:From:Date:From;
	b=G0JizfDPDvFaJbAn9MAl7wxoi8MR8hN68nq1lscIkloALnzIGTgBh7cdCQ2R34xPk
	 h/jegXTA3DbyaZ3Qx85mOPWGjXhhkiLf0yyMiyb9RgrVvQtErbPgpoVtYP3gQt05bj
	 Sn8m3y/xhsOS2OI1sH90cdnTEgQlW/9ccvRTzaLKkgqVqEkzD2+NYxyfiV6cfUdCrL
	 c/UrTk4feEGjIvFScrCbcJZDyVrruQopMIQMfvdQlj7J7VhvECbFGceubDcb6Zt8Ey
	 URDJCJp1PmH+88Lkly7nzPAnMd4Faddxwui3vBbWmwffs18RMmKHNbCs6E4lDYD8wO
	 DoloE8BdgIznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E08C79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906503368.10716.11413854403708323862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b8c4ff3e73ef7d6071358dde7629963074478b65be7ea2864ebe6ff7e34458
Date: Thu, 10 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789065033
