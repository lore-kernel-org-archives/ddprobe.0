Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8144B44B8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789728034; cv=none; b=exgMe32tUTk0dPCGfPiVNlCPafZljFA1fzvcRdRuPtsqf1kSfhBL33EBbwYxOLJr8jqFZeDpmuIVIY4uI+NJPQdrX6SHAZ8kjOm07MlYlysWfh2Ir0sN8Z24WfAUBdh8cm0qiuxRGmQVhlZ6Ub6VH7UWywtFUSw68q543E4gAQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789728034; c=relaxed/simple;
	bh=FUDHcnM32NKAubWDKCXAo272VQO7FqWIQ8fATnmdyzU=;
	h=To:Subject:From:Message-Id:Date; b=eMHKLYwT3FiPsykPMXD5pKXTC9k6sfJgAGj9bjbdwEixLlNTpLMxhRAKJsrVPnwavIoNvLSnECr0CczbXb1wlaM5GcKJGsBm1DCJutXpWwcz30YqdFvygb6unbyDlM2LeHI9irAiJtnMQzdB8SC2woKQYPJFtfsIR8USLnDdVdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbYFQZLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbYFQZLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B31C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789728033;
	bh=FUDHcnM32NKAubWDKCXAo272VQO7FqWIQ8fATnmdyzU=;
	h=To:Subject:From:Date:From;
	b=bbYFQZLv4C2VBoDsY1woVrcazJWs3e89KlDvVnKOynhe4OmOeoi+9z11JAGmYsYDx
	 k1SRO7onLVEGmNvu/H0d1+NZdTEDx1k/YntwfJqS2XfJEbFfB0PUka5XfFCeVePtHY
	 M9oaRtAxH0ASXkLqruUvIOXGQ6vhj+izg8o+9qzwSEqhfKcRSAu9Qwi/727W6/VuuT
	 Qzj+esjnK+ArfawKlRgLnK+CcizAAspK/VCEKOszmjETQ8MTtC7fdViPwyW8GuQBNS
	 m0OADb2UbJ1ykYhoDyGhS9yNwLJSuSn+sq2KLJZtIx3RbJS6SFymIMD1o5TnNECeBP
	 ZFISNdTUmDCaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF30BC982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972803370.31459.4669215760801400644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d99aa2748d18e919b1f545081aeb1a52bc9263946d32e378e5eb41dc581f9eac
Date: Fri, 18 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789728033
