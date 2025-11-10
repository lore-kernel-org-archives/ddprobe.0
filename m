Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CC532AAC7
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762800594; cv=none; b=cNVkKLygOmczgRPZGu1vENoUjhH5IuVO3lNL7HEw6zqnwKD6WfPowlK9XEfI1IbvfLXQJAksc3kz07Bl/mlJFPCaBze8eZesFYd1Ak9roE6Eko1hKXhTcax1dXqPKJpqRJIJA4DBh3Bpi2vdiiaAurz+jOPVNEwwlrIWwteiP8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762800594; c=relaxed/simple;
	bh=cSaz2v89vqKpZJBzzCWLsWTV9pnLHTXG618r8EgwG40=;
	h=To:Subject:From:Message-Id:Date; b=pR5WDlgJOcyCTZ/rEgIj06NuWY176fhS++kF2EDoNYTf326Mng5gWU5k0uzmEUNw02HiKVEhxuLxM0rIPt7Iv872gPgt3UPfnMERsOeFm66s5bdwR/eFCzjxYXLaXHdMrZFdgG8ZRKSzAEmWc44R4th/qOQ24oOhwsPvfygnoCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzmz0z0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzmz0z0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C3C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762800593;
	bh=cSaz2v89vqKpZJBzzCWLsWTV9pnLHTXG618r8EgwG40=;
	h=To:Subject:From:Date:From;
	b=fzmz0z0WHBxNj6OzmqJ3QPnBzSrAbbdtL2ofY/53sn23JxOowbV1pExLpgFzZvJHf
	 j9Ejkx6pPkaJ4R1kp4PDKSDJ10uwBr+GOzFDIbNO43YV9EEMCsLC8eV3wOyzdNaoAF
	 il0MdvPzpoPx/n9X4xY8WS7iJU5KoLRCYUdgStrj57fnoI7LNJsrJkJMWwiTOk5IpP
	 oK9dly1ZG3xiHHqBTOnTJdg6FHNg00be9ml3XKJLU8UNpymMGTIMHmv2hxsBUohdSz
	 OSVPZ0536w0iTJ04MbJF9ZfzlxXgVJTCBIFakUDnXw5Uc6dFxRJXSKkjonF/6N0V+x
	 6AWZ0ErbX0rUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232DCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280059359.1340.7539696791558313464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842532366b30408711cddd1e8e9bbfb515c52618ffa47af84c3efc663aa52cce
Date: Mon, 10 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762800593
