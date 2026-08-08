Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8B43A4F5E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786214434; cv=none; b=rBm7+rDPigDw9VMfvTbWhAfruOCgqXxThjuGxqIzjTLxSqxYnILfIRVexRHm2MW75yMFH7UtGhGEx/onOC+Icv9aprINTXbLBWLbxMVZU3OtcODFnTJ2j6AcHfZgRtLIu1ULvfzv9+f/QIAkaWoRzFjerbCNDi1yulTg1KdaBdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786214434; c=relaxed/simple;
	bh=Cmfh4UvA4bYXUBmQuRsCpL4pX4KPoEYN81r8FUXwfKA=;
	h=To:Subject:From:Message-Id:Date; b=YWCvwJ3FGiu13GpcrwAljis/qNnT1g57dqCR+BkOmWPgAVIgsDmOZOdq29nB6Nl3Qj27W4uUwbT6bCs79sNpVdCWTrQDa2x5ZeSBqWWaF97Lsp+nkq9KKVYaRxIzGHcbAhdnxeaW8rEeZUj2ofqQFWEydFrmlqTnry/i7x1m8HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLiu6Meh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLiu6Meh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC330C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786214433;
	bh=Cmfh4UvA4bYXUBmQuRsCpL4pX4KPoEYN81r8FUXwfKA=;
	h=To:Subject:From:Date:From;
	b=pLiu6Meh3yFwKZ6HvToTanIk91fyn8ef2H/ClxQN+e0HMxcA558BFeYrY7e17/EQE
	 c8x2GKk1MA3b1ROWxNYfUQkN1BokFXFziMezeMMFEfBCfFU6J+N+mVLeA/JZA/auyp
	 BGLuYfqPUntLLaeEc0zN29RPuyRR2twwJjPtISc2EQo8hZfIPixfEajshbeqpl86C5
	 9AWiDZsGzr/mmTiCnz6f1q/HLZdeOTEZrEFzN39uJ1+FQqzsXjT4/UtZ55XSUfwbeZ
	 XNdOjiki6OzRIBaX+5/CgFPvQJ5p44gHhdc44TUePP0bD/AWf7XtdUqSKeZrZg7hh+
	 f5E7310gN/OGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49BFC5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621443371.9442.869698247925760908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b4b96e9a9988d79c968419c3b3813ef368d40728ac30116514a287ab64dce7
Date: Sat, 08 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786214433
