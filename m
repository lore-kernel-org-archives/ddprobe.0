Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B15274658
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783963114; cv=none; b=KReuQ7VUSE38Y7rzJXvWg0VERkCEEhD8eECznKhnQYrbJilHOcfzqqh1otvBzU9MpjrP39mEpdQd1B9d81DOCnF/2tgTJi3s8Q468Cofw9VOat6eK87ErkUoohTuL1Vhdj+eP2wwUGcJNTmVZObTh12z/eK3qR9YbBcZcEcMRDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783963114; c=relaxed/simple;
	bh=xCHYV32gZFJiS38SIPCtKBk/wJCv/bHN9lqQTO+gs+Q=;
	h=To:Subject:From:Message-Id:Date; b=qIUlMK+JWiomxoXgwqmnDZzFZV1A2MhE97M0WoL7meCeJN7490uFx+Qze9Jnzr44VejlNtF92wr6vCxTJAQK2qv8FSperEMaKvr0mnDMQb/Kf4gN48Xc3xtzriNv/8WX4x4FPgI2/t1h8bFMISLrPr7pekA1ZwE7V07I0ag2YAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nx3igmuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nx3igmuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3004C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783963113;
	bh=xCHYV32gZFJiS38SIPCtKBk/wJCv/bHN9lqQTO+gs+Q=;
	h=To:Subject:From:Date:From;
	b=Nx3igmuYzlyQOkefwOZ7BSpK7UBjw4I/btI8SvClpUTPGOmLoqd6j2VPN+q4Bluxk
	 ABiN3qBgxUfjRr0SV1eZuZYtB65uc4nhmEPb9DWupCiIXl/cpEeHnJJ/GhNTs2og75
	 iJ0WWnys0AQ19ZaRFs84OTn+jtcnQtr85RtrTgUYpWCZ4/BQXs0qOcQ+FXybnlPZkP
	 ZpSBwE0bF6EJ5cWztNKG6aQZIBwwAkawDVso3D3tS+eipmxphtV89H3aIOf2nh5DqD
	 XY8ya7g0X8EKthk9s+VDw3HFf8jpIz5CKOw6zuByKbmEumhPmbkMaWecHRzY2hqKjF
	 hsD6Lt2Y2VtBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3ABC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396311368.13468.7747932508638760020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34358daf9898549951480fc98197a5b9ccbd493caabcfdf95b8332f634c3205b
Date: Mon, 13 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783963113
