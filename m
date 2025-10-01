Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5F825A354
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759291794; cv=none; b=WfsE8YnwY5tb6oB4TtRpnxdnT8cKm/kh+BZY8lgWheBHvxd/L8KWWUUh+gFO42lsMijTV/2lQO+ZrYcewJn1TJjziQT8YNFmdO2cH6CEJPFl7umi3+CAg8SqnHm/p1OtyhhoYhJDd3GzLgLOJKPqeUhFia6uhbN1RrP/FuEjwok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759291794; c=relaxed/simple;
	bh=wgnesQF4Cd5Xz0VmoN5uZRq+p/oxFV8pLql+jroM//g=;
	h=To:Subject:From:Message-Id:Date; b=TYwkkkhrQ0uAXn3ObDyPwe+wMlL/OqZ0ZOXni6MWfzKXfBZWDRuiw4yGlHF66+4nAICxFX1L5UK6etMFqV/t5AJ2GHh2Lbr+O7O+MefRMZsX1OU27PdtQA3RT0eRyorr2HGt0mVAP6DfmVC3ICJwpO9qSkdoWu7z9D4LhHsvavg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq63bX3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq63bX3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7655C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759291793;
	bh=wgnesQF4Cd5Xz0VmoN5uZRq+p/oxFV8pLql+jroM//g=;
	h=To:Subject:From:Date:From;
	b=Oq63bX3oTwTF04fHJ+vKVXFFAVC9Flrp+Ql3Ru2UPgM0IwmxJvJ/9Nr4nM4CP9feB
	 gRGLXP743MnkO0OOdEyWjGndRqut1FMZXozbwUR3HgNGD6obtUSCP7wUWpB/tUm+kH
	 pkNN9vgngdLo8nZNF0E5Y09ie3ibqxbAr3004ARH6lb3An1NHEAx1FnttmEBhgi9kV
	 kQfOp52mN8Aj9xUsP68KS91/bxq631j5GlzuDGwtlQfBFt3I0zuCy0mQzdNjFgHld6
	 N5clQroYnbBKhwlCQ5UFTLa66T40JWU+1Ji9NyWKrCtcKRBwA/9yXroCn+HhDTBj/F
	 0mIKwdNPkh/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E5DCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929179358.12223.1621033138990747793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d284a8590b64bfb1496e727ffa41d5ed5f9c9d09c106590391eb55b9eecc579d
Date: Wed, 01 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759291793
