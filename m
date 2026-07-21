Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109EF3BE155
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784602114; cv=none; b=TjpnqqBZ3+D4FAmET/lkmA6xGk5N2PFzDhuoZMtJNCuSObm7yI3WNq9NqJbeAlaaxnb+1/CkIVnBfmgwZBFcsQ+Hu09O2+fiMF3PS9vvrXRBg2Vl4GUAKg5RwqTzb/wXs08DMXyz0lo1CrCAyjsxfYVNKWpDXwDeZa4sVGzQMsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784602114; c=relaxed/simple;
	bh=Bfg9viwCfCtHyYyYwdDCKWX9vR+twt6EGFzdI9tS/OU=;
	h=To:Subject:From:Message-Id:Date; b=JUtfg/fFgwxlSFdTM9b7pSPuXFBbeiKOeqFrV5kiquKN0E+RoiL+3yhstUE7qseWBme5+sLZai/em8rchlJJCwyRkkPFQrsnfbftwevkJjG2/wgJj+dMmYRkLblpA4sFLO9r6HDBRh7WZOLO2MHgK5+s6VIA+b3o68h143BDWBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnJhs324; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnJhs324"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDECCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784602113;
	bh=Bfg9viwCfCtHyYyYwdDCKWX9vR+twt6EGFzdI9tS/OU=;
	h=To:Subject:From:Date:From;
	b=nnJhs324mdaE2kzPtEVwTVPBUep95y1o9b+zAOLeFAtGfutbRjC76wvDH2jvHE2C9
	 PnLjqpWGyPwbPZaIg5/4K/GmG535CXiDLVjXTcCD4y5iyfPc5C44ByejbfEwf7rO86
	 xQghuRW87QHSoPrk6rjiG/c/zsVl45Ha3bP+xxk9ZuTqE4MXinGKTyYCnw5wikZj0M
	 D4ZNlBcvW6SxbDdi7AxVjbT7tNq3a/PdTi2X6A6j8kWOULhKn7muwjLm4pv3K6RIgS
	 1jIxyYmuFjWhGXC1zmDzCPYJXUwjEnfvGPc71+uYL017PI0NjeXtRMdsXHzfm6Kl09
	 u1e6hxoRpCceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9679C44524
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460211368.11403.5277734615215428671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbcee238d07acfccbe5004bcf5e4b6e2abd5603a6cd75f5a4dd233ced2fccfa
Date: Tue, 21 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784602113
