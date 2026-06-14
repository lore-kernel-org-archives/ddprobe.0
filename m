Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B0E1FECBA
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781399794; cv=none; b=Z68kU6IaY9IfiJgn3P2m93H60+NJ9u86/V31+zWo7WNWjReD7ydeWx8Nu3vH67QO8HnolQIsVzos8rCFWkcK0mElLVML42kFj7aTpn3QN8gaCXvqbCqIqdWN2bKKHuJvsGtxIo/mhvDlXBCeDYijpwEkUoqjYXbbLsHFOcMyQbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781399794; c=relaxed/simple;
	bh=4aBWIKzTGaxfImQDpXt38UxFQFWhU2og0u3PkTcQdlM=;
	h=To:Subject:From:Message-Id:Date; b=gWoLnCBOeVqpg0etkmqZR2dxhODS412epvz/JKABe4jbQ+ZRDkuy07wax7voryDm93Y6oLo9BDtZyeWKsktucXY85qU+u5zcuhbEIckapwQ2RPlA1+iMYXGBdojdRRV0+PKrgjO8CEeC7qpibNZeU63fqeYd17HlRkGrHFPpFRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d01WlGXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d01WlGXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7423C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781399793;
	bh=4aBWIKzTGaxfImQDpXt38UxFQFWhU2og0u3PkTcQdlM=;
	h=To:Subject:From:Date:From;
	b=d01WlGXx/uGEMuCSUDGGPpTI7/VpykDoXsK7iSFjmPi5wnjmEbEXZbrc1wSqS8oND
	 TAHXryG8NSBLxiFonJ9LcCLJ6jcHofoWPjsj8vwHGs3KOgorq5EIfbAxmi2e4EM3aI
	 iaF/YIH204zbkniiQkVxrCOyc14REs44ePMeZQTszQg/S54FV9bKfXx4jcFhq1P/6P
	 EsW/YdQFR4FePsS9dksmzPlXGGiGwX0aQoCk1CADqil6qP/pnVSiFgVCAzF58+7VQb
	 Hyt+1nHhHuJBn4qtafq7cEXV/4BBYuD8Vp1iLDvQCRjNHBRa44JG5HeQKgwqomoEJc
	 Wa5ouJd3KB79w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908ECD98CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139979368.31355.1643785248466798835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4e69cf720526f8fb22f1ca1028feb3ad96c26704dd8330a138b3b87bf8af40
Date: Sun, 14 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781399793
