Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E821E5207
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767705234; cv=none; b=YcQyu1hh8O+ZoPSPpfYo7itde2ht1bi0v0OAXzhg0Ho13QqZ5fjXue4VjuGoA9isc7FVW3nM4GNWarT6zAXYwnmiBGkEhK5xsbFG2RjOr5D58IRWtdhGH0aEhlwkjqsyM61rGfX/+0ec60AhK/8Bk3UJDSEHvBc3k6Dl06TEYzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767705234; c=relaxed/simple;
	bh=ASXFlKbxZoNt4VyUXF1dtt18mMxE0EaJl311g/XzBtE=;
	h=To:Subject:From:Message-Id:Date; b=tshlAB6j75nIIWBm5pB7BuCidpXQBucBiCbZF7ivnGuxXevlleh94NAlWeU/RAvxbpeCiFWTnyUcPVwHFFLvfnNV5EGZ4AkuhiGhqCSrfACzzD0tj5uZD6FVQD9l0/YJtz9aEbS0uzhhJo83uOs5GodfOei3LSyXxNjUNTnHjFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcOF3090; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcOF3090"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A39C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767705233;
	bh=ASXFlKbxZoNt4VyUXF1dtt18mMxE0EaJl311g/XzBtE=;
	h=To:Subject:From:Date:From;
	b=IcOF3090ciyACjjUM4rf59yVQnx5GWNibiJLA2ry2X9PVkG2NRYPwdai32DSgaoiG
	 jNABYWwLpuN040J3PLgR8pEqVljlRArGfGfQ0UC3n1o8/FReXC9jFX/MY11bJ/MDDb
	 MNi/lXowXU8HiCmeVCWa0DTh20bnl3eDnvXUNvj2yExfvXVh3FBD5DJT+I3G0Na+0W
	 U2gbthz6Lz5u2biEze31swrp6FMarKI02nzl1D+GLYvgOyUY/JNQ/amzqo8BkiW4rB
	 MXI7zdhzJN/tIeeIDhOLeNWmnwfW20tZET/9QZ8zHqAEYlKO4Ci7cLmywvlTwoaFDB
	 LZDNCGTCflbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CDCDC19A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770523358.1894.427696514648609309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759fb60640a9ef5fe6e6c01bd51e23871cca639954f06cf7b1c93d3b3b03e8ab
Date: Tue, 06 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767705233
