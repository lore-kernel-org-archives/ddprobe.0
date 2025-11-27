Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3420F23ABA7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764287574; cv=none; b=FMorGVatJuvejM8GFuQZqJLzawMv+/2ud5jRsJCuqyUtiTjB8WWZE9YWyFpuftJ6xCt0cEWHBc41agzhB77YFGhYY/1qsyK0+///cqfvKj+w6DFZqW4ieyYuH29cnHJkcbFmdW/S6lyWh/6nwr7vp7/7ZQmiCzTKlco0mut9mBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764287574; c=relaxed/simple;
	bh=2HS7EC0Gq/2ZM3v1G+8FdixhYg5RuJZHNzcm+pSpl24=;
	h=To:Subject:From:Message-Id:Date; b=q4GfKLQnM3whVjDpAPJxjnj/2I/WDPaVaC3hOTH/I8gmDtURqPUajqEJlKOWlKSbRC+y/bcSU9fafr+YMoJqPnUr0dlOGVwkxkMnhUn1so0seIL0qYfdUCFH4gtPzTuVfDivdvM9E7pS5XNaPV421YXXCIy44hmJ2oVTluiryX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ00Cqtv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ00Cqtv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4248C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764287573;
	bh=2HS7EC0Gq/2ZM3v1G+8FdixhYg5RuJZHNzcm+pSpl24=;
	h=To:Subject:From:Date:From;
	b=EQ00CqtvV7d7ETbSNcu2wf4tdC5C9l9M+f4TQIdnsNpzGJXiX5PQLBY81Ei9NYU8J
	 GEUBLBaNp2qek0NNNKYTc+UHluFUo1kYbM0U2+RcLtGNi11cr5H1W7869tlIU4uapA
	 EnHB7j+pcE5QIA+xU782jvuktMSZShSMumAa2LoEPMsEE6ocDTH52sT+b/i5jpgxlK
	 dccjzbrIrZ5FyhH2TjSXwDUMVdKR9zk09FT62+gi7/dxuNootQBKIzQo9ZtVf8Akjq
	 qrW2+LF9rOmjXcFSf3dtzGOOzjpPUMTvkosE0reBksQnSB5TG5BjKrrXfWfjNhMiJ/
	 eKVjdY5WLDwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9420CCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428757358.2415.13644713189913667849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2692d9e45ee929a566627e9c94f9d2d4f0814a908e67d9cb159ea26cd72b8a
Date: Thu, 27 Nov 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764287573
