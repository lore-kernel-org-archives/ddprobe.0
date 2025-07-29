Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131331F560D
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753800594; cv=none; b=l5Ft4EpMNmAEQ970fImowsviyfTKa0+8G5imZBUjavlr5o4qvVzqTjFUpi6JrkhsbwFCVUEFOv4bLZv9hCOp2isw8qWyz9KzKK/4R7bAASeWQRsG82qY6leqX97C1bETjlWSW2qkFKLEL2gIvSFdMXHYgPD1gZY1NNUU1VlMpRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753800594; c=relaxed/simple;
	bh=jGhcaVWT1JEVfICMazZAoXDlSN1KxpwYTJOPmYbT40c=;
	h=To:Subject:From:Message-Id:Date; b=tjlRISKDPRuELgtao9Mm0yZnV+FtN44gmP5aiNDtSZ0Pkk9ID7AMILVsOQnQ4/xhvsU9VqZocZxaROacKgpEUrhGd96jOFjpCpv1GvEXqEGHPEek2T6Ec85qQIjpOakPDKuLe3kVPMAadl3Nrqx/8hGE3GT91m0fI+JI3v+aTsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX+Kiucz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX+Kiucz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8BEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753800593;
	bh=jGhcaVWT1JEVfICMazZAoXDlSN1KxpwYTJOPmYbT40c=;
	h=To:Subject:From:Date:From;
	b=UX+Kiucz2v4flsnyvpWlcJ7bcBHKHETrD7jj6muykgwrHcH2qpAVRlhUt8FX/t9l+
	 orv5h8vq80agSoRlahMTfOubCmJhBU0OBUO+x8+PEEeDr3L/AIXCdo2ysw4VkzEi85
	 ivU/+8460d3Cjr/3v7BAysokE9z9nHZC8gjfl4b4rKi/1h0tyTwkWelTxLaxZYGlk1
	 /3Wrj2sGJ/2fMrCkph0PoeZj/03bdfLjDc4QGstyKC3uX7ONs70kt3xge04phogHGH
	 IFnzpC562VCKgJHN930ox37Ngd80siEBPulx+2qXvTHRgR5cvwwUxaTHb/N8duIrhS
	 hgC9YsSIipU1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E892C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380059357.26747.7292686146066531190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10b91b368c929a36a4bab4428d03072d1a96702378574786db581e09b34937b
Date: Tue, 29 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753800593
