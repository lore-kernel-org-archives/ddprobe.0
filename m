Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3609836E46F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777934254; cv=none; b=RAnOGIA6KcpOFpmvG+ZvoEL09UXBu5N7GuNwvT+KLNU4sN179HfDQT+ubffvHRos/CCZlB6s2dbVLzYmeY0SjxeG0Qrq04QHStR31JVvej7QyNZrEE2IxsVrjv0WO89GhBRs0STZqovyovxDnTRUoybIReoTqL5ikBX6XTk3g7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777934254; c=relaxed/simple;
	bh=PiZCbk2ACKTYGEy+vJft6O2tU5hZxqNtHDqn66YxgRE=;
	h=To:Subject:From:Message-Id:Date; b=URBZtKKKqSIduLU4e9pRse6NDECYuQM4E4JI3T7uip+2fZF8se6seCfpP608Ew0LlGaYNX3LzD3Q1HC8XZG3G85pMTFxpFT3J6nU/k0L03GvFGgKt8y22YHdToJg8bTY3AAgkR7fCVXk7yTVIHfcefrpEASBT32QOqo3lpABC+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4gaJZmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4gaJZmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA842C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777934253;
	bh=PiZCbk2ACKTYGEy+vJft6O2tU5hZxqNtHDqn66YxgRE=;
	h=To:Subject:From:Date:From;
	b=B4gaJZmmMO6jEG+ESg9sosmvP/nZdqBXXOmR6RZXixsSuN/M/id32dod33ukRlPmg
	 WwlQvFS1kdvTJ9t40HyPHmHqGVQw1pmKdkbcIjV8FW+mu4fKtqk8nKKQY1rVLAzzAf
	 KABOt11Sa1spMq/cUqSB2lj8TjG7obCGjC4oKv+YPYXV1uvIo5OljpgXP5eSgL1E0a
	 9SBhtttgZEDEa3VtdhLxWKBuKvcA8gDb6VSInRTXP8EuetIT8d6uPDduFnSfEKsEmN
	 sr6/PBwqrrVOfhAzDayD2Hqxv+JQjyKwqkEys2liG4LbE5sDFSdZiQ/T9Lh+4p8ykg
	 kxFkkJF+L1UuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E41FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793425368.14985.6302832445187651491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5cbae69d87f483af11f3067ed8186656cabc381a3d7ec934a3673b6d1137b3
Date: Mon, 04 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777934253
