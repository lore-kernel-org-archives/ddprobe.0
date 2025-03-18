Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0882146D6A
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742288994; cv=none; b=FLf67FjY28BXQ17UKJzwvhkOZePS7orIh7Emx3DDhU0G26jsiuj4m5K7ac+waUp9mizozEgyKWWAmKhPlgHl4xFJ6AbbmQSafp3BCq6bqqp3LrgmjMx+2TnnC/1PVszKYwmOSEl2VcwgNdfmnC8eW4vOkK6B+/TUT+DhcQOmNKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742288994; c=relaxed/simple;
	bh=U0E72xZ/ipbQLEIrLZ9cHUSr1W6t6LMl0uDxH/ruKmU=;
	h=To:Subject:From:Message-Id:Date; b=Dolx0aVC6SYC06I9bRAovB4Dm6fwXjDePrLb0d0oB1Ol7CuExKRtOMEvUhqXo49+JQD30GHdeRaQr/waETl1Lg8tSiuMz6LmHO+r9nq7vT2LdOlCl9z1w6QUAumIzOhJKo3zo+v5fSvh7KtALRL9djZ+vvBRyakqt77ZbLsR2C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgr9kbus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgr9kbus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02465C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742288994;
	bh=U0E72xZ/ipbQLEIrLZ9cHUSr1W6t6LMl0uDxH/ruKmU=;
	h=To:Subject:From:Date:From;
	b=Kgr9kbusdUBCcVG6UArkO/2eQNf/YOOfrtFOR12lLYZZQJCJkYbSBFv9qc/l5QTTK
	 G6zeEO0ts5vJlECe41DM+YUI8o2gCnUcQno5F5BPHUDZkK47ZBHZV0qGoK2AaxQ6Pk
	 8/uTGc0bGZuhMsT3Bi5f+ZVQZmhsrQK1gY7mle28dPCK6/e4PS3xSFb8B6p8zJR0q4
	 FfBPGPH40D6ehqQHo3jxsC4GCi69xi5CQO72DW49f+OCxKmJoGpKto3cXxSI11G9ld
	 ZBFxJZJ55KOnUNyV2eQhuRZw97EMVi6slMkhdzD8f42g4hIj53VU2Ut+NhCWfmGXxX
	 Y3XNjMCTA6vYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8692C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228899366.4156.10192604225829680335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96e855f9316d024a21ef23710293b17c79fc63423cc677ea99dc9a7abc39079
Date: Tue, 18 Mar 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742288993
