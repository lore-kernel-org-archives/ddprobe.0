Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377905CB8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746671394; cv=none; b=KtOwAakK16fY8XxJRKVVbEpYW1L2AaXCAqXI2c7Rn7C7W2ifeLkNTJAnaQUnMhId2qlq/qVR4jLU9tUDiAk5JAyfZxu4V/uAjr8iNbCO7m1zDRn5eIdV74TZvis0Aya2Hn72bxH0GR8ibmMMc4pvyMjRn9o0kQ5pQ1am+IZJrUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746671394; c=relaxed/simple;
	bh=MWAl8vDFQbaFyYjHl65TEXr0ff9EAtL1LOIAS3GlvKc=;
	h=To:Subject:From:Message-Id:Date; b=LRnDCk0nyM+l+x9qe0qP099Tmvo4nfxs98HxrFnRtrbuzMKiL/65EQL6SzHdCZ+jq4n421AXp+fUlDGEz6Pz1RjmeL3FpEBiIQs38E6gy+USyIrILKATDbfUJDbtXS7siJVJqn5DZWB2WldTJJePgjpnlUd9F7BLTBNu6s583cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeX+egAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeX+egAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9BC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746671393;
	bh=MWAl8vDFQbaFyYjHl65TEXr0ff9EAtL1LOIAS3GlvKc=;
	h=To:Subject:From:Date:From;
	b=UeX+egAZ/xGRss1IUZry/s6nhcPDdymc/ahzdw6fEX705g2Mp1WlvJRBm9+KCqhNc
	 iemCvpG/K79+pG1UrQ/Vruy8m1j/E6qaAV8h8iSRYIqpkeKESXMRC0KrhV+v+4ng1w
	 JqufIe63scSgeZKJAXAyCby8cWKyYNhgZIF6FliWUnE92sdiwMnybe1G1AknYAuaNJ
	 2wtI36jLxrteIxnhV+in6UL7jfq7btTPcThP+yXZcfpKh9FiKYIkk7bqWoPpYhSOSP
	 QDYPlNa72fxThchjK8I3cBeojT4Gakuwj45r7S9/81463X4AO72r1edJLIHnXYOt16
	 s2ngJBuC4llkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5EC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667139357.21161.11060233037855088881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af32c5d969fe894805c7b7ee32a047ec3490897b9eda628e4a6d0da72c6ae64e
Date: Thu, 08 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746671393
