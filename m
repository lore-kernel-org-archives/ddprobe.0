Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263D8239E7E
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761545394; cv=none; b=erFcvhjA+DFO1pXChJTKx5WrmS+e+RsXxRrg6yEJaiyiOq6WsxynX6nufIPkZ7KIxi6lS8z0V8/z00J37llnlhaA/siWJ6/DFwX0Fuw+ch+bIiSlHiReAZzGa9SBkMogP88Yn5JEvAW3sJoRRNrWWGcMXWTd8AeHllcXEOBsqhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761545394; c=relaxed/simple;
	bh=FrFUibt3FTAnHFmXEUsnN8UGMPOC0wgEydQbsBnC33w=;
	h=To:Subject:From:Message-Id:Date; b=q0sulhxPFhlc/3s6dbH+lequ/tSB2NrMvs82VaVtiucwrWxejNpDnhWe7no0KgwG93CUh0fGsYMG+WMyTKJK+dmCGZ/8uoniKmtRQEaXKkG7ZtVmWRx23G+5mACGjBKbmnUb5H8YBp27ELzIR0JezzsyGwX4uLVMLISBnjx5/RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqwIkhBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqwIkhBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A246BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761545393;
	bh=FrFUibt3FTAnHFmXEUsnN8UGMPOC0wgEydQbsBnC33w=;
	h=To:Subject:From:Date:From;
	b=VqwIkhBxMkyDwSJHO1EinQ8ABhnFs9x7NUMsKApCqibuHjU3G/2i8drarGdU5hMm5
	 8aHXfBG6pR8FrrOALs2Cz3YW2KvjyAmGhwvlUcJ47pIi/mJ8Q1LKZlwDRy/4+G6A0Z
	 5roPxMOtdkd0lbcvXqyhZo1BUNkzH1Z3fErXN5ldrGtfgEjk5t/PJScEazYHZtQtan
	 DexRpVXbhHVPoN54giOfmJHhPIDUixigm0CH2v0+p5eDfpJeRXNYA+n1gLUrq7Tg4t
	 xpJwGOlwe9JjEt1lRNHNhly9/k9SqVf7vnqIrTZWedQYg0LRWblpdTb8R0/oOfge78
	 rziuGQnTHRumA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDECCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154539357.27952.7667412019110631503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f76287689464e5e70f20a05bdd6c3f900361bf456bcdd0db6b2641e7603813d
Date: Mon, 27 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761545393
