Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2171383
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727661954; cv=none; b=fUeGntlFq8w55VTOr0xelsZsV4S+kCaVzsKbsF7immAtrjZBCviymfoDQ0Pu9ZBVscVbDdVitTYOYK1BuONUgjKMMerolJA6Vk1AhE0mrL6tuKWxZk/TAUi4HUFwj8rq7JukNgWO3aQwdMYX3ALTl6iaaiXX86xOGxg7AXWwG98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727661954; c=relaxed/simple;
	bh=9UIOZWd3UPjPgFzUei+QDYpLFkdo3hwa95F0gIUUxc8=;
	h=To:Subject:From:Message-Id:Date; b=i141fYgdYB8DR9Np+w81CeSYD476l6/QbSKBBvo5/pKm3+LQ2/cisSbDa6kvuKnxCHy2kgcxXjCftPbZ6otrHIOoumHzhRySnsH/oyxaXzsaL6P2O4PuOaIYpSk45BdcTHy/qHduJEP33VxJ6s521DkROAWp327aJdThmP2IGAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VchotOWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VchotOWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B870CC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727661953;
	bh=9UIOZWd3UPjPgFzUei+QDYpLFkdo3hwa95F0gIUUxc8=;
	h=To:Subject:From:Date:From;
	b=VchotOWbF1U/656CESHC03euBfyMnbB/+W4TLvN5OaiUpOcfgIHvVTtnXpRPY6cAq
	 GjPnIbr+KOOJyW9aE+CGojrRrlqnVQaC9nU8C92ufIX/o7/M6O6wldpFvzwoF3NMNU
	 4Hr7s14l3mWNTt/1Ps14jyHBWfE8qPjX3c+gfaP+7GiciE+4mlvNSygH4rge7gWCVY
	 xGLdLonl1Z+vsHubIRQnBC8M9LIG9Ix1XPxybbohiUu0xZtcsxEmeeLU7IQpFOrdEj
	 IBr98KEHu5nozNScefG2NfwlmaDmlnmXhSOOsOotgppfxl1npIVLhHvL0etnB01iz2
	 8ki79pMHvdFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C670CF6499
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766195359.10860.4082715438622089228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565e56e8906c9785c16e3558a4cb7bd8bc4a948ef25c0021ba9d8444dc4d6dbd
Date: Mon, 30 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727661953
