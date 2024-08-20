Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44016191F9C
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724162754; cv=none; b=e3BmNKsmGg5R9fUDBduzNRkd1ws4eb9J5QrWmI0K3ufFfdjLYK4/CFLjg1wNt80EqzwSf4vKeOKaOpphAULq/w3GzC0Af8mjfDeHOeS+j864Sc7jWNQsmnRKD6h1gdO9kOYhyQ1i7i5XBoq0UCDRMvW7jY7CnHP6t1/cBhkgh6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724162754; c=relaxed/simple;
	bh=SiHYSqQrA5YSeJ27fvNQl2IgPh+lS60vTaNMi9eFToA=;
	h=To:Subject:From:Message-Id:Date; b=dAppdIvrIYIz/jFOsHn44MooqYjZ+oPD+G3pbql+jFsUL4ZvPOcPHPic5/rpoX/WrVSGqhHc+MvGvIz/NOqFzeGU8E8LF4su9FCUSQ2qs0zkwaon0n0gPW3otNdl5P449pJv9paK0xqWgNq8Pha9EVT5fKjILspzspPIoEE8gCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eq7hAAGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eq7hAAGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2CAC4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724162753;
	bh=SiHYSqQrA5YSeJ27fvNQl2IgPh+lS60vTaNMi9eFToA=;
	h=To:Subject:From:Date:From;
	b=eq7hAAGI8tc38k+aFRRpQoB9zfWIoUQ7OepQ39y40ZehOTabJt2nr0FFQ8wgmj9VK
	 LuviI8+GyplYlEEu3AdS63LSdHlnh1s0OyMZTzBmMK11ZrB7I8BpMHlJBB4ZpY/q6d
	 PdAlCSxzhXExnghGDCdqq40cqzMs0OgNBflTleIMgEqRoQirzbEmuXnpVyfLlSHhAe
	 7g5EigVVvCSca21jHLC0hIxhbWTpKMOeoOChTVQAjObOtqHwk8uuwv/oaMwx0ZkCer
	 5PAfhxHOt/9EaQSVQTqKOVrplYWfiVknO5NiZ62GcEZErd+1JTeWrTjYp1mAdfGwnn
	 m3idLp0/gWEgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CC2C531DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172416275364.24533.5651501707847228422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd812187be9c4751ec177d1f0b79be89a355e89250e8beddc6cc9f42f188e152
Date: Tue, 20 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724162753
