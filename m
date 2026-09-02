Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA6014570EC
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788392434; cv=none; b=WK1+zPE9uuKy4dIkTq5hOm3WMG2oCtJ3ITaWfLKheM+5b/xmoU0Aj5NSTKaM/7gRlbm8SzRyXKFiqmUUzv/yEjK81YYYuEQaDkFm0mHa+yT2KNH2h5+9hGTOgJozWtf50D/G26I9y1vqQ3p7C6cHnkHNZ6xSep6BFoeUQUCVA7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788392434; c=relaxed/simple;
	bh=+wlS5ts9gvJsuOG3pYmSXWN5fbBe22lKLOUZN8jgv08=;
	h=To:Subject:From:Message-Id:Date; b=h5fQiM4fjuBn+ODvCVLLQELXYDnFnp1nTIaOYNlpakEoAqAXns++tMr0y/e40bbOvyhVKZxjVaRLzC4PCj5lOi6D8OU+aVJbVeMhA7/oa8BoaT3Br5JPShjfmJHOv+GTmTrw5bbHLF+kGHhwHCYP7caFlTVJgrVzwg6bM5FUQVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHZ5Rwrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHZ5Rwrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D699FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788392433;
	bh=+wlS5ts9gvJsuOG3pYmSXWN5fbBe22lKLOUZN8jgv08=;
	h=To:Subject:From:Date:From;
	b=UHZ5RwrxlhSO4Ic/ChwL+cbd1aIjhNv6n++SU2xKQpTDujUZEk8strXe/VDzjIarR
	 x2MA139KZnbu3tksc8XV/wqLTXxox/ngB4SgaZxdNKrPjwdZDP87aZvYFAlzDam3/z
	 c3Q6TtxFRZcU5yAGlbCFCK01JO13yS+JB74FwB+IngQA97H8pQs5q/LUlPcMdObXa/
	 eXfIS8095oWsVYN0P7uKn7+Z1FlQV+NgEF+0bnTaXlL+PzGMWE7fT3oL3Ca6hZlxyR
	 QzfLBDEwX+mzCxjVX8gzv2EWYG1Kaju8va1saxG83b2L+vtd8bzBj0nB6XQtvmXn8y
	 1H0ISQg9xe1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B1FC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839243368.19960.10028797916618805075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fbe584cf5a619e193bc1a8f2745f217b665512787d586ee5fd62c33bc0c6cf
Date: Wed, 02 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788392433
