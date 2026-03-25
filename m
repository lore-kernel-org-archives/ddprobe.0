Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE47346E50
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774434294; cv=none; b=FMQJSTPbjs37O7IAWuPn9aAMFlB5tAmm3ZTbCCFFdJR/dYdUyQRL3iqmZ/P/9EoKOUjSn8MKcL3Qx9uwVJmFuG/ODEmexlgixRm1dvdFIsS5Dcm3zX5b9uSYtEt1J8B4fs9E5oCW0PZ7+qeGahHqEzP4Dpu2WqhQoRGN7h8XYP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774434294; c=relaxed/simple;
	bh=iPR0hHEOxbwz0KvYpw/L3rXBQKAboPFifqmcPppX/h0=;
	h=To:Subject:From:Message-Id:Date; b=LVuzYlu0VwQ3Z8uttVMek0Mk0eaJh1e8wxc1NVn9b9G/qf20xSb6MTjkVmtwO/sl70OXAOJpSinAYC35fCawv8p3SzVXZogXFiFF8GTWWMCMWwVsYQBDvF97O3p+HdE4Wkc6wtMRrERa6a4zxzDInhQ5+PYRrdIal0K8+5GtW5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7rIG+OO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7rIG+OO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E78C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774434293;
	bh=iPR0hHEOxbwz0KvYpw/L3rXBQKAboPFifqmcPppX/h0=;
	h=To:Subject:From:Date:From;
	b=l7rIG+OOdmwM/jdQ2p2S1pp7gUBl5s0PEnO22F5YEnugPRR120cmmOyhRAnue0I/6
	 9Oh9+umLDgsh0a+Myv/VFUw0Qxd7RJEn0cBpdboV8u5PQkiKqslTr+5Hp3at3kKxJw
	 5nGw1ca/u8FlJB/t/ctNWeZyFynSECdVcV4EDOV/ToZFteU20Sol1GdAgXGvRqIjlY
	 5pt5vWQPrsW9S/jEfKws1IWg/mZKb2soW0nDFTs/p1yv/aIetigLdpp7+RStLW1uXO
	 ADVX7qP34NbzGa0CnIiN29dmztSR8im2MhqJ7HxTe8joYv95c0hKK9JWgVe8UIuwA/
	 /AjvFE+tFAgXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8A7FEA824
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443429363.15298.7139885387646448611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8075c9cde60cea0ec63cb2ec10f190ed61dcf7ad02073da5b294162cb6dfb6df
Date: Wed, 25 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774434293
