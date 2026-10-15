Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457172F39B5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792032034; cv=none; b=cl4A7jb9Xj5AN1hzUbYzFz8RoKl3hnsImeipr/aUKaSNrkoLIyiEee+UU9FtPmO8p9dem3DdJ7lghQJAbVZRWJGGpm6jXnsa3+kkZbI2KS/7I9D4IlVl/F5BEGcro8x2EU322vrCt+ZyD7KChGt/Q3t8k2lcXseuEoD7PHakQQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792032034; c=relaxed/simple;
	bh=NSXosTCdbncx8J5zLzCbLXOVyBCgSx0bsAwkABI1Wys=;
	h=To:Subject:From:Message-Id:Date; b=HQx1Yk1ZpBP9u/x5kq/vf/CEmMa73U5zjoD4za0MCwHqxX63VtDrKOlOP6o5yTJHSWm5pRP51q4Se9YdRO2ZBP/vZYdmnp0rBKQqS1M+lrdpLv33PB0wu0EoxpE2OxH1lQC1NRBh2VfSobGIMCLrVO/cAujIGP55448uVTPe1us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvCmvQ11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvCmvQ11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4717C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792032033;
	bh=NSXosTCdbncx8J5zLzCbLXOVyBCgSx0bsAwkABI1Wys=;
	h=To:Subject:From:Date:From;
	b=pvCmvQ11NVokhuKqGOnM6PKXLXQXdUIQ1ltjmxwyBGay+ZPNX9+6TohDGN+Mun/b5
	 GJAGzFARqwsaHqnMOoAkYPaP6ZcdVx7Vd4I/OSre74E3qnU+3QyILM181BvSjCv3W+
	 6xwL2P6WFscIjAZ2N7bUwqJPs6YxOw2gkOHbjmuObO408z327Q6NbDPYU7kXguHyXQ
	 E3uHHj+ey+vLCS8DOsjT3oRdxKcK6vjW7uY7imBc8zSPOHhCdMzC7i2diDQ9T8Qn8T
	 shG4sp6boj4gyaVGVGor9oonHgo4mFhyVIG4KN4xQPtC0Gx+hJt/GP/HRrROeZJmI+
	 WzkWgnmThPqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF466CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203203370.4470.3350432246568752940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf0358b170f1150c608dd3501e94381dbf100608ddb205ea9297bcb388b5983
Date: Thu, 15 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792032033
