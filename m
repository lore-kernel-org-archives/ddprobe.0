Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6FEE35C1BE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764780174; cv=none; b=Z2RbM4a1+G7lHlY8u92PN6ZHN/pepMVfItSnmmrGAbaoZ3OTcV9e7o72aqktE0+Qh+vmEgWaubG1rdNC5qsjSvTgwvLun3i6LjBaCL6A//gRdn9Phhw0JKMwvDqMNOXpYYH3fPk/DsoFqDHqHLpwMAfEjioYjJ+NFA4mTvey5bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764780174; c=relaxed/simple;
	bh=1vQT2YmLI+zgsGg+SP+mhTWhPXnmTEUDzfE4z2cwfWY=;
	h=To:Subject:From:Message-Id:Date; b=Iq67EY1mR/TF3/Est1udsQMcRl+JI8UDVG9JIuYMSDoGtR7J9uo7rHp26ckSA5WjjgGKpyN5XP45jfGC9ts71hnyFg2SWgtcLC+JyjAbt3B3sxA1gieYvBK19+dJxUH3T3m3AsJHi9nhpLqhXjezAGttgqinMZ22JpKlLa82RFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JW7h1V7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JW7h1V7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5B1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764780173;
	bh=1vQT2YmLI+zgsGg+SP+mhTWhPXnmTEUDzfE4z2cwfWY=;
	h=To:Subject:From:Date:From;
	b=JW7h1V7JQHXqNvjR09REJ0WnFp8w/Wgj4nsnEPhl6XH6t95GQzrhlCd0AY/5X1pye
	 Shf39h+nTTWrf9fRR/cWQExkiU6DplVkpYR78RizihSr8JF4C4ZGOvf8kr96psMSne
	 X5fAVmCxRkPHgW1S5PTx/+zv9H1Su5lumxjb2dvVcDXHWMMGT5qyqHPHcL1LpdBrgH
	 /HXwyHiRYcc+gpvstN0me5nSYRotupPU47ull6bIgNsp3L8UROrxiWIAcaar3IvGBH
	 REA6JZn4Gwgde4nUW4HagrL27kicsGroZ2PVsDrIMyfe2/2EHIkxwiIwVqMFRcsAgN
	 kOswmCalmEDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5ADD15DAE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478017358.6073.16925052074616638489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79b8d7f6cf9101bd20c2e8e89584e894ab179e18812ca877b4e7bae97b591ba
Date: Wed, 03 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764780173
