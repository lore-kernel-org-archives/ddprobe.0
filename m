Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E90E173
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762097994; cv=none; b=aC+iEeQSThWkhxZhmx3fG0AUgP8eEyZtMfNoG/oJTLVMoVsDrG4yaMYP1i2Hvo14hQpNBB9GRGQYdUTqC7H4NNJ/SCRK/Q4AHjEmY8Yf3d/bYa5s/fRGkRTzUG6M24HpXwcRhgHBgPxycOKSEEqA8NXlu4Ge4y3SnOWA4HKcoi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762097994; c=relaxed/simple;
	bh=KUMyWKCA5fC4hXOlE9/3xwp9nZsT4tSBn3r/JeFA/74=;
	h=To:Subject:From:Message-Id:Date; b=Ub+JNdWV/2sYE7v8lZ4CvOjMzf8jAPcWhzCU5wZEnJQ1IK7YKsOi6Gykk1qIOwEUaWFzCSSYd8LHqkjAqd1NVagrZXqR71QPHTp6y+xomRT4MVI2SNfXDHWmInEngkVstCYeAeypdfR6aySXbjki1fCmL8O8kmrN3TEIm+uGnFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVWSwtMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVWSwtMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A628EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762097993;
	bh=KUMyWKCA5fC4hXOlE9/3xwp9nZsT4tSBn3r/JeFA/74=;
	h=To:Subject:From:Date:From;
	b=jVWSwtMnLK07Yxr+iCNUoIWxse5iigVV8j2+sgNr9WFyD0xlg54yOZOoWh7yDrgET
	 pgjwxNNyoos7uTpfaBssP0DfTqO22xAMsw7VK4XC7grB9rEOwycdggYgWasxhEx5Q0
	 pdFsvYP8CHY96m0+A1fS1r7BQbDGK17+RwwOIMHuBbfjiu9YjjPEoNRvMtxnCBjvab
	 d9Xu2YtxTKb9rjurcXDrZvLOTY95QoId/Tn+m+j5XdIjZoOjY4BkKTLP51AyFI0q+c
	 1SFHfRRLzdiOyoSh4wL6KZMeRB/9vbK9yb143/bSMWStGyhqSRbhUfIh4guaC8U/nd
	 zz1HKSZ3EeHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92435CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209799359.10019.3642513407814499542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf810189367dc5261949cafce0853059de8e15d198e55e94a0854ae24f06097
Date: Sun, 02 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762097993
