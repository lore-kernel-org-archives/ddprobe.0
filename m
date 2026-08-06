Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEA141F5C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786006234; cv=none; b=W9B5Jk3f07IoOPszom1pIjeXsW6ycOx7LmE83QA73zmEtMhJ3DNSxs528H4tszn38GEbZvnWNe8M/het9kKbEDkuvLBqQuiDPzjjjNY7jmz6EoKQSIoTKpddflWGwxWnqp76sRK/64sDGIRUDYysA5vIjz5bg2BLoDissGDlqHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786006234; c=relaxed/simple;
	bh=YKxTgzhRQEDVyuUXSTPjx2w+CSXzEsRgDYanwfwjpkg=;
	h=To:Subject:From:Message-Id:Date; b=Ob1l2kmeWJlSOB2zO3EZriMENq/LOpnUaEtSbCZq+r26S22qtQk0w6OYGl2lYNJYuBzhU745wV4MdGpE/VX0ig9PqtpfnRXKnZM3vA9ZrgQpT3wd0OtoxYRTjJH+ZOy8Ztjwd9C3JxQCC30skVHDtS49kfPgV5Caa/r6P0wNS/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScSR+4uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScSR+4uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE932C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786006233;
	bh=YKxTgzhRQEDVyuUXSTPjx2w+CSXzEsRgDYanwfwjpkg=;
	h=To:Subject:From:Date:From;
	b=ScSR+4uLvRfrdcX/eDu/PWixRjc8/tYK7YaE/ios+q11eq8GymgIdMswSrK6YLs9c
	 CbiBbVHsiaZ7Aak0n9/DQpakU3xSAZxEn/MmimUK2lTlqVz5v20XFkQjk9dIAbJJ9y
	 sBmhdlXAXYWjivYoArGUce2R8y320IohZAgTtmFJCgsgmQhM83m5nXvOi8J3VuKprG
	 tkH3Iaq5BTCkXt6WGyJxLigeSJqfpo3ZTvuJtYfD++lDsNkrsuZgF3fx9WSm/RO4nD
	 etY0ihFKOwXTIrulZMze9MWqpBUak80F9raJasN58IZFuFCVLxWatAmUG0gdEJF03Z
	 VSRukQ1NtZWGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC555C561E6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600623369.16131.1231730919260936361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9cabc7694e53a48038e3e3049a511822344bd586ed284aa390578ec699436c
Date: Thu, 06 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786006233
