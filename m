Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C392309B6
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749627594; cv=none; b=MnVDaIT3dNfcUxqY3mU2opm9vEqGtIB9a0br3qO9NcgBVAT8lMR4BEKJtwZPNnErdDW5PpofuHFNuhS+xv2QZVPZoLpcjTw9pRMGaEGlnoXcnXiBXdRVLnS+0JVWUc7WbHg0rXpigEj+ARyijc5HXhiURmBwfO1w3QlcxcgsV7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749627594; c=relaxed/simple;
	bh=oxRMPeoew++mHNkpbuSF/5VpcTWgGWqqUhUfuij2NUQ=;
	h=To:Subject:From:Message-Id:Date; b=qgRoQcLom9Ei/Tg/6TxHshPJ5bERuQaCSCrSmtYvtk0PQbYOqGthxO5jKjk0Gqhl7bOODKVLOigFATSOryJW6N7iMql0pIdzsmAjJGiURPjrGZBRDTn41YHfyw9gehoVW2w6d7BqChXP4iIs+p+f8nuXmNggchDhRaEqDCj0/t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPmOS9Sq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPmOS9Sq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E8DC4CEF2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749627593;
	bh=oxRMPeoew++mHNkpbuSF/5VpcTWgGWqqUhUfuij2NUQ=;
	h=To:Subject:From:Date:From;
	b=kPmOS9SqET/s4csEX+cG3c+5N/MXT1zsxWgZ2aqk8WdKIb5la/a6nz3dlaXxmXezO
	 8A+rtCHiNdWWlyENC6firQ663o6tRsd0J1iNUsRkEWbipEMj6fyitfn8hv41R9ACnc
	 y6HX7TL7BzqPZ2AMYWf1+EP355HseRlFsokH/6Bk5L20OjjNeD4pnagg4RVb9g0gBi
	 MPiNjcQjwiow6Kqe6KhouZAXLbQWjD2ieeAr7sq7WUhJfdF8TM3QGtdlbTk1tloBoD
	 C6ehR0yDj+X+OabpM9Bd3DcxAlTyeI7KAYKGe+YyfkS9pABNemrM7EBzuSdcUYckYy
	 d498PEI+Y6aHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975EEC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962759361.20216.14069901903225955730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49f71aa77d4078becfde0401e27614746448e7750574c28a3e7b0ca18d30428
Date: Wed, 11 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749627593
