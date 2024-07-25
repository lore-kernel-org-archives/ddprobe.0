Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2289619CCE6
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721922954; cv=none; b=tn2R5dsO7xpncB5l8xObJtgOuqF9zPRYd0BdUv7TDMdNxESJgyxAqBkbJeG1iant9zJ7ZRLHIXAqPUoarFviKEqvkTAJ3BSDIPt/2MrsOPxFiI4hNSHBathsb3Oc+vdjzroZsjmRbKE4juz6BLzVV5UEtTinugDrkKN/u0c9xbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721922954; c=relaxed/simple;
	bh=Q1x84wCAYQKVe+ODxf7tagNrTNoSoEvH9Td9NXbOFbo=;
	h=To:Subject:From:Message-Id:Date; b=UjqtTsNuMe/Mxx22WMDOKB/styQ86P8qcCwEMHhZqHKw8H7SMuMBASAp9pOG7fzOLnqnAT008l5dqZ6JjuniuKk9cUZRH4w0ahRAagdbYOJlYbtVKPq7GfKeTyMFsOdVKL9gWPC+FWGiB9WajCNcLHQuEvVt5xSWPuDXYXtHUWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtGrwhIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtGrwhIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1B3C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721922953;
	bh=Q1x84wCAYQKVe+ODxf7tagNrTNoSoEvH9Td9NXbOFbo=;
	h=To:Subject:From:Date:From;
	b=FtGrwhIlyQWaKornK2QXEzQLz4oW641IuAYOtWYI5yqB3iPFVEp6qd7b14jSquw4+
	 cW/9PY+Eg9WoF1EVQSflsxKENlE42iub2oYOii6X8nu3daHykCIF7n9zLmUBzIptSe
	 bd5kZD4GwTzxjlaXiV2BFQsXaTmwyEMI/0LMViQVsInBjatGDfRXF5exN4CJ14KjU+
	 VEyWPqrq9ySjhlQmh57IRNIX8RqoH4NmybJ8Ds3iacccKKZWY36M0oz6raMlJeN/5Q
	 JqALg3R8fs/AqfWfPEQHXmxHjdtya++l1R0lt3eER8XPJHPucXtx/Y+hnirjTXN5q/
	 QA1Uk+C6E+tiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965F7C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172192295360.11179.7238485745439168520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e32dc71d0231c0e63db0c73eeb721b15399eb54fc239e7950c900366b742407
Date: Thu, 25 Jul 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721922953
