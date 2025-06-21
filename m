Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0F21A2632
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750504794; cv=none; b=OqurwywxJdmLUmUgfEW6g8HFoh2kM4WYJMnPHZZfnYey+8X/fOSOlQXRTVw0y32pwfE12/cRCLieHJbLe7g2v4VHlR3KniL33Dt8irj36oR7xa0TnzRc5/W0gsPEhgM/ImpSOhSXLaBksQNTDaTWXGDk9MSvhabQ572YnPqbas8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750504794; c=relaxed/simple;
	bh=LMMT1uAgBkTQ+suz2kEIfu3JId/ocAQ1UW05ir5YxAs=;
	h=To:Subject:From:Message-Id:Date; b=UoWjtQzqWxPbjS0INsTCGG7bg3qHDrfOamJlXGUN0/RZV4cGb8G2S35+CUy60cLsCtC+KkXmAXCwH25RCFWAsKh5Z01+cFuEUn6AUB9bLJi7TtmLy3UeR0BsdyPB2obW3WyfrH+br2n5nUdPNojGdI//fGBOjqKSy5Q1EcAXpL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qoytv22S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qoytv22S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66C0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750504793;
	bh=LMMT1uAgBkTQ+suz2kEIfu3JId/ocAQ1UW05ir5YxAs=;
	h=To:Subject:From:Date:From;
	b=Qoytv22S6j8KV/12qINwuuBfWkpI4PgSo0sSHEOs6JUauOZLJ6jUAmoWK6OyHETqb
	 POgN8aL6RP81l1YTn4Ld+Ku7iXszQhhoh9mXeH1EM7CwTZNL0PeY5fZ8Fjec7EzgDt
	 HNbMC7zMS4wJ2RsYEcv6x96Hk3CcPCzmN0+5FsY60GYRYyAniE4QM/t9HpQ22NiT4N
	 OVhLbeDJk7hYVsED56S7IPQu9CZf7H5PHrWDE8VFx+BDJsERonT5ko7bsQlCOMpHL1
	 1BOtN+rExDt3Knxz3RkNUwEpXejjklEByWw748AO5/7re1F9MitiA9ikAo5Wj6VDBI
	 DI9EHs6A49jTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304BC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050479357.18677.316892695995432549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e2e63fee57eee866ab2b0797b6f7260bb39847dfa6d103d633bb7c5f8f0002
Date: Sat, 21 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750504793
