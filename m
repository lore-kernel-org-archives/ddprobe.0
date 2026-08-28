Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA68288C96
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787955034; cv=none; b=sWw6i1R9U8TQ1YiLOjN6MujBwTv41CCr6m1JpKNyZUkLyXL4CK9d4dqc46xjgVHUXTKBBjzWfiI+5dRKQ2vRV3uu1l4+SAbTjw0wj2kvpvYlszgozzo3k1ZiPHY2CJ6CpNCfAL27lYBIcdyz4oQS7MTsgrmkcWs8kzODZDTA6t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787955034; c=relaxed/simple;
	bh=mdnBX356jVIIHILWGNJLJsnTnleF1dRovjaz1ikCIu8=;
	h=To:Subject:From:Message-Id:Date; b=unMMAzhs/xgS9Hl0S0ad/MmHpChJcv01XI3aHE70OuwN3h3dorpNGvNmQ9MvycJt5gtGHcX8KUvr+UtYyhL/qpjKe/ONXts4QejlpvVsjn9t81UkF9io5pO4Tlj+mj+CS7E3g4zIr2LJEDJJ4FUtxx2+ZzzRy9Tc/VM+xxCD26o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd4DAutB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd4DAutB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5523C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787955033;
	bh=mdnBX356jVIIHILWGNJLJsnTnleF1dRovjaz1ikCIu8=;
	h=To:Subject:From:Date:From;
	b=qd4DAutBzhmLLWPE1t3WLwHi+8ZUfs5YMfVG3ntxzatGoUKbTpXKCJZAW76+oXIHa
	 Ou+b50xIoN0EbcI0QcivQdVBsscBvyNrdJBcESdn/+NxpLwYV9FYBUus3c9+onLhbU
	 prWrwH/LK93/Zs/EZwtllTpCNkTOBnqQZr9RBhVPxjHBK5hm2Dzx+wM5Z3fqtIjn1I
	 jgF+o4vxxzMwvBcE8vBD/upuPXYakgYnCBKO8322ddsyMYOMGe7lseJJh2iW50lWB1
	 FgBUREMM1t6hOceK1r3zEfYkX8ZJi3Ol/54YAI0ts5OZAnRhH/2ZtA0l5thaxtB1wQ
	 CuyawQqBTbiqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0D4C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795503369.2919.12469146572299632740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586d84cf4992c35ed3de2264388663975e039d73bbd2dc9b1fe1d1d9dd17efc6
Date: Fri, 28 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787955033
