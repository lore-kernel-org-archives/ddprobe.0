Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B392DEA6B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786392634; cv=none; b=PvqOvFo1a9FMNSEGlSxQ+Ph+B6h/wtl48tiXNFt/W+aS6p84LbV7rKUbIW5MSI0IvsDJFY+7kLJi5Wf2WrksWROGZaEFUA5zJTDlhRNJHIcPeRch45Z7ddmnSiRDYFfzxAMOqWuMIadAASNEvbNQmY6bj1d59fEjbnMLmjFmy6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786392634; c=relaxed/simple;
	bh=XiLlBKfgG7ntaodgRUKX5KN1ZkLk/bgrgN6rYK/Od9Q=;
	h=To:Subject:From:Message-Id:Date; b=uQtwYG3d+sXdnHG/gWB4lYe3rHMr2QWMOmVVitAHbZN/Wu7OVCL3KPBkG8mBcuK+OwGJu2vcIoV1l388FreMDqGi2p0eESmEA4xoZ0IbjgI5l9fmHcrK3k+yDz14EujSH7oS3u8PzvPjU+LJq/OayI8Oroc1zAfuz49YVjleg0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3OwdbbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3OwdbbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB9FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786392633;
	bh=XiLlBKfgG7ntaodgRUKX5KN1ZkLk/bgrgN6rYK/Od9Q=;
	h=To:Subject:From:Date:From;
	b=n3OwdbbZRGPUkoy8FLMjnt7sIgdW664whEAl9tt41irHqSU6zFtz8iMxMGe+16+Tc
	 zDlHYQhADyrERt815auvcZaPMu78+C/pNgHHrmmX04DeZhErWiffFHOmSUMwt+WWRN
	 guj9DQje8tRQsCcmzypSKj1EfIFe04dmjW7Vedk6FOe6dQ+w94+llmbGDig6rJE8+S
	 Gr4YFM1q281iad2GCXUPDNJb5R4Iqcq9JIURA8HxTCS14POZS1W7coFk+L6cH05DLV
	 E8oBThpy/QsfX4OLoW6zsgTPMABevrODbzgnXhPPN7q95ik/x4Ah8fdg3cJ9/iaGmR
	 dQgOf+Dc4ILGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9020C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639263368.2823.3869423824703150717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a05a2926ff7ba9e06c8c905a12e1d0f50b68a4e7f1f05c2a45d578d48b1bf4
Date: Mon, 10 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786392633
