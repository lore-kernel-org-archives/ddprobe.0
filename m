Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1478E386C38
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774366494; cv=none; b=cekaRNOM7thrO8u5zMXwsUIAopGerbuZoHj/43PesIWP5N3AaDJB/poyavJvFUa5vuC9ctnxsRaJ53QAsJBJQhvKXerMBqmMsOdEGFYNTYcuUz5YQKvdmdJtGtRM2x5zpyLRdwKEwDHjkj+DDMusIv0MMzubtR6lXytbY1usiKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774366494; c=relaxed/simple;
	bh=b3u0Olei5Z0hPpYItGjE+siyWmS0Xzm2ZkNBv/jVD6Q=;
	h=To:Subject:From:Message-Id:Date; b=A1tjcTXBAuKDn7sO7YQkcLB0M57maUeVWe2DcY/8xnsn6/7N+ropCz8+SRIiSpDNljNCYMghXQkXQjy1w5n6RKZ8vfadjbhKIspmZNLTL+9PpJ74lKXXZxDj5xpRyWifuAeGmk4W54XGlubNjusjvPTZclXBuG0bkH5xQg+5Imw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWa20HhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWa20HhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DFC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774366493;
	bh=b3u0Olei5Z0hPpYItGjE+siyWmS0Xzm2ZkNBv/jVD6Q=;
	h=To:Subject:From:Date:From;
	b=bWa20HhPmBKucgouva86jqYelVmmymDhn8id+ht+y37ss3gSuZainIEPHntXUlpwy
	 J1lpMO2OnNdHj8IeA0KJvKOzus4tJAgkFf1SzBV7o6L41IIR6919Zasm5qL9ZbCxxO
	 MnTa+n/s0rmxR0YZb/hfKlRGk7CaxZh13PVY/dvnYCFQgjxZgrXJ8pOpggq3YqeYY9
	 nMe1mpJo5s9Ui4GyZntom2T3UWv7/t/lQqxbhBCrGQjkoeMfyMMRlba7Yjl7SFnlBf
	 CBtOp3ySERPn7k+Gw7NreMAYOdzUzrxNr9k5v5Fm5CBIfTzSWxLYD28+p8MN//hjXB
	 6XSKKXPAYjoIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91880F54ACE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436649358.5689.12669529705613024167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766c846aefbad5044bbe4847a34447ced3a5259ac0ee93d3008da55ab7202dae
Date: Tue, 24 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774366493
