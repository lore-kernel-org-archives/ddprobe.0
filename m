Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863513AC1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749442194; cv=none; b=HaoMbyOBYlxrhL3ZP7hUvD9e8U/yopDJ5Ee+X5hDbsli8g2LPUld9Coe0+Qs99GF8D80aOtCn+LofqZiaeyjAka41z9CCp+NpLscZRJV79p9OaHSf8fM5t/zjnCHdpXRZWhI7aU/sa8kbC0mplcz5DTDeMBEGIaWqrP8iwohBks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749442194; c=relaxed/simple;
	bh=5WAPLa8cYrnNirXkHWpaW7AZz9KOaIZgAqF6L7KT8M4=;
	h=To:Subject:From:Message-Id:Date; b=iNkY5rtusDkGPBwRhonScMWChxgBxQ0obRBpimTA3GHJPph40uFMPVxfj8EMZONgvEtJqxInNIEhro7qcB7GuGMJqlWoJ8cE5hA/h5sbNX+q4AwccVUJ530DzLC1OCtHZTRhNpcX4m6SkreKKKc+Lhb0zj8KHdrNsSm9rSiwNUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYdkZzKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYdkZzKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749442193;
	bh=5WAPLa8cYrnNirXkHWpaW7AZz9KOaIZgAqF6L7KT8M4=;
	h=To:Subject:From:Date:From;
	b=iYdkZzKGPgnWpYVvr16XeHk9PMA23HmswoTcJblIazvWmN38JrORBOP0DRaf8qUq+
	 9DoJfyvSZ0t7teoHG+uIZai3FVbLlmBMyusCPmBKrSU5wV5a0U3asFxBH+Or2zgue7
	 lG+9c3TRirxa2AJqiIfy+Wsyx9gCgXIrQ8Jwq29dq8581lZgyGntw9eqhQJVLoKEyX
	 HtXy4QSjGBV5sDBMCpZVe/ZZr4fFASa+PrAoKEdXfoWVTPDXxDDZwsmHvkBzkdlXwU
	 FanNryXeaWhFts6aEqleP/1dm8pfb3koqm+4V3dhpXyij4dzorKd9+p7Bz1ukaWthS
	 8tJu/cMxnLwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF68C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944219357.31028.5342136703793381147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 186c9e7318715c7192d710c686666a0e7d73508364a8917bc2f7a385a957111d
Date: Mon, 09 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749442193
