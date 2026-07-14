Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A2835BDDB
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029114; cv=none; b=mkBGnqW3uunikjyuPd9UncTYs9YsN2xoqQH2zS3qrfLITB68mYmVuQHUcYnqjzlm7QTqz2QHc2RDPLwlUMV9zy7ftGSo9iDZkTbi2S0eyIIyq9bM6iEAqZ8SYpA6t9lKsd9V7xDQ2VjcXF7WD/b/PJ/q0rKlwPAwPOJOHey1H4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029114; c=relaxed/simple;
	bh=BFWooKhbNeGxnIpf6tr79dPviHpGhFhz0oUwVmdPnBU=;
	h=To:Subject:From:Message-Id:Date; b=KBtTaClOSnOi1dFp4W820PDSpdATjcJ66pqjl3PVJjWn/8Hm3lo8OFMHbiwTkDUhqVVedh/zJirp5yZ3CDenC4R3DBEwQkdRN1f7+UYk5d0wZ3djQctTxPOMfQktOp4OqVOZBAGY/7a07Yg8Ml4JOPgmnTzwu0Z+TbhaHO96Rxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSY3t1TW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSY3t1TW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAEBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784029113;
	bh=BFWooKhbNeGxnIpf6tr79dPviHpGhFhz0oUwVmdPnBU=;
	h=To:Subject:From:Date:From;
	b=SSY3t1TWcwC2FCzA/wDVd84DEhKKXUIxTsCDQPe0icmXYju9fqtrLzWNv8LZFUsYX
	 QUmEWC0bnDQUBY7Xr+FRo17QRRN18341P8WU/1j3YYA5+kVubjI3eQP9kFD0n8dZ5U
	 HtoyhY4Lfy0GntBcEC+9HkJ72xRleMffjg/86nPXFRqH+v+Hxmn3fyxct9FHkFaqtO
	 z8wKFbobQ+q7TvRZJbRn7wEN+Ull5wDNnKxD6SLKjnHm4428+Rpw/v8VFNV9DgSI2H
	 yNnWZQrLW/2iYPFJB6bgswoEnmlAoCPGVA35tIn1bEIsQ1ThapbLCcJAr38s7HS+Qp
	 NPjxumzi4qQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C4C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402911369.3094.2875269248035636234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354fcdeb9932e8e625a3f54e07de92583b118253cc09250b51bb1b2eec2c64c8
Date: Tue, 14 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784029113
