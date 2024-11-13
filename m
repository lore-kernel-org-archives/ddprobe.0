Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CB74C62E
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731463554; cv=none; b=fCat2JDhTr0PeCPUIMDxoQyNiwO6ozwjr2LZ7Ojuwupexrl0Jo1T5vc/QEa02aKaYRJIXX79DBGF7IhIkmQsrmV7Wr6nzlWV+Wxg0yFP58k3pjm78en/oL+IKykDkEJf2U2jdehsBEFLr/DeiMaXtS4GT4QhWpuNSvkT2yL3CJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731463554; c=relaxed/simple;
	bh=5EDJhtG5Xca4c2M27izOE0l/0R4+pA585NkyuPpU6Xo=;
	h=To:Subject:From:Message-Id:Date; b=bkVv+j/fkaYXdWMCkm7VHn+ZiF9h9GvPl6XftsH0usKmeLWmDN5iMHAAb87A//MbvrgjzYTc3kujs3S57LEoU8XzxD2D7dVfM74jt3Ubiwq71VUN1HMnta0Hhbz0cFafidQ7vQU9jkErQ1Z8n/bAnMwBTrriRkuySrZxbjJdBPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTAqWK/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTAqWK/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0721C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731463553;
	bh=5EDJhtG5Xca4c2M27izOE0l/0R4+pA585NkyuPpU6Xo=;
	h=To:Subject:From:Date:From;
	b=sTAqWK/lb7VsYD6oU6UaqPzQzsppvcWvegPhIop7nE1OpEnfNMz7db8kyl0MR8x9K
	 xo+EnT7GEaJjFOL4JocNnRKgHkyNJzvnFFrlTKN8HB50vDaAoNkT89iaWGnyq9WOGj
	 ffPgDFVemcPPYe0SNg3zoTbwJMgfRQQlGhcDxC5s3P1eazWSuK3qHBXL3LrXT0UNwq
	 muhZsHpfvjozRD10VbcuKUIJysVGqXawgvYAARaQjpM4/eL9iIxvbOJE608VxLvtwJ
	 VaRCHgKxs2vazjJegr4n29kj0kXE9KIg1Mbe6HdC+Jdvj2yWuOzNyzUAyj8eKyvlb8
	 WR3lCS3JsLIEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF8D597C5
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173146355358.6430.5532189000658130073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b2654f758d7d2945c83dc8a46be133def2fd6d9ff0fbe98d79527ff30f99cc
Date: Wed, 13 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731463553
