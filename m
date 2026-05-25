Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383492F7EE7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779703354; cv=none; b=fmOl1bIDRvdK2Cpia+6tyOnPJWU0tAU2LUS7/safrVXXBOb4emscEaX+OmOABuE2Sau5j3IzQcmeL5Zi65aZPjIucn0TCkJovR5NZG0rT4q6oz9SEUEdbZIeCW1d9C+hWJbrLLYs3H3ervpyMl7SqSw8lw117d7IXHI29nzQyhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779703354; c=relaxed/simple;
	bh=0piTrCR3LDcBTYQNG6ZRl7rUEAfuA7hQ317lD3fWoys=;
	h=To:Subject:From:Message-Id:Date; b=T9vM92LexpCKjZJn6NITRekzDdaa25fo8ss0b1B1GA//FE7xH7XCbw5NJ2YY/KQc+ahis+vsVqPaIJ9RLY4+PHufFdgmiGxTegfgyBDa1qFXuiHRUFBVcBiOSExaxY/bMQq1OyNwUGw2Uz1Dq30R1w5TTNLLC3/cV3u26o6h9QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwLebmQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwLebmQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AC9C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779703353;
	bh=0piTrCR3LDcBTYQNG6ZRl7rUEAfuA7hQ317lD3fWoys=;
	h=To:Subject:From:Date:From;
	b=XwLebmQ1uoDXJQJSGHTuI2nAG+u047DHWVMgTYCA9ZY0o3PFhQFFqspJ9JIHMxKWo
	 GvG5ZkcIFtRGgJjRfOrpaXjHnKvPswXY2PQpIlI32vp6/HcqtTBFbpxtdMw+XXDdQL
	 4M86kY6xxjgy89NlpReCoegU6CDedUQ7QkdRgRF/x05XyNoqzDy4KrhaofZ7j5o+7r
	 oN6n/aZvs5Hdjaja/YiKmyFNtXJ5rBNdoiBu1Vu8tv43bSrOE3gN7PI+nw4sRUbG+/
	 v9vZ+ZeeOt+AMbXhnB79Rilz6GPN3e6JmuWtQkdKaW1xisyBo0i7MyP4vhPgADoc7Q
	 JYGiCHRioe2IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC522CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970335368.1989.14475889901228170927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5db3cd2832636bd911a88f5a239c84891a14ca2d51cdbc8c64946910aa67d01
Date: Mon, 25 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779703353
