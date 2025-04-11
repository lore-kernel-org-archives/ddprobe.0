Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31899270ED8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744408194; cv=none; b=RB+i4i8XH6cmuzWMUo9ESwASTZUS0Ybp4AjcWczNUuHv9szHjq0hc8T1loD8ney2oR3NCF5RPQxoRiNDe1pwIpmuyk2fVlnApmN/0baODQygYghXIyMyjAs3E/pPBlyP8P1G0IxOmVitHYt5XeEiYFKW/RRJ37j9Yck9b0/z100=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744408194; c=relaxed/simple;
	bh=0J1mHtHNU87MYjEXp0V/6slzGHD3ornFrzZA5RO/i28=;
	h=To:Subject:From:Message-Id:Date; b=sOowqsY61f0Ce1ljj8xlPMM1C6yRAX7zvxYGVOw+3lVLdokzE1eQxYzDo5DQd6ejlL0Zxjtqgbepe5SjwGy11mFs3IhzJzARaaT1eC/5cB0sGo/oSwqFAmRb9KvtFVpltqPa6yQGA65iRir3HQPmBWFb5vkywn20GMsGqGvgCJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ5P1XYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ5P1XYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61E7C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744408193;
	bh=0J1mHtHNU87MYjEXp0V/6slzGHD3ornFrzZA5RO/i28=;
	h=To:Subject:From:Date:From;
	b=bZ5P1XYYKNrzQjbb5QbSOZgDih2WewnlhPbIoDLcsfSipJgSBHstdrZajxwEzodqk
	 8mbuc+RBy90NXtvd/WsudgVYWRpjKQbsZzj8fwNuo0fDczsqgIbc0dN01gbU5Kh+h2
	 tXik3zFVBBLDAr0Q01JXJ0GGKT7ujo6oovyBAnuD98sUWL0D2PLA2GWyMUFXTGo2u0
	 tsgmAUiTnmJ1f4vpDDepYs34nU0zVYK5zTd2wYxXqGaFlJurIAN41QwJelVeD1V5u1
	 hypd+NpfKFiWMUYb2LvdpaF0GTl9aj2NeQ60E21+yK67H3GiFYqqkRyQBsDj4XDBLP
	 Jk2uvLjNqfbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92079C369AB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440819358.15059.1636686081492946262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2238f112e16b282fdefe949042144b57d20263fb2cab75e3489c9987e15836a3
Date: Fri, 11 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744408193
