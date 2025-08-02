Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF0372625
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754100594; cv=none; b=JLi2VjyDX8TS0aSKIAQ5wT2dlnjvUbdwhyJp0UjUF89AdBCTgHyU72gGO/KgW5zYa6HB5xXtBQvRDyf4vLak+xxixnkNvlSWfZlJaBEZfNuech7cR2FbyEZ7Obw4c6ONCROP7OkqYXJdlxY3BRWDJTL0a91VGebkYgNzTWfvz00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754100594; c=relaxed/simple;
	bh=P+jh2tWgJu3zh7GPPNfwcVQkUdcMAt+n+PXp/rGMeuQ=;
	h=To:Subject:From:Message-Id:Date; b=PSM8qwIPdni5WlGW3nM1wC42goFYI5/O6qJZOUpJUV622GL71yaEk8E9G/xkIZMV2FVDtx8XnnGcMmUU9NEDgWLRKxtW2Rg+99BqZ7vMOJ27VfkTt/SnemtrI8qsnwIIC35U48130f3YfUd9gYacs08t+1bnrJKh4E2KO8dU8AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wtn8LJ0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wtn8LJ0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88E2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754100593;
	bh=P+jh2tWgJu3zh7GPPNfwcVQkUdcMAt+n+PXp/rGMeuQ=;
	h=To:Subject:From:Date:From;
	b=Wtn8LJ0TWmtjeFceQaMocf81VQSO/vjFjXVFo6j1NkVB6yyFC5dwEZY6z76jNevLB
	 6mm7qWM3a2+08EgDbjJqDnqKNJRmdQk8I/msP/pe/1M7RI3Vu+OokEw9VeJuaLKMWJ
	 9xmjzVgT34O8rD7VNZDjarj7Hs/m+FQbmeD+RgXt3sS59ZvyJyrhEsztNGyNrR+Q+m
	 /LOX4hnQtMPTqG+V4ATFre3bNMWfCiNpXp1pz/SWyGGQylGXv01ylWA0zNIbHvP3Jf
	 AvBOM/JmdMTY7qtWWm7JKYVyC/d2WByKrvduRAjVzyYvvOUvJus58wPuBEOH8y39Qn
	 76feU8MNBlIlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABDC87FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410059358.10623.11544064631936476148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972ad97f40fc99fcd22b8fd6e41b6930e6ff0cc4639eef8719eb4a98f40998ba
Date: Sat, 02 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754100593
