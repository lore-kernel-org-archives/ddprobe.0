Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420EE2110
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766883834; cv=none; b=WWtZ8DPzaqpsQjk1/u53z/LsAvipklnaBFWJnPwlS4TIBEPU8fzoemt7dgYDhrvUrw9RfFLW/BFnkcnXgZDQy0v5WRavPQeCZnnjgkg3+uEW+i0tlnPPumDuSz7HkuYwvv34GFGudGEaImTj09FplEjmvH2xnRfCf0c9OSKkiU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766883834; c=relaxed/simple;
	bh=3/TKq34lcUss7CagHcp+TM+oei4drL0KbnNLNDb2Nvw=;
	h=To:Subject:From:Message-Id:Date; b=dIEpm8sUDWatc7ilP/wxFP+da3EgGZwm3TJwnsrlMHEVkS3Cm3qfFtyv37mikk0v/FZvAnrekvIkAEsTlZ6gPHYNIrJfQQlHxSkFTazGzaerNHb5F+spEgSA/78GJnhTlksNs12tCyHT9hTr2QN7mfm2paeUBKFMPRrvvmg7GzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqbo9Jay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqbo9Jay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF01FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766883833;
	bh=3/TKq34lcUss7CagHcp+TM+oei4drL0KbnNLNDb2Nvw=;
	h=To:Subject:From:Date:From;
	b=Hqbo9JayfdgWjZIxyYOWu1aVLvw5lYcZCIPPCXQA+2XdZwKIubpNUmOJGdpOmlwYJ
	 iIRenp3EgnzOCVT74q3tzSL7nrFKpttIGgT0dnlwcCTrYssfOEOkyXU/brUzwfEs6/
	 9/4GrpjpIpv9xj4PKn2nBc3bUKAFM9wIHlRgkxe9ybC4UFt0emy699H3aZ+k27a1M4
	 5oEF8DEiXfIcdgjxKcKJgDtUQn4sGKNTyLRwPRk5pr2A60qu10e5zxVSzZn+td0sZi
	 KL8pqW/kV4MZy04BKvPgKth73eumQMu+dsUfzAhK3iXciMVDVB+uai+znAgYyXIYtl
	 MQXgmQfZYRf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D778E9271C
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688383360.14313.10752291785159327885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a037e72998c98061a17c4205707b85c310be1e287ef20f8ad2693997b72770
Date: Sun, 28 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766883833
