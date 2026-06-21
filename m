Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C7C3C07A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782052594; cv=none; b=p6LOU8aJeqtgCWVkGDpcTEReUKT6NkVhBWlPnRF5xlxlu70xl/FHqISk29wQn7tVhRq1KLTyq1dwSXEgOjMY2ZHBTL8ymyzYJ0KbrjNTqg+SfW2vc6o4k/AUHmAa83dHG1ff5qQXzVtWNvHxXcZGxrWNLeCsrs8TMf0q/AGjdl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782052594; c=relaxed/simple;
	bh=zOdtMEjX3ShBq8Lchuhd5yZubyrBvR2eawniXmP5O28=;
	h=To:Subject:From:Message-Id:Date; b=o9GMdJfa4ymZIiaRaA44b3t4Y8USrfxR5r9gAmlwBKEoIOni+BFp20oCmo68x3zZWk1cSNPz8UKd3m1Yw/EBtd8To2TnKNeE0ap5y21r48mi1EOje5xcplQpsgVIyxNJMu4wSHQsbE85lIFTjip9TywYxkbf2c+4DKFyUoJCicw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqzC4oW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqzC4oW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA457C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782052593;
	bh=zOdtMEjX3ShBq8Lchuhd5yZubyrBvR2eawniXmP5O28=;
	h=To:Subject:From:Date:From;
	b=BqzC4oW0LtjBE7k8yUlNeJbuU451pxCPYeQOoo8eLSIgNMcPce7NNRhAB6kvBkrqJ
	 sCFCbXfH0Qqetg2KKdRt13log40hBzWSRa60b+rBsscnhtwvUPJG7Ia70rOSlMMNzQ
	 zzp98Srkck5A5KRukNqWRYq/CMvt3E23kuJ9a8e12FwCIz90wPOxhHVN/xFSQ9R853
	 068KFetLH0D3Uq50GqK6xfGWKvx5lgVhSeEOXw5eYdKFZwmzH33DtJb/0d+dOcbAew
	 13orF8UWKNOesiO7fIcFdMA3cE2LOGff+t4Myw5ruKLS+5M+5jidU+h49Cwo6JVpUf
	 WEmLDobVhg4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB129CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205259369.4421.2538098614634770573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582c0c62c914b876f7a7577392329dd7045e3788c394115cc2096bc7809fee7d
Date: Sun, 21 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782052593
