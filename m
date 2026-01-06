Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DAA223DC1
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767665633; cv=none; b=VC8aIIgWriUxpT2//S9PeCcM25e+8ie8zzdFniGR1apnS6HXfeZERc5YDuYbjZDkoynNTkcW0rFlcpQnP2Se9pGgXzt4CCRoHgjUlyCfeFGwAQJneYRmVQuPOdF9s0VsTATKdAMgtAH6Cyhzphl+MtUt+OdPCwzdua/sAxf9n/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767665633; c=relaxed/simple;
	bh=OQNkLjzKlSWYHwUS5GZ+Ay7v18oQuyCDaPMZsb+7UDQ=;
	h=To:Subject:From:Message-Id:Date; b=iSHSR8K4/rK0+MEEOhTcNEuSh/9mhtNfG0VlHb5B/XpMWMoURtLBSoXXeLjolNznd2DNsvCN4MaQrLha29kvb59DxDbukQiS78QqNuF/77KFgRaWCX36oOm5LevRg4+fiVSJM75WpIJ9n1ZRlJ9yGzcbIQTCJT72q72PRBoQzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVCImgTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVCImgTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB7EC116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767665633;
	bh=OQNkLjzKlSWYHwUS5GZ+Ay7v18oQuyCDaPMZsb+7UDQ=;
	h=To:Subject:From:Date:From;
	b=jVCImgTEvDQO4zDnaAu4Qbn4QjObYupL8C1iM6e4TwkYUT72ew+UyskD6fQrOd5wR
	 wzWtqzcJhNtSzaqVpVGJZ+h2046Pl+QvWAEhLz4ImKUTSKVlhPTCEQiwMDYpHlh3xK
	 wb85Xibbv2QlSmtOxkyzgr4ID8q/txbd0vWitSrgoRLysH9PYi6l1DgdSpdei3799p
	 MnetlTW+8NjFXQsIxsTFKA+KIOf8h3qWdg5nNZB/0iORqZB68ezAbKYrMnUv92LZP+
	 dJBQH/zO3LiiW6ndRA3uqh7uEfRVJxntbqSvOrXYTbMoe+EmdvZDPFryoAvyeJhXkh
	 0O5Z6J/LgpiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0BDCD042A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766563357.9222.1165603201006713156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64f713a3d795eb4a40280fa27c52250fd4fac9f99bbf35ba02b9a59719c9539
Date: Tue, 06 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767665633
