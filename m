Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E538639BFE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784032115; cv=none; b=mWlZT6ZaMP3pG9NuLqrj6Zu7rMhaXS1vhHIXldmPacs0zHO0i+hnWOoSJdKaA8CZBXzu1xNUErGG8n8YvC/KJpofAhZJT6F1CJw+/EaLcsnO0Tn8YDMT9qZ4AFzZZlofCd2Yknjkv4xQamwUemb0CRby27933/zeV0BMbanXjko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784032115; c=relaxed/simple;
	bh=HRAYHFS74LbajqWkAge1nv4vm2GR0/1tFpTnLWqP1Uw=;
	h=To:Subject:From:Message-Id:Date; b=MyA1jRbsLrrjGA8lmlAibM/HISIc0FSxPBDToe165q4lZmLhDFpDW4+X0RWnjJdAEmKN/rcRtQBQm0Pg01oscjgxNoHabcNk2wRCAOFIA/zwJr7u/WYMYloIQPxDcBZ3HEqdCvTVPM+JBfT8ZTR2x7Q1WBz5VMa5um+TfyNSnGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qr116AZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qr116AZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC172C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784032113;
	bh=HRAYHFS74LbajqWkAge1nv4vm2GR0/1tFpTnLWqP1Uw=;
	h=To:Subject:From:Date:From;
	b=qr116AZF+vTx3WHzCESlp81p0GNiiDQmNWAJAdBdRa9/fji9V8wcJS3B7ApmRxjDq
	 5+qvYhIzPkvNZVVUZ2d/AVAAMO/sOWAqwyVCTq5fVSNneJqZg9AK8iK8EihOFP+csE
	 UnxVBcbultedYrj+NTGtBFd2Kg2HJMKIrPue1niEKtdVYEv+RHVg92ESV64nLtnCHi
	 1H3z+by0XCjHIennrdIy621f26xQwwiOL/idW4QeU441LuKrOL7UWcFf3kzATPRkzo
	 09qF+RKIvRTgSqt78+rKyZNFCNhahjqXzDZhX9pmPajAjWhlLdmHTF88Rsnm5ZVO03
	 t5ABMmI5JDjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9864C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403211368.30378.4793557503421726692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26e839dc1a3b06cb77db12f19bd1031922d868d726a2ae513a611d3a912024e
Date: Tue, 14 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784032113
