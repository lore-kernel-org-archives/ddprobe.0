Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3499E1A239F
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749336594; cv=none; b=eG3brjzUu1WI5lM3wcaLMju+l1nzgazkbUrQXFJ+/FC8LDXQoWsRqO8gsEP48Zw6zH83mG0YCP60oj46wBT75ofuH1lPGjtNHfjSeOJRYE6/zyDz4gkQTv4SfjoihViHh4EaPPfnNx0MYU2vTrxm46eHCEoSDLK7pP/qrsT/R2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749336594; c=relaxed/simple;
	bh=KSs9lezbcqAYgB0WfroZmOgsyt5awhEQ9O/7V3Ojf+M=;
	h=To:Subject:From:Message-Id:Date; b=C88Yihu1KtYrQtHG+ANquljCkuf7eEpty2sLC3cUmgLbfuIanz97p2Eu2VEyVyDERPgZTPP2nf3QfpxInoc4/jTHB54cnWASBL6+JCqsdBOU9xkukuYpn/aDV1EVYJldbP4OGkH7NhJMeo0cgfyhf1w5wlvWsCxJeFGdHGd5cVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnlsZEpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnlsZEpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E65CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749336593;
	bh=KSs9lezbcqAYgB0WfroZmOgsyt5awhEQ9O/7V3Ojf+M=;
	h=To:Subject:From:Date:From;
	b=MnlsZEppfL19RHbL14XVBSYgehb3dmykghjVefJJQILvcSKWM3r3RtME/2UnCs1T1
	 Ruvx3niVtCR9OPtQ3cYAggX0EvT8PvjCk7lnVpAiRN3GU/6kFe71m3cr38gSegnq4B
	 DYzwWWhU4EmLRFY9v7cV41xdR7rYhCTW7va135ZOS4VSVKU0Yh9NPZKNjaqwwOzujW
	 IquPfESV8Rd5/+uW+gtHRTWw3nTCkzJ9M6KTKljrUXt0kKlPYPqfRgCyaLOvszysns
	 UhfkCQXrJ8WWy6Qx4Bo5AXtSNhL3H6BMPcIoj2K6INH5SQ1wh786XDMJd2cnKoLxUF
	 zJX0UB9QRKAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F170C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933659357.22562.14023210611824051356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb3d423dbbb170f0e63154e171a3555c2e28dc043ca92f3ecc20e68925f8f53
Date: Sat, 07 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749336593
