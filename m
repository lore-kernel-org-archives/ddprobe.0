Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD04C3128BA
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771365893; cv=none; b=th+XzIVwwP004YSAN4YIz/QzKsggbJzZkB127mvhUDBbkpcnxe/aFKe0V1P9SkM/HrKELGpeOIa0aRk20uilorab3jyn+17XAOJhRHwZc0U5PojNwCa04CoXfsKchuIv3R/lj43UXgvHk0PR0sK1tiZ7CrOfV8Hg6toI/fzhpNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771365893; c=relaxed/simple;
	bh=qPntk1rLWNBtYEsu8TzCXQ1l21xd/yTE1JUYA8O0q/k=;
	h=To:Subject:From:Message-Id:Date; b=fev0w9Tfr7XWX/8SakIckPN6NzKWoFmh/DTyfj2BDkWsFqdgAQg15VEkhmHp2IF7ZzVmYr+duxRfB7Xl6MYFCTeA6xq0GL2O+TgE5C6zWsuvAs9uREIjTy/ur0jYNSoUSS3iZUL8uJz4ZgNbFpbcXYIrVPlpd7iuooAPbswvZto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivu/v+i0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivu/v+i0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB7FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771365893;
	bh=qPntk1rLWNBtYEsu8TzCXQ1l21xd/yTE1JUYA8O0q/k=;
	h=To:Subject:From:Date:From;
	b=ivu/v+i0sudkHif3VS9wMaCBpxUz60XSPEEarRxZynfgSOrGOm/nFFjWbk3fSQhSH
	 Oy0TjX/LSbvy5bsHIC39q8zu7Mp9PymV2HcVhEvwSaAqO6tn2JW2mumb9Eid9aKAUs
	 YnisDJt2Ph6lqAh4uEJIARn4tZrcBvTghOLdiif9Ov1gT0IDV8PFs9/HptZjvOzeW4
	 W6H/UQTMMc1CK4lSlgw3N4vY9Dopkd+JEFCpJ0yCOAeg180x8EQWZxJYwt5grWXCOu
	 5GcAHn3FE3tjU2MCWMJuK09FtaAVm7UBv0CHFsefeRM/uUfM0seMz2DBn7bhd0HchC
	 qTgK2Zn2MLkIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B13E9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136589361.27582.4345421730625579163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6487ff9919932f279e75c22fa395f3f4ac1ff82d63614134c5aba8b09eaef76
Date: Tue, 17 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771365893
