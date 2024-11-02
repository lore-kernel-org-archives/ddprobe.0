Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449AE191
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730507754; cv=none; b=Sg5laid8WhnOiAD+TWeZvXP45lY6BxbEMD58tWW/48Q8KchMSue0mVkcmClFol2DvDzH3AfAH+tRB6EMHmpAxlPEL5SZ2kprQDXBNUav10HhDGWvslwLEuynRV2dBvCoP5AyGBqDUZluEn+FQwcy+6gXm+2WWG+XgAp67rV5ACU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730507754; c=relaxed/simple;
	bh=uy9kbS42wnMAnaDStVlM396YwU8zblL35St6530d8vU=;
	h=To:Subject:From:Message-Id:Date; b=TVj//DqnUm/exSCKa46J1ck1pxmm1zYGCfawA6AF9cCuSKsWsaoFt2xB15B5AfZmIhg0mT+FmZlhnuh1nE0qQ3xjjH2USKMbjWtllrk70+L4DUEHDZUGbwS6zbiRbEusNdjFhmbRwQuffBqn2zlH1mLy/c97frOXyBo128VRAkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ps2QNBmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ps2QNBmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3802C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730507753;
	bh=uy9kbS42wnMAnaDStVlM396YwU8zblL35St6530d8vU=;
	h=To:Subject:From:Date:From;
	b=Ps2QNBmDkow3r5WDxiZptsM6CxF0wJvVtu9W2+kwLHDZwZUkZoQg9BAJVDm1Ylj8k
	 yYNInl47mmmkP+urJVUHw6SDpQnZch8zdKBcjZ7avQBCu+JLZsRpu/U62qT4u4t5k+
	 zPWD7883AaWrD4yrWEur80/d5iDxxcLmFxnbCVOJqkrT5WNL89Fy8FAfnhI0XLOaPr
	 HdyqAwwm/tbU3TpMswE/qnTpoSrYAEF+XXWXCcPuwUjteO7yJwN7CSXJx7Q3ShsZKI
	 tPFaFhJjZjmo4QiDSRICKQW5z0d9wf1naEcFkvXbdW/6klQ6ZxImLbbkYSfkfQs5qI
	 MqwkNZkyUQbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B63E6F09A
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173050775358.10192.16147281718052118813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd29109ecf86b5caf7c6800e20661652c0340a421dc1e9d54c595529a1a2ebad
Date: Sat, 02 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730507753
