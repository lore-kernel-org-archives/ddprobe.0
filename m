Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E46171B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781655994; cv=none; b=LoyHtCWDbYYYX5XEohGnWAbTG/I7c/NPvTZByeChzqd2D3rGX5vx+GAGe3FbgxemCQOHeFXqhle1BQDRZEAA7bJ3gWnBmygGQImQ7pgvCkuA8t7WyhavmdSMuCATsFksbS3nAl1VlnPQ0IgoQve6rxTqk7YRJcG9h6dNP0folHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781655994; c=relaxed/simple;
	bh=A5kJxoXTK7FgxebJmL7KggyT68wp37UlCygX6B+1SCw=;
	h=To:Subject:From:Message-Id:Date; b=mWILzCdMbJKS5LjFNN1WEPHR0OvhwSfSJg5c+tCzjosA2bOoeBnxqPxrhE150xT/DvuxwqQtPdYKq2JtqlLZYS5Gil2zjkwu+bOCUBaxX+JATSIM9Ro/6xGsT6lWrioSf303GMIblkr2hYdsJca7hs14+PYRpE7uG/rhDiCqSdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S//PyG2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S//PyG2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DB0C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781655993;
	bh=A5kJxoXTK7FgxebJmL7KggyT68wp37UlCygX6B+1SCw=;
	h=To:Subject:From:Date:From;
	b=S//PyG2xe/XXrPVXzFDOgSh35YnZS2ZiZIL3RiZ1TbHENCT8sydsEIwi44irXe/U+
	 8sfrako8mNEB2U+783uPPPb2u1zI4+2RXrHEtw8axNyHNWJ9FJ6WIiV7UQGiFaRbA6
	 oTobZUmhMO49A6PxsnrZwOoURy+TkYk5qklpRUr0I1dIWqo5AZw1TlFfKCrdgkuzJJ
	 COHyo2LMMrNC0ZUB0ZFsPK3Rh1tmUVdi37AdueBI4m6pJrqWnuCOdkRfFVs3f0nk8c
	 3LeIYTn5sQvFWKyjA1HaUPQ+2ywZ5s8laV/2u499sfst0QFQ+aXsJEWUTSf4ZF6+4L
	 hJ3BLp3WjXr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B7FCD98D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165599370.27309.1876801658050293252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c863f96da492dea97bab2845153cc86eefeb8e154d3dee5f5b6287bcd0f975
Date: Wed, 17 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781655993
