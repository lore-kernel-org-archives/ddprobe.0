Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D17431197B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769803434; cv=none; b=St55yC1KD6QLmAk6a8DonDWHvjCWE8QCPo0rqzilC+aOLBmtWAv5pSbGCNFmJcdDoPh11krNiJZepwsO4hAZdonobwCZdvVkr7wZKMSlvVH+iJ9dVgflX8hng/SlQHY70Oh+eoRhegEayq7u84YGTTIhIxs45AxNSyuhOVtiEBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769803434; c=relaxed/simple;
	bh=aE0Bf6P497B0LSaeA64/2evzBsmcb708cOKoBHCALfA=;
	h=To:Subject:From:Message-Id:Date; b=MRabLwppjhuwLHqdh27x8vLN87bm/CG+yDAYQA+NJurDtHT5kMxn8phBpvY0t3KfrxfuUF/Mzt1AsRaLlZv33Pvhh1aKgMjaOcqav53GoJqJlIxn9YWi306wWj7PnNfSaDFBNijgTIRHgTQl/SkvuGa80Q5d6QF6hXOhX95bbSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUR7VGov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUR7VGov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769803433;
	bh=aE0Bf6P497B0LSaeA64/2evzBsmcb708cOKoBHCALfA=;
	h=To:Subject:From:Date:From;
	b=WUR7VGov8LJn7DPlZT9JEMc67wQXPQidQfFHOziV6JBPBZqM4AMakNXHaUKKD3jDS
	 yjU9CPxn/qgsRx/x1TTaG0iy6Yhyegh4FkIoSnwxSezJ1zA/s+nyc8NiIlKw0zl0l5
	 0Wq+AY2fxsUoaLG7QZT94/zQVwQur/+5qVBpVQsnjJtUzSngXNuTMorFr9AENvSdsk
	 SNUK8HvSn4zqNVCHnMv/5HZt2N4t9rLdA92uzGEEI0n34/lkkJI7lTuwJHPcmut13d
	 ATffjLB+nsgIEHNbiMnkJcPImPJKo/F3dycT9Wfy8kc3qnvGFRYrDq9yV77KrCcr8c
	 dc4VfFV+Kyh4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B9E6BF37
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980343358.9504.5272557274338961544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e91bb2abe1a070c756d54b8fb004c2b6abdb13a2fd5612f7b61512d34e0728f
Date: Fri, 30 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769803433
