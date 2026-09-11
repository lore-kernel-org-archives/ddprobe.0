Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D344137BE
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789108235; cv=none; b=Cq8c53EOWP0vlQ+KjIjECp2ON5Ms5kkFO6mY97y8lCZ4oUugrCcvZByw13BIBL9wM59qzNVPVZJE1Yg0VHaCYoToZLKgUpudobXAQZiH/JBB617Oclzh/R28dEY7K18yyYD8KzTM9CIF/NE20T2P3WkOMUzu6vOGogULKOMmqgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789108235; c=relaxed/simple;
	bh=6E3lx2IYbae7dezFZz02t7KGA9WkIIX0JdTj6h6sTfk=;
	h=To:Subject:From:Message-Id:Date; b=RBBRcs0rNlTF+WGabouWDkitp4PtKpXs5ICe7PCCW+Xqz54YeML2beuTnNJPuXGlqRu4pOgbGqlfUoeOjuQACgSF43YJDiIjkFn8bcnO5fQrnDzdW8buud1FE6uEtuDS5NfZiY/xWjX2y4Xeo8DoUlGDYk/mVm1lNQ13Jz62e6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh5LkD05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh5LkD05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49F2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789108233;
	bh=6E3lx2IYbae7dezFZz02t7KGA9WkIIX0JdTj6h6sTfk=;
	h=To:Subject:From:Date:From;
	b=Dh5LkD05Vb2zce2krNU/XhhA+AxK2EIj7ZphBcxj8DORqihWLwHQ6eFQ64mNTE6JV
	 rJ4eCc0GSCRZhyTNU1BfWRKbxHNF2MeKXlYd6ZWAAGHcRF3xJ8AlnfEWqiercvvOfa
	 NTcGXWuke21kC2is49VW3niQpxHwAzYvzEMrxJWcThJhY4d/2mLRdD27uANv6cW270
	 wVpgPyRXAH9o5TrAAr72bvOlNdt6GGdSbeb2bkMG/96MUXbHUStOZVvXaVijzmuhoz
	 PtNy0K8PneAIGz0Sn12mGZfCrAwbHGvZbP2025vJ5gOf0q/CDcHr1ZCa+n83fSUXG6
	 RXSXvg4YaE+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97FC79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910823369.14677.7913426064671779206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d828fb32610df48b50153670b805ad5e2b1f518b74a04cb1d4b85ba08561144
Date: Fri, 11 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789108233
