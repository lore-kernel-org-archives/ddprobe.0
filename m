Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E81113C679
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720653443; cv=none; b=caettDW4Rblc+SJub0TOeTxQ+tQYBpUFCJLtyYu8+oiUYKCBrvWiXZINCahLS4Wst/83MrM5uj/XEDKhSWenoPryU94oEU6gkNZNy3v7u/tiWUAOvWdZtVxaKuGOYNYmFjHNKnJBuqxTcBDs04W202fyNFRNI99V+PeyfXrRVfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720653443; c=relaxed/simple;
	bh=uGK5Wf2FYqWnjrrKE8e+CavJFkhVVavcXt7wvByOxow=;
	h=To:Subject:From:Message-Id:Date; b=CAOgGdacP4iIWmT3vv5cEqd5i1252ztTcmfWFjAVvfSGNN9BWrAudJ7FGNI3F3AjsnxKDrE1AWFxtlL2epMAbY9ykmjOQKM4feA0lD0q0HEeY9V+JaxQn3dK28zNSxLnO8RZxC/fji1/ewuKogd80R2op34aQjNocRMgrKD/vF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0uBacUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0uBacUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E4CC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720653442;
	bh=uGK5Wf2FYqWnjrrKE8e+CavJFkhVVavcXt7wvByOxow=;
	h=To:Subject:From:Date:From;
	b=t0uBacUHg042IuEdKVdGfkyqcYEBLo+kzee8kxZ4cveNCAuZBx/a8wjeK13DoCvgr
	 RWY36ZvdZc6TNq9rdXMPiR7vvgQO31NEcT1GDyUvAiGTKbjEa/TWki1JnoNC9fshOW
	 sKA1GmSN8Q/Ku1ehquLLi0bH+3kQ1g7J5dXYgcESChfLjg8MQqBTKP3tWDAQCqeYVU
	 i8Fy6ZOgfd3GymiMSjAhvoVcxWoWjhcfCdiZRHqNXbI5VsE2OYEK22c9skDpHrY1Ks
	 A4uCDkLSXmEtQDwynESk0pcoml4g8WtE8Ro120Ym4wGtkvOraM593o8phRBZditXyN
	 LJf2PIEsMQlBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA4DC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 23:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065344284.5383.4862194042796274013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1c8a22ca8cd5b153881d523c50fc2c4eac76f7c91d15ed78cc55ec45d0e5b1
Date: Wed, 10 Jul 2024 23:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720653442
