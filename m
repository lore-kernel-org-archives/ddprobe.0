Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10ED61EB48A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722542755; cv=none; b=SYysjSO2qbAfy/2tfbmp5pCqk8640asSNPjs+iMbEhJv0zERqqe9lWETFLsbcczdJXWkMFDcCo9taXa2eAARON2D9ITzCy6uBSxaisfoGkVPZS3gmoXY6LQBQFUTi+Zz8o0TnGt3u4SgRR1OcPMWSppHr1r4s9qBUiJRS0OQ8MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722542755; c=relaxed/simple;
	bh=geMtRAbOcD5p8ImRJfXbFkBZZkLNK5oii/iuHcKqbkI=;
	h=To:Subject:From:Message-Id:Date; b=YnVq9tVi4FcVVGMLGoAfHChvX2C8dQdw1OGRrx8wJIKljX1AOXzssaRnvNrWZl29peOJc7QIxTt50067SO3VEx67/ayzGs0Q4cmBv335w7WuNBtzsE196/cyrSPExQyHKMb3CXiTIFnQFW+Qu/0km9STdtYEKU+FB67Q2aQ8yXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOUc9iO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOUc9iO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAD9C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722542754;
	bh=geMtRAbOcD5p8ImRJfXbFkBZZkLNK5oii/iuHcKqbkI=;
	h=To:Subject:From:Date:From;
	b=WOUc9iO6umPjPuq1SlrxU5B58T1yHq36P+5Yv5vCGaLeo6YvoBjzbYrB9XNSiUyIL
	 ODjk52SYuS5L0GTNiCQFwnIDVze01SHWpewH7kBJxOalJvSG87cTiGOcVEWzsfpHrO
	 LbzR3tJyRehgxpgjvNOksUsqVkhT34wWFi+asLoiJyTsr+XX+/WKB7BFZrOpahngsY
	 BP+ytpKTfJw+EabzfB/FRu59UGYzFHmdeMmXEBwOW2xoYYSbW4S20I16Pvz/s7GhJL
	 9wmiGLvKoLOkjA0lT1OBPaJrUkxRe/gv75o6Ap6sLVPAxz4o/JUovTfSrsEaS1Tpsa
	 fJfcfQQL1UDSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FC9C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254275361.489.14453160926361175534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8ab86c0e51495552bcdab843e8cd98fa6c004403234cfdce35abe213fcb853
Date: Thu, 01 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722542753
