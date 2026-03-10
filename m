Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18651449EC2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137694; cv=none; b=aETifDoPIZcOiquwTFzBy7imuW/wVp1/1c3ZYWZLWRthRfxSqFh2Y8aAF/GcXFSIvQloH7AcQFztmPj3a/gDrySdy7U5vffB3o7B9wpwH5+KuOabEBjW3IWQAi/TgaNVl/mpbwjnEaf5L2EnpwRjjP1M3mKf4i3I8wmE6fapoqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137694; c=relaxed/simple;
	bh=LF0sbGayX+xOkgBkkF7m/7mQEWoKaZSEEWn5bF08qSg=;
	h=To:Subject:From:Message-Id:Date; b=fy+ATYNJWhAEvDjy3VY1NA7+72t2ey/HhxcEPXax+UhOo+uwWIrGEZNTHYoTFktk/jD8DbPvqBoIP09zPgAYH7fCXjqRBwNJb+wxZd+i3IipShfY5g5mB4B4AcQHno6G0ze05CTeHQJsteVd6sAqSO3p2w+xGqgt9OWp00Y0P2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op11JfSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op11JfSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDDC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773137693;
	bh=LF0sbGayX+xOkgBkkF7m/7mQEWoKaZSEEWn5bF08qSg=;
	h=To:Subject:From:Date:From;
	b=Op11JfSGIa3ugrJseJ3Yqd+zOcrkQqbzna0ARNkFpphZ8CC2sSwZMueTN85UpZElB
	 S+KYJoZrqgXUg/T7oSM+iosYjeC+c8y+IzgwDK2tHl5Kox2hw9aSDrnuWtLrUjMZMN
	 vtv67JIm/y+jfKhxx5RfwQTxyQxVAQVLUURH1esbYVr58gX8c3qZ50MBGvQhwj1I6u
	 GZ+mtV0Baa20TjHH1V3vGzRlj6jWF1Wsf3wR5vFfW8maFY8A5oc3oH87Lvyg+7RnPE
	 OxKmkRIOHOYXOVUmxL6JqiK61KGvkPsJhkAW6MKNvNSxo+05nl449b99OEc3EfGf3n
	 nIomdiBrQ7qgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082CF3C27D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313769358.6319.11854318146622236147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f466fcda91b56fa582ec4e13351c75287b85144d1db509ddb87dcbc94cace0a
Date: Tue, 10 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773137693
