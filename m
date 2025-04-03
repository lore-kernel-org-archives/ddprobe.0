Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F37F291E
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743655194; cv=none; b=FeDa0v2kq1phFplEN11AsCAd7weWG645zBvuo5pbrnyY9+mun/TnR9jTbrSYsb6cOXLqE93kc+6+G5sfyE+S8TThe2HNFvnYI4iJbKwZAUs8Lm5mHDdeqGecffHIqZnoht/gxw3ziCU79BpQvd6xroyz8juk5Bza3rmp3ih0Xmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743655194; c=relaxed/simple;
	bh=U0NwrkncNPHHY8RnbfN7fJy16/xfFs+cCB414oH/Mlk=;
	h=To:Subject:From:Message-Id:Date; b=gqxnG6phEeVobSKb1JWU3iBQgW8KeHy/Rn0dOFO5XeaJlVKECO3hvetB2wsZE0egLu1dAOJG8T104RtfK1+ZmkUjkuytEeTnNseYwb1PMBrfhmCffvoEReKbzbpdkypTllE8x9gf7o+Oot7Oj5EESAA6ZxhwCRlCJIdsbjZRfKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlEnENB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlEnENB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4B1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743655193;
	bh=U0NwrkncNPHHY8RnbfN7fJy16/xfFs+cCB414oH/Mlk=;
	h=To:Subject:From:Date:From;
	b=dlEnENB1VO/GT5Fkk/9xvTRLkuED90NrB5uYpnZe3cVADj/6wTNLyaww7EWrc/ate
	 /ZN1iGAt4teR0TfbBB0DCHMiUPL+Vahh+42ivnXiGWhhH/8FVdq1vauNzKItaCzDNq
	 Z6ptzCME3LdSMm1vKlwW8T5+iD/s+MqBGnG+W1U5sg78l7wWjuUSwlzcMPeQM2cwFL
	 DH6x9Xd8LioSkNKfIAunXxJYVzIguVbeMfciPlVa++gR5hbscIItC25OBKFoDP0Q48
	 bg20pBKqHdOIoUomjuWzlBvM7W8MoYfR627PfFl9C7ge2f40QDOX/kSy4N8kIYE5Ay
	 x4BY1ksYko5PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937CBC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365519359.29177.13740586374330240032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d32293f1b315df068744cfe31511fb7558221e90fa7134220c74f66e4a8d332
Date: Thu, 03 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743655193
