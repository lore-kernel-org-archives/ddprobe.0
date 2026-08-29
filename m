Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524A135C696
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788043834; cv=none; b=cIJ4x9gPlI2JierkYiwbpokcviZLo+rD7kbZdMGZqKV17DnDq5orNesdHvP0OYZjhAkrbZzdBBH/JB/uQ0z2Nmc/j/n/NyIlDfE/eKapUZv0ft0JkkH38WOElPmFXfDhUCKQsIVfsiMN0q9OvB6tWz01Op7cp/hO11mQzV2/V3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788043834; c=relaxed/simple;
	bh=GToOU0UeA4Zw5QvQrQ5LbU8Mh9OgBCPfV41P1dRTBgY=;
	h=To:Subject:From:Message-Id:Date; b=rr0TADtX+lBih1zJ+C2746ataBs0oDg50vg4DfB16XcgdbcsgetKMmIsGPvod9cliLrUKFRGbedD67chlMwtGf6jDecT6vvuTygb+Kc8mYI5ofTKiUnvsyTsq3oFg4Qtj6Wq2fW4UtVAgxZeXnItsfQH15R4j1fTyhJuQFP5Qk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuqGkZaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuqGkZaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4587C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788043833;
	bh=GToOU0UeA4Zw5QvQrQ5LbU8Mh9OgBCPfV41P1dRTBgY=;
	h=To:Subject:From:Date:From;
	b=KuqGkZaZWa7wUKzb8E1hVemVjOmUrBzIdkzWLFKumRegId9dYaiR72SwH+IhJq0Sx
	 nLS4TMIo8ri7ErLZ+hZedpzxFupOII1DNj9Ca7J1grTnZDcbe/+VKueh2iqKqYQtlf
	 QCystc61ynIoQCQdfeHHVRL63TLAHON3jzLeUnCM1UKnG3h3F7/AxsEy8CZdqGvAUT
	 B7ycgLs+61Mw/zDzrMTtdDgYgS0bdwoADwyBMNIxdb1oaDVv69U6b2uuSqYn254Cv7
	 IapmQ1fqR5zk7JrSLYypxUjJGyMukzqMNhSO8WYavsf6wACGqCVK4dzfyHkaZ57iam
	 LgpFBFjBgRbIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E92C61DDE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804383368.3607.16522847387485762794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ca62808f872cd2b5d8541508ff80db50dcaa19df59c9de2fe34bb397dc5d03
Date: Sat, 29 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788043833
