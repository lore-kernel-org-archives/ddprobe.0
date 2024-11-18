Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E1EBA4A
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731935754; cv=none; b=nHGjyu/cxo3NtwgqdhvifqSuTDtB7zeBJWnPweCRJ+l25vMNCzwnvbwRDeiSpUONfuaPPgtyiRh1QuKuLym0kjafIegT7Y51Y5uYrnazNdiLsTmOtOwFt2PR4oYFBxDCvvRYCpC8eSXCLc34n9FQ64Z7jZAOLyT+7G1SSvWYxdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731935754; c=relaxed/simple;
	bh=MbfPjs6aTeFCdmBUjkRkAKrKdzc8avRi6+6/VoDyTCc=;
	h=To:Subject:From:Message-Id:Date; b=AU0dR+a5dw+K01zGfuVbQe87U6VRTdxrgH1e+9JYr2TOZG9Pn2hV15gZnrxpD42UmzTtt8kfbuV+Aqsksxw3iY9CdRhSkqYrIYCuTepFsPDzuyyu0dsltq7gd+swF9TNMlFo1P+MVGAkvF8Aiga5rrkqq2sbeDKddoRKwCKSGbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC3DpNNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC3DpNNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE9EC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731935753;
	bh=MbfPjs6aTeFCdmBUjkRkAKrKdzc8avRi6+6/VoDyTCc=;
	h=To:Subject:From:Date:From;
	b=kC3DpNNb5qQwfES6Gy6gcPvnM8NMYGxoljRuOcersgTWblEPSh0/MjtzhbUyufAnn
	 x40KhCQfLqaRBYoLux5UT5Rsvybukm345iuMei5cMLnkTYFfp2fMCgSfk0B2xRxBmm
	 6eWpM/8p2jMCH06pnhgYO+pp5bCabC5SpJSrdWfugE7B5SjKvLX5NGHVCnKGEmBeob
	 /STf40zTiqatsfRDfETS6j+TmFhebcn6B7R1d5lUTQLkJKZKn2PH70FkvNDVvXDLwR
	 fUSkAkyIdUyJF4Zmyz7cQ113wq1i1k9O/CbF8mpk7Q53Qc3js10P80q2GGxNbBT4NJ
	 ctFm5xNTLsymQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98113D4921E
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173193575361.26272.6342275147857348897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac81a04a377db7703a3dbef5ea82887225a29b97c7137c2588a9c3febec1ee9
Date: Mon, 18 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731935753
