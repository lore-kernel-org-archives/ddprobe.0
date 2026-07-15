Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581F7381B1F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784080714; cv=none; b=cjZ7H4Dq3yZXetQyZXoS588Utn+6BdlthIj+hPJOv+9aJegr9+kugsvzfhS88uKfOqIgnIQBJJYhTeumdq9B/SKHUWkjwgHxwevpQGs8JdOuxe6KaunPu4zx1g4EgyPr+I4fq5lO1Oh598nZGf9uxEm6Kpah2Qry/O3nfaSqmNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784080714; c=relaxed/simple;
	bh=bKjpSwsD0n4w1xfrfDW8lZsVQ2kYvjdfTNk41JlSDAo=;
	h=To:Subject:From:Message-Id:Date; b=USniOkJgOxCW8l/AyGAymfWrmeRG4eszJD5VptncQrpCq24fLVhEHwM2levx62mIYZLTgoaDA3ulbKWE4EQV2ijifYNj05Amy5xnleK2mWw76CELJEUoAQOLhLLAPx9zA69eb9Lo0tedzZOC9RD3Qfw058+cF9LLBHE65YMwyy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1pUk+mI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1pUk+mI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3573C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784080713;
	bh=bKjpSwsD0n4w1xfrfDW8lZsVQ2kYvjdfTNk41JlSDAo=;
	h=To:Subject:From:Date:From;
	b=O1pUk+mIAm4pJWPkxH60to9pWwlJ2EqTDwTDu7S2ebutCjjgwvmRK0xtPYj+cE9el
	 L7mFbEi54fHaMRO+OxhVlYO2OK/+qTcRolA+zVHVn/hp8LN/ZrL3W3dxgrAaA2IEZe
	 2xvS6Tl3sroS1AT3vOVotsXYjZz5aDD50OB29007IWaXOcozr9MWzkS8+j1+koeU2J
	 /sN1+b5MoHngR32b0z4Fpw8Clm+35aLnLs/b3TDs8+FQa/baKt1CgHJrla7sf1A0qg
	 sr3wms5PJ3SRCfPV4wCACYVc0H4EPwi00AKBSXTVSpRZC5UqwOp/S/gW/360qW2gmi
	 JQSgB+2gOZEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FBFC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408071371.20414.2226169124203322823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8993b3b211df131d7558bfc576467ebc4b03200d360b37f84f9cbd4ad8d00022
Date: Wed, 15 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784080713
