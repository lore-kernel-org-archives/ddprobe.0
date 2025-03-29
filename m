Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEC413C9B3
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743267594; cv=none; b=VdHrMvEnbe/PJwIQmbf86VWziwWFkCIgrVIp6dtOFFEk00RBnpNyKzlRCl5uG0j82xa8j9Gw4Yw/oq5sddJVhjWMu8jug5o4FCqtEwG3umfuwDi9K6QVJE85cd7q9ZlzQP3DqFSKcb6tJtTzUttBbxhYYK5dXpbSkonLOUXVeZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743267594; c=relaxed/simple;
	bh=qUnHkLuud/LFDjALH8F1e72Dmd3hfBrwMkaz2zKiNcM=;
	h=To:Subject:From:Message-Id:Date; b=IlTGh4bacgX9MpjEGyOJTMJj/B/sMOgFX6OqE9RQCaYlIuZDZySjM0I3L2+tidRbRc1zWHM5365UyGuTAlDH6CQ7reSgAcRLy4Bt27PHMFwUbt0pOdHFGnEDSbMznbMUWXlwXy0SEZSZWBg/XZaavZpz9bzSKgX64/Ftknhkhsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psOMTOom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psOMTOom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5687C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743267593;
	bh=qUnHkLuud/LFDjALH8F1e72Dmd3hfBrwMkaz2zKiNcM=;
	h=To:Subject:From:Date:From;
	b=psOMTOomnF0tcRWh7d4g5Q7tuwUSumciTWuWIbgiks1twTJ9cMuDEoW8mq41+v+2K
	 wJja+iMSOVII7Yftenb7WSY0BHF9Y6njgapzzGkhuDysDsTp6S/jynTmGBpbXHjQTD
	 ObMjUCIXBT4VVhvkQS+yCrjCVKqr1Wqoz7+auF5EHjaCeFYLijrgb8tdZgu4c/w1dJ
	 K00q51vcDGbzCb3w8r6LHqIk/Kt5eR86GW3PAAktXHNFb54farBT3XEoImkdlf15/H
	 o1PbMU1k+w8BS7LYscbk+TMBg4rDi14pxGtD8nZZLu8YFjleIjIRmzr+JEosZY+IZt
	 9A/HUp8NuUm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF72C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326759368.16717.3168601894213266014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ce1c1d4723d3a224c913d8e0b087c3a71db7e683e2ea07e2e96685a3c2c186
Date: Sat, 29 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743267593
