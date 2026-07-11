Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E0720468E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783810714; cv=none; b=tjvp8qmup3nw2diT+A/A2D3ypSnoupZhizGaA8u8md70RdR6+qLLXPVHrnDdonEVtRIixtsXusLYIelXnQcv/E5Hs/pbo1yLVnMDXuK9HEQvFN0i2vMmABzAu19AKOKn/bafYspY8eXvZAplR0dLqASQvm7/E2HUgYFiC3bS4x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783810714; c=relaxed/simple;
	bh=gkuF/j0lrJFsNJj0XPluqrs5lHFLGF3bOKGk37gsCOA=;
	h=To:Subject:From:Message-Id:Date; b=r7PoDn/c8UZvmgB2gDeRoKXPXBJ3BWUwD+JqIdk9wm3NwKG1IQQkzp0ZxmpIx4lzZmdQzp+EEKI1R14o/AqPxduGEH6xVwq722U8dohaqRMh6V0+lmmi1qsmIc/I69b+50vA8UPe5VF0rAXb+lttEunjeB9r7H1+OH7XsS5mEiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W15O5n1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W15O5n1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F9CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783810713;
	bh=gkuF/j0lrJFsNJj0XPluqrs5lHFLGF3bOKGk37gsCOA=;
	h=To:Subject:From:Date:From;
	b=W15O5n1QlocW7baxRFTmW5YJFcVrZvZGe1k8lrS9NQ3ZcuwVqMwxo2vT8Ftslh+OF
	 BpdoafrM+6A6lyfHPaCv5Oj443Ty12W7a5VCj3AvKWyjEY7UBIicuDcmY5OfR2aDAT
	 UNU9BRBwrHSoAHgth27uUS981VCq4Gv2GaiMo0uMStEvtoJvZLFoWUc+WljsrTOQyY
	 Ix/g2ZnUgIiml/jLEm7fRP3RspUIEs1aJGsPxj0E0ZbKPwK0p1h7rgkSvPN0594EQ+
	 qmZf8sm0urEH2K3tdIX9kcdXTKBeXUnFl7EWwGX/xU9nGtIfTmg8/EkRZutzH+SoiY
	 20m1V/iZUilRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85C8C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381071368.13423.18258492236410959798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8cc4dfb18a98e3f5fbcf38d6ddf0f3bcd3531bf0ae5a7ca2c352e18e58d75a
Date: Sat, 11 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783810713
