Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617984FC8C5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790292634; cv=none; b=F2fljBT1HbQ5bt50f6rIZwy+Brsh3Weau2vwNe7C68vDKosho5VSZ7SiQdhrUPDRVDhHPpQv45XfOv6xuOeLjiMIw4DtPFocGYCpJdhhOppnZOM1gqUs95WDidQmutvrB0MocV8ibeVQQIfXp/1QvWdNIKKA1DIm/y2+9f0Sqck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790292634; c=relaxed/simple;
	bh=eAnSSogMQQo+R7KHe5X6JV4yI0fxkpnF3H07msMRiJk=;
	h=To:Subject:From:Message-Id:Date; b=ZHmOxK8klpGveT80gtHMSBGfNAWc91D2o+Fcqv/TEcVc+pi4U10cE+WbDNZp4hM+WN7IoSvAumDbhDbzEXpfnKNkvj0jQALgpAeAJzZ52oiES+w1VQp+Km3Yq//Jc3he/9hfdelsDPJtMtFXLN8OsCT0mwJnCHjja+tb0/Ay6xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdU+nowo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdU+nowo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E323DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790292633;
	bh=eAnSSogMQQo+R7KHe5X6JV4yI0fxkpnF3H07msMRiJk=;
	h=To:Subject:From:Date:From;
	b=gdU+nowooLk3NnBwh3B8SkJNKJluRhzzwjJVOeFHby368UTeBj8X+E5F93zVqquQU
	 niHRGlUHFmUpeWnXrSBxPj91BLDXolS8MtcRFUmHouuVVFoP/6H4MlxC+lorqx3RT2
	 drcNjjSp/Ryxz6Q6Ggf1qCEPTmTAA/ACjKotMuLPQ3UypMuLROvk52LkMQFVUSEv71
	 NVO4aDEM2BgOfrgHa/oxgDmjRYcoNldCj4RcbfhvfxXjyrkXiJvFNzpklfJ9L1EE0G
	 0DoQK4Pf1j4xkUTqGVebwxw/jy7tRlNo2+fq8Y2/ytJVgLhCtw+GtZG34Ywmg68EIE
	 f3Bo98M7s/Wiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3E0C9831E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029263372.21974.15448543062092730859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abb74bad923475934a53ca09a20a6f343360dd8587ef2982e6bb288f866d811
Date: Thu, 24 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790292633
