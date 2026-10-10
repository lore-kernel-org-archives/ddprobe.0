Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF042DE6E6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791646234; cv=none; b=Pskqy/mJg4olsLwCpok0TWCPleqMrXSCjoprUwmhuIbZKjR0fx7KYEGoaUz8QzvanBYbHzME3+SpO8hiuz3QvyjTgwX+SWaO6BEdSt4sSUUSGTX4bN+DfaAB/VySwleaeLcuabFrzMgsjf+ZFgnhp3AEoC0svnlrKtwMNj0nWlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791646234; c=relaxed/simple;
	bh=rrZODxWRT5TCwmWrC48PXlqfytTrCv5U+fpWW5mpBQA=;
	h=To:Subject:From:Message-Id:Date; b=cLJ03BX8KfRyNjKgbdEQCch2DFrZeqVETA3RxM8dLv4fKUeCElgKdWHTd7wqppEEZuWi1u/Dfu9Ws/4BY+0JcSaa6ZV15453d6roFnMB5TgyA56XM4/L0Gk22wsi9GFb3RQNnaoAA9BSG43Uxt05C1KRy3Gtw4Jtj5TSVq4ZykY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYIyWiSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYIyWiSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89D9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791646233;
	bh=rrZODxWRT5TCwmWrC48PXlqfytTrCv5U+fpWW5mpBQA=;
	h=To:Subject:From:Date:From;
	b=PYIyWiSVj2uVFzluGtHYv9YEujeaHle+kjo6NIkydMpD422iGGfk1yx0p4fJfBRMR
	 SthRWc1RaHS6vn5NS434cthtBM+IHoEe8cTZadAHR0p9MHb5FNh7e1tCJXE1+OMFmw
	 IDLpL8TQp+JAjg3k8zHyM+uvCEJXL4QfXPYxNPOIInSlZrmGdRAW+SlNs5gjgf1iZ5
	 taT6fiSs/99IkqtuTOhF6O3Fa7C4/TXhaKBHrp+iNxDM+AgOZcl9DUSijyeQAKN3EG
	 kUcJe6TZ94lpjOtXDDbl0OT+miHr9S/Jfs9CJhldZzgUMgPugkFtem3JC0oQIZJ/H4
	 tqkpXK1qDbv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAA0CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164623368.7901.3326495635876371809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31645783104d1afec894762280c727bc726f76b38668262e24a2be75414e7a5
Date: Sat, 10 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791646233
