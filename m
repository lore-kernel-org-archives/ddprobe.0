Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CFD10F2
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755649794; cv=none; b=aGPGeEAOpzIF9zAOATOu+MKZI3z4wp9oq8zoiilu1qsjfR5jM4ZAWkPEVmbTzvWKK1oiKuFgYEpME6C9byIAWJ1Vt3aK0K7b2Fl1p1gYy1G+SThTM8xWKipSc2FL41vKG+jYYett5vHN+PwjlGWsJTpJE4N3zQSyN7zm1ZfqcYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755649794; c=relaxed/simple;
	bh=zsPQpnJt9JsRgudmUL2wgOM4cZGnNCFcqxpnCaY3r6Q=;
	h=To:Subject:From:Message-Id:Date; b=EKaldoN5Rmg85x+UbDg9J7JW+Pdjo8PQ1cffL09bEYD80pvIFqCb7waNzbj09AqrVFNQhjtqRGGg7H2XPhL7HXPCp9ZMiKt5AX1SDzPYT1QUcwajx/WpQPE29rKrXyPGMZ0UFJX0/rAfL40ep4OeURo1xSgJixbKn5OK3p4i44A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+JoEq4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+JoEq4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B1DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755649793;
	bh=zsPQpnJt9JsRgudmUL2wgOM4cZGnNCFcqxpnCaY3r6Q=;
	h=To:Subject:From:Date:From;
	b=t+JoEq4TsFeB+aXAjW7VW0YPpFBSFShs7TXdHVqkVJ8L4KYQkilP6FVNyeyWLqcu8
	 zjAJ/atyh2HMM/hbpP3mwww6qg64moHnRuHWS1m/WWRbdq8xtfBUjBJeXw2XMOy4dH
	 by4gjGY3jXtXhwdH+Kt4MD+UvMzEGxiqTuTA2np0yK1YAq2gdGPrZvLMzZ6iu3oGzT
	 AGU9/C1HlqTnQZyMipywwOnlXSihniNQZYtRJc1CcTKjlsG9n0vFw4gAeuKRtqWH12
	 KGhGUn1MhAA6eY6GJPQfJhY2XxwtnLo1TsszSag8yhlogY9FxzfJWs4Zn5EIVOTwcg
	 donaRECLX9CJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923BECA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564979359.9314.15827351603627183683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf7b86787b04520263e2ab49eb42e35ab01fd28363e30e04a61894a405dfcfa
Date: Wed, 20 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755649793
