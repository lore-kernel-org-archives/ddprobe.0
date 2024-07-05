Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696AA143887
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720169123; cv=none; b=qj+7pQ5FcI5a7doFdFQFtM4B8KrpoaO9YFndtJXU83u7B9HYBFY65kKaIKpk3pXgPn8ggN4Q7C7PPd/OeBSkDFu7cZhHTdtQ7LXHe5zo8TcgxckC9PODOSYLFXwddnjlIL77hp0KxWlERxgmGHu+EXD/kAH92MoADyRN3NRH2Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720169123; c=relaxed/simple;
	bh=N8xJCG7LtA858T8+cjFkFUiPS9f02hljIrOOORuQBi4=;
	h=To:Subject:From:Message-Id:Date; b=SjEdvh4apmmMYA3I3UElQX3M5pbcFd6e6AEuPSPA5llRW71HbmU9HW6aEsyFfJkLr15p+xqKG24J2JPs0VzisYDfo5itzhtWzOxqPEP2X7oyzkSwnWkJy/3m753CAZq3y1V/yNK+ZVXOTLopMCIAxYrg3KK9kVFrqAXBZefO4yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyKcCK/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyKcCK/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7754C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720169122;
	bh=N8xJCG7LtA858T8+cjFkFUiPS9f02hljIrOOORuQBi4=;
	h=To:Subject:From:Date:From;
	b=tyKcCK/keWhF8yyuDYBLDr9EQloUtOp1+54Cjonl3Pk2xyM7kT+oJObe2Bn35LdYJ
	 eboSMkJuCVW7pj3O7HMPK66UhLm97wwy9L7P5oEKwIkgADfbEV8l8e4URDlodmJzWX
	 S8btmjZFxfq1FX655EL1WHLWmjoi6RAuvuPbcV94ri1oICzJ2b888fKPmW7lIvcGvQ
	 rbxnhkGKqfknJTT1jB9sikgMd0EaTfcxBy0dxp+bUOCYVkjNtQKb8jrVGiF6KoQbF/
	 PypQ5smdv/lOk4dpH0AWJUFkEo7c7BvMA3JEwwtiKpprc8U4bqHrXuWQqUdnmhXdOi
	 3ZoFYPpJlkpiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C129FC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016912277.24559.15607834137779864491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f33e97af9736bafde9f4c9dd7f2c40a735ced5794eb8bbe7512df9978fb266d
Date: Fri, 05 Jul 2024 08:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720169122
