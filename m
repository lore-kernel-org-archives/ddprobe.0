Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239542F90C9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780931674; cv=none; b=ghIFzwWcP7qfhbobiasXK8tIrqxL/yMtBA9pcQGFqc1wEtbepXpbtk7gn5x/0i4NvcOSkyq8YItz1h3BfeHHQlhFcqrcdg8jBcn/0574XUqpBE3cZWkg5/xnN7Yoa/BmNS4EfMn8yygvVptohbyXFoZeql66L7V/8sInagm7sxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780931674; c=relaxed/simple;
	bh=3bQrRbdoQw42lLI267L55UzGzLnrRAxjMoBxzN8TviE=;
	h=To:Subject:From:Message-Id:Date; b=FLo90RKCMLujtLxhoQFW9PzxVheuQcD8R2BjFxn6gczvjUdmPMlHDOje8Dm8iCvEKZHguDXJbmPrMZL+yVXsdCqr5wgOkTBFPD3dgOKwxgcNqQll9OwZ5Z1aCfROIr5IeJFlvu/E4bOEe2svBCAo1PbzGi3Ud/1P1arUUMPtlRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BijkXXha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BijkXXha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C315CC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780931673;
	bh=3bQrRbdoQw42lLI267L55UzGzLnrRAxjMoBxzN8TviE=;
	h=To:Subject:From:Date:From;
	b=BijkXXha/PX7luwd9NLlbrxOAo80yrgvMDea5xEJBfvOzj/Lh1mKg7sA4oWNUTAUS
	 NIgUuS6Ld92OR9AXRWMqND+8Egl6fBmKJlZSvaiM64p98qAmQVxygK19qNY01Og4c5
	 GXpDe2NYohIdXUm71gvmq1gZB2j7TDTeRfrM8/9txj59m0X6hT1zQETZl3Whm1Lsc2
	 vBoYw3BS/CfMMYIFufXMYdXJPkvSQfaeE2Acpete7skfjeTey0TVA0gY5CWnM9dJpr
	 KWQTrVOZgAXuFV71IEfB+VDGW2Lft2U3NUBA04yAAJEzbUU/WhiRgHFwq2ccH8xnvb
	 5FY0qSdfvymaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F28CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093167368.2385.16786536606700605894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbd62775c99c5762e674ee096ec3b5d209b1e0ef66a2abc0ec07b268465bccc
Date: Mon, 08 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780931673
