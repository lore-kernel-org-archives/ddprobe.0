Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317E4259CAF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754410794; cv=none; b=dfSSjAW0TiUxUgD0j3cS8ilvP1uzAp8rdbj6GFWCqXSbuq0yPUBq8IXZyWaoCJw/VsVW+F++Fq9CgOUfvfdv/r0l8btBHcLKOhP41a67cSCgUuPLhR8cboboqgreXunifRQ9v7A5lQMMAfgoldRnNMRRlQ0dpurg98URLHlTJg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754410794; c=relaxed/simple;
	bh=Uzc3acd6RUmiu2zU6pBS6MkJCuMH/vii5I3OEzvuQrg=;
	h=To:Subject:From:Message-Id:Date; b=ix/9w/753mdMA38nouJ2p0K4vKjmThwWTnlceAjFicY6SynnoqNARjsqVR8Fu7pg8W47PQxcX0upcTvH97OiL+tjqvBom8utOwAwrMYL8wzoEP4zhfB8KEyls00rq3wt1UOrwTs/Hz7dB3/thvucnMxtAMoXWsdF01HQDLMABKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwlJ0K6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwlJ0K6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754410793;
	bh=Uzc3acd6RUmiu2zU6pBS6MkJCuMH/vii5I3OEzvuQrg=;
	h=To:Subject:From:Date:From;
	b=cwlJ0K6C+glVkDx6xB5cSeW1t4FZVrrNGl3qGHws6O2sgVUAN/wSP8T4Xsu3XEmGQ
	 lp+ogw5PROiYH1131Mg4dM4nX/DiNEorjCqvA21fECNg4NqqEPZb3QluNuRa04zQ5z
	 hcyLCEBKSYcnStv07/LesJYzOaD7Oxue1AngtKc8PlKtCUSF6EnScm802g5tdYt4mD
	 HWgTJPSSABo/NN/7Wd2KqT8HyTNK8VKli6Y0MgZvK7rt4G+XuD0Y7AzJzYS9fGwbRY
	 bhIsW8QD+7o/iqGf3oeozmEddY6Tn5YgrFLoxhebt9krRIwI2NtOMszRDKtprUulgG
	 e3q09KGhdex4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB82C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441079357.14815.4814039621789282435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c5773b1a06fa9e717b98b5c9e7ae65e7a485c4bd661afc54e722275cf1cb19
Date: Tue, 05 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754410793
