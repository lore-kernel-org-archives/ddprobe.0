Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DAE17555
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743560994; cv=none; b=lNbgzKtW+8sama1z1KwsTIBa8yKl/siIrwpBau0GuFYH57OH+K736/cKTpXpZ+ie6AZ3TIX6KyJGXp1/mjSZf32SrfRSb2dLap911dat2VAwyc+varvRAZlhwHxLM6ufpuomaDUo5ycuitypzDNgfkBB9TxtmCceuxlDtzBGyTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743560994; c=relaxed/simple;
	bh=JBPhk+wdnisngYFGZN1Vq8uxbsm0TlDgNgVWCje3Io0=;
	h=To:Subject:From:Message-Id:Date; b=LQlzHYxqVh8vmXWWzIFUsDZGgrANrwFQOGfZpHj7MMLTGzIcr0cvPxRBw25xJAGHJFS9/J6DfBFXKFO30SWqv1982VXb0IM0hUTbKrTLy803Vo8TXZEK0BrD51fBF3HHUzsPTImP4/aQlXZ+BB+N2lemMOn5tG7IoBSr1FzoS8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2Mh45ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2Mh45ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D8DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743560993;
	bh=JBPhk+wdnisngYFGZN1Vq8uxbsm0TlDgNgVWCje3Io0=;
	h=To:Subject:From:Date:From;
	b=T2Mh45eiyiKcIe3MjIm71Dircs7rzfKswyQiZGe7a0sK0WMUMjH1BQvPgqeDTI+Y9
	 dKaWCSqC8ybYvVVU4G6FIhmqWzvF/+SnTLLExlr0bcxva9K1P7Xt2FY50r5OisWmqf
	 xxQM/dIVgFUQdDTA5fJYXyz1q0NO39FFhuHfMnHki/ANs9FPrgRd/+g01C42+ExC6J
	 hpkbYAKNIJjDTXJ+0dS/krtRNKvbciPJ6knLu7VeE2RjjAkgX0FMZNKfzSzLrRDxlv
	 B/vQPeFYSGWMXqcwZnsfomaIKgSddFvj5ythaQYjvKcAAdtviLHUzGsO7yiUfD1yrh
	 882OWdFXwoO7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B29C36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356099358.27804.14276027916706009576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89ecdc1dda42cb2a914c9dca7e25e282c0772ba4a09e50b4ba6f141c6bac485
Date: Wed, 02 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743560993
