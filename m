Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD514C59A
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723068354; cv=none; b=VA5SqG8F037Vy5oYgRqczO6Xx2vAP62JwEQlfAllv1I2/CBMq+ah77evk6wegzFZJ+598qO6dt/dMywmg2JswTRliNyqVXxd6tDBu48NnrXig9UwUEgUqQKnzbwW4k5dOQwQmn/inX/mOOIK+aQwS4X3lup1tgKtrzOpM5AvFpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723068354; c=relaxed/simple;
	bh=sHSBaIhrr9nU12hvz1gdFaVkzebLPmK5atOi+JJNEQA=;
	h=To:Subject:From:Message-Id:Date; b=jPlwVOB0dNO2sopk6yMb7pvX3H0h271jTl3V/pOL2dGSC+kxleAuBaaaZHFEmFus2LZ2pChTRTje18XGg//jdLGHHzEhd2OLxNUxlgqBjeaLZ16jw1byLocbi2H02B6xXWQ1dxrm8fHMPVVjMDpyq0SDHMK5z3Ebs8SPCgm7uxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKPEY9U7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKPEY9U7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B435FC32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723068353;
	bh=sHSBaIhrr9nU12hvz1gdFaVkzebLPmK5atOi+JJNEQA=;
	h=To:Subject:From:Date:From;
	b=cKPEY9U7RXvzOo7wPP1QyiX1nHjXM3XgG1LnKeqvBg36st2dQl/LiV27O9bT9OF9U
	 qiF6jDmmC7WqwP+oof+l7HBMMHXLnXQokSiQ9uxdLv2UAPsztVOJpYHIiVKIlwaxny
	 5pw7ApP28WyrxOV3ratt52mKCSB5RuSPeakNx5iXstaFNaRDA2Qfm7HIFdGPD/dckP
	 4au3my2k9ftokl+TlIfydleBDciDf8vcgGvxqLXuKLUvkZtsIsb0k1Hp0KviS6Z04j
	 4bXypzsQD5rZR3un6pnetrPo9OsbWCtZBeaAn6JXfpf99eIYiNEHTc8hmfMQOu32hQ
	 BMDuxa0LQ/1yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4129C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306835364.27555.15430145720085803005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db014fe6be9f02d2098fb749a01b943ec74a59784d59578e5467b7cbba22922c
Date: Wed, 07 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723068353
