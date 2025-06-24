Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1656B2571A2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750759194; cv=none; b=n1//aNMTrDP2/YZmSFjSmhyvIuhnGshLNkYOTuxI4+8G0FkJvZw0CQ8/PVKXw+0lhdDyCeGLRNKRaFjiZea7bGzluApXhEFfMCgOV3I8S4Cmd9DYgd0q8DaQUGiR/2xWIle1I6b4VWeieWWSHZEkqS6cjpCpPDOiE+d+sZGescs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750759194; c=relaxed/simple;
	bh=X4PuTFnpn7ulJ85zVXBNCOUWhtQZ4ryK9sjMDIGajVo=;
	h=To:Subject:From:Message-Id:Date; b=dw61AXXR8YmlbpKnDC+xhSDe1Kz3K75MttsistCTujPvz6t+P/NqfDwS0Dp1iEBuGR3If+1h0LLulagpNMhYlcjH0WfF67pzIXiUGYOjyork3qk2cJYFZVqPMkBFRBPMOijs83Yi1vl502+fibtHl4WFLROfIRrPsa9tqJOv3pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNxadFh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNxadFh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E69FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750759193;
	bh=X4PuTFnpn7ulJ85zVXBNCOUWhtQZ4ryK9sjMDIGajVo=;
	h=To:Subject:From:Date:From;
	b=dNxadFh9XtTM3/3v9jH9yazLGyNpbhE6AZsHKd+8t2cKWAnMP7XckfxKXGVIYpJch
	 b3IsGhLGgCSSOpeEKePP9nKWhL2Xv5mDsoyfeX74gmabRJLyoHwaPmf6GjhgcVGmJg
	 dE7kl/LNyE11EIgnRGcNPiUrdfZ8gtkyRykzwR8MJZe2/3zc+DnBVttPi6gkiZXIel
	 Kuw3fr2KilLHesYb0Czdt5rl1o9Xc3UFQfH4OFdK3AQPd+Dogj4FDwyX8k45siYwAA
	 lImO/8m8fJh39dc2YozDZvybjmUOM1KM7n0OG9anIobUuPZvyJmHZYvLemPuQuojFV
	 7JD8uAuSvwZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA87C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075919357.16505.11462640404773351335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bce807e01ece7f73fcd2779a6629c1440f8c79408f628c36fe718e044c2c1a
Date: Tue, 24 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750759193
