Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3760A27455
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753544994; cv=none; b=UZwkdNvX6Qf7z3xgcB0HwLvciBIcXfdHQzZ0xdczqlU/uPjcIhA1SP6c9asxaedVw4cXGkVmG/FGzviOR2AjJv+d4xebgK3vxY3T+uB3qwNH6ChwbJLkT6VPdbUuKYWoiWiJO1xjsrFyxAUMLOxEW5LvWEoIA5nEu9/cspkFqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753544994; c=relaxed/simple;
	bh=Kyjs+uSBblIWrBzL/+tmw5YyZ8pkUD5ZV6Zi9FNgyuc=;
	h=To:Subject:From:Message-Id:Date; b=f3GZptrUanPaSc6LaKeEicSEwmjRvyW4AKJMrXUnkJ1WrdzjTirZyCor1MOwI3AWcTzkSHnrsPCAAxqFLDmk/XdkcPBZ+jLnPLBZzHilNMkHHm8Def0zB1tsW8wB+scR+vvfjjYyBLubS1lNjBYs06tqpJn+fEdYQB3jvTI1cuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrndHG8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrndHG8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7411C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753544993;
	bh=Kyjs+uSBblIWrBzL/+tmw5YyZ8pkUD5ZV6Zi9FNgyuc=;
	h=To:Subject:From:Date:From;
	b=QrndHG8Su9LihPkFIoVtGV/s4DfxpTzRxrbEsq5qXLjdWkjyFGcmcRHVCmn2IVTGO
	 AnnyTRFvWYzn8QPrjiIf6fMZYq9L3tyHwNagVScrQefncY/D0xuO64JgxH8i7msJdi
	 QOpS3+b7w6wMBoZerJRH+Vw7v78ZUusHNfiif9O8xWr+4wgIUR0HdACBFc1n/eFIKt
	 47le8gj90cW3/d/3ZB2CAGmHm6uF/OtMbnaUVJA+hyfGf5vICAfn8mQoAlBYLTaJfX
	 tpCdyTPnFGwj1kafDGYOeXgJiuHgWNzubR9n7xiMfJRYjU/0SB9PkUZJdmjMyuPpYM
	 YJlbhhBKwQ+Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310CC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354499358.13615.6629978397031264134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27f23fa586c26d2f275393a2943c188ee9b04b19cf90605f47c0ee8ddf42d30
Date: Sat, 26 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753544993
