Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8293F5BD0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788347434; cv=none; b=dev3/zEX1Ku9aPeJPqVyy22XpCtPlprv1Nmlp26J9f4iIorzGdV2rZ0wMVYJAZkymZasW7jwfZ3RpzG6FS46nTZcOO9+k7qHWW0LrTQD9ta+TVewvW9JHkvB994MMzoqpoiCGindvD+yVtW4m+zQVVBxVIQGEb2WBxBpRUOurtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788347434; c=relaxed/simple;
	bh=V5QclHfUnfCWWshaARJAsPUuZcYtoKrXoATb22leAjQ=;
	h=To:Subject:From:Message-Id:Date; b=PI4PFrfZi3dg2Xb4dC3vvFnPoNx0odcoXh2BL8FUVNgpfFqd0CmaB0PcRFv07ugX1U/QwfibpuiQjI1eiK4RG6X6UsT5/UsVK0w0rDel6OilxxXXJRkzaoO5yis8iTT0HXi3gm7pDff3FutyL2JVSMjlevh6AsigGcwfJADqiy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+6Dz7QM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+6Dz7QM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC893C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788347433;
	bh=V5QclHfUnfCWWshaARJAsPUuZcYtoKrXoATb22leAjQ=;
	h=To:Subject:From:Date:From;
	b=B+6Dz7QM96opKc1pgsP6lqH9HX1vkjVqtOB1wqjbaEwUPAx9FFQTVC18AcdT/meXq
	 qgRJKp5Fsl0iyfdKhqJFAYjQrfzGa6mjoNMTcslpUFOGYGXn65NRZviijS1oeAv1xZ
	 WPKrx6DumgxD1DzRwhmYf1Z9kGIBHSylUcDZJuJZVozvhGGlqFU8oCvuoIqYgjBnG2
	 mbxN0OZBpQvhWRTnLcdiYQkHjG+EYgLA4qmaPQ/c/0yFD3iRWoarVZyespuKZOHnub
	 DymXe5ZzPFTEdJ+o9qs47fL5ITpnAHfKVSE4Q5UiCQHHswwxFqPalUvKVBPeV5Ix00
	 0HUh48KTrUhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA105C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834743368.23946.9347929508265252844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82959b4843d65a1e4c016e492e76b64d0b6955f91637ee46a7cf3682c913d3d
Date: Wed, 02 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788347433
