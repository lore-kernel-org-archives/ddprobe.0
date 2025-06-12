Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E9C1991C9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749711594; cv=none; b=BuhoxjvY4QUVMpdOIqJfExu2cKan9DJ7szuV9ELzWEd0rPN8q7blZIm6/iaKJH7+1EtR7GRMTu6zg4p965SXLZi8xhSZGbUOhG+gqsqBEMpu70G8bQ/g1tZLKgkLPF4ePy6qnrqWV3idS6hw/KKLs2UW8MyaRiieqgomwwGKFo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749711594; c=relaxed/simple;
	bh=d3aHGWgLdZRUeLqJ9q4HvXgWZjaWfGs5VkZINjtaLZw=;
	h=To:Subject:From:Message-Id:Date; b=oFWhOliOFupTSJw7t0RQLw21yFr1gCMQA9EpXgzE53R7J4IkUduTcqJGKAb1JJ9PBPTCHLq8dUDpynPTZGpNYO3j8JlkyUzmWwJrVGax0+pOfnvCk3DxP6MlJIvEtR9ilZu/a8EToa5BByF3CA8/m0rclGMSTd2aTYNUvL34oCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLVin65u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLVin65u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8021C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749711593;
	bh=d3aHGWgLdZRUeLqJ9q4HvXgWZjaWfGs5VkZINjtaLZw=;
	h=To:Subject:From:Date:From;
	b=jLVin65uvajqkPu1SftTsB5+6K7MWsG6ZTmXQw0oAbnfOkmMEHqrviLitlFplm9vC
	 G8SAvxJNZeoePcG7RjyToI/xAnOBPRhG7MMPy/P2wJX0dKovjC5NyAXhDdHVjw3NHF
	 t1Y1ytaN0ntubJWRd4PIb3D4T11ZJXrkDGeVmVgt3+vt3KkxavJgjfytaCkNpCCPKE
	 tLpqErpLTN4lqpth2s8RrxUhl8clzGX6dLWdcKwgCx78eqC9zRslsKT7Kcwj5E5A3A
	 rrQoZrmcE7Esv/WBXDBkohRj16v2h0Or26v3IiiHLKlmwurHMbAurBLGtTtLs2XgiM
	 OA6CyfPMyku9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F985C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971159364.29704.13330298750696148467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebbbbe942113c0fb83b8eb7a0d22f8e0106f69e007ccee4163d458e449df158
Date: Thu, 12 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749711593
