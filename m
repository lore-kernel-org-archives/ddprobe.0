Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499603537CC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784574514; cv=none; b=iA6cwaRPEPA9oDeyRHMKvxIiCqEaqxZ1Q4A3uvv4ET5+7V5Hrd+YRbaiSiJ7Yw4RyuS/xOrdv+YkFM7YcEv2LjMZ5RVK9vcH2D98Z2ucxMjg7P4YCyCn9UvslerfeuHe4bBzgNt23qMWtta4U9xlmsYhuYWKnwt2+c4auMgB02k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784574514; c=relaxed/simple;
	bh=ZRouH6s9GLwjvKPEgc2uNVQ6pH2Nfy/nAxZI7tYfUQI=;
	h=To:Subject:From:Message-Id:Date; b=gJUN/2Y9yn5RHn8Xss3goCCMcgvA9BfS/JMgJj71rGdnNuQN6bkJtbhJj2jz3tMVTRINbcejbzwfRZXocgZsUsvqqLbPmHeXg9B//l1St8mn8NTyy+26Cn95HyA/xhSf52u1mxxIBwDBTfxLiLgRPGQbhf3a6/6a87ktWnhHNbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEy/RLY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEy/RLY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9935C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784574513;
	bh=ZRouH6s9GLwjvKPEgc2uNVQ6pH2Nfy/nAxZI7tYfUQI=;
	h=To:Subject:From:Date:From;
	b=kEy/RLY18MB+AsBtjt+87cPWusGYAYxBRAl3ac7gsPjljAFHZPqjaWkIb09qc+QQ1
	 wfsk4Kk0v2DRnHTQf5abQF/Y2/Sdp6vHPOOJj1iNzbl/3IL8YK1iFMSPe+VxdPQZC5
	 L9Q3A4lemGomrqEsIf/d6ciocCerQZnstSJW2NrMeXw9D7ImX+BEfaQsr9CHQ0oNWH
	 FVZzpMP+me9jZvXxSKUZ1GL5NDuEnZVezw1iVzVqilBNQxzF3WleQYPfKJorsLIVVP
	 /ihV/uXjVzNACcEhPizQwBvdqzec8JEcK3W7jr6pW7f034HCtePl13TEKbbXFTEtuh
	 R7NPjKRViOBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B452EC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457451370.7063.3065033404658552052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd3ddd17adbf78bc43aef6657c6b7bb18a24cecbfff08f225884583c9b7e669
Date: Mon, 20 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784574513
