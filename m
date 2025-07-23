Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD5D149C51
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753309794; cv=none; b=rSMT6GpVhz9WDkafs/G+FWsvANQjhHjA1GZqq4PzPZGpaUKc/Zq9GIsD3dERDIYzTzHD4ztjqH7rm9WBCcwJSrt/v8hYCY0a2OMsEj6jDGIOhOJ9hNrEvhIv3MmRQoCQ/APQATJsrkd9KjDGDfP2sY/k6xgqxbUHojC2Yfz98dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753309794; c=relaxed/simple;
	bh=flExqstQ5kdkclHnYi7NnH4dCynK2L5aSzuLtMSTQHM=;
	h=To:Subject:From:Message-Id:Date; b=HyXEPLedsgjTV5fPU98FPjMmd9apKaSgFVjaZTnPtBWbko5yhbfvYhwP0KVfgrdZvboXE5WvLofPbLZh7mR9iUK52jy3L1WaOoICoEl0QMd4nU5HcT0VnIuBNzBMf8MbYqXH80j6Lb3acX9AQopjoh0JEjL7pufjXLV/VZvZY1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzevGfoa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzevGfoa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B76C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753309793;
	bh=flExqstQ5kdkclHnYi7NnH4dCynK2L5aSzuLtMSTQHM=;
	h=To:Subject:From:Date:From;
	b=qzevGfoaCGhyIvPQ6Lgju4lwoXmVdziV19WhpkhXPQgWNzXrCzaLTFlqOAcpVjo2c
	 BefJ7jxMizOrXsae92T3JZFfc+RDJxgpjyH+jFi734E+rEpnu1GXdzT8vobVwPwSWg
	 pGikY4o+9uqt/tgBevhg5i6XZ25DFdfYl6dxJVXGIQRdpvnTJJNCIEsojPiJwl92/o
	 7Rx1olTiBcAsaS/mbBfpG4eHC8FEP9RJN5Jfw6NRz6Z93ca1DjuA0qil4cXTv9NxSF
	 fOZd2L4yeSYDBl6vbIzN5SAlkQ5btimqnLJdmObfiH2Xp7Cnnuu1mSwFmyNBfpcQbe
	 kuC67avwf1qLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96FC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330979357.15501.9166077385825209452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb61692603cd0c8e52c8e12e1dd1235d79c782903f32bcdd6fd2a6552f7f83e
Date: Wed, 23 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753309793
