Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440A1194C96
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743526194; cv=none; b=fWxL9abQfVEIA0ow5R71oXUwV0RUF6r0M84tQ/9d6hW+93Iu7Wjv14d3dnhqEnbNmpc6BlbTPOt5BKd9FqziaZzVeKH63yAJsEm49Lk6h/nCj0Pq97TzRRftD1ZkWWhg/n/n3XswkJsk3ET697iLt8QtLvvHFlphwAePp7xNmp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743526194; c=relaxed/simple;
	bh=CRgLNRdzJgpIpLKuwVnY/x9gbunbKxdOPSnn6McWOro=;
	h=To:Subject:From:Message-Id:Date; b=lK2cLPGTgF1ZE7mh248ipUogKpWRHJwy2VOfOXMewvD01D2jzKunlr69BPXlS5BfyZTdRw18kI3a60lA4HhW/05jgPqGh6uuvBAajtsAf57enhcD8cxIHzOSeKpHqu+kE2pVboHpJmFn/M2ssT7tyvasQXqQV+o1oFzGyY42fqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cF8FOxe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cF8FOxe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F42C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743526193;
	bh=CRgLNRdzJgpIpLKuwVnY/x9gbunbKxdOPSnn6McWOro=;
	h=To:Subject:From:Date:From;
	b=cF8FOxe2hpfJJigwEqyfo7MNPAw485CtzQArp3Iq9cROEMEx3aGhDQby1VYwRhC9l
	 v9hcUl6Sk7wZO0Dmu7hRTIQBvj+t57ouR0/p4XROHsuaQcFycj3OgyCorxPiK2/mOm
	 lmn5buxShKSYSPAYHnRL9D+/wOGf9Ybs8Us91PqX13Ji39HnjG9LUF6nHFJ1hedtvr
	 3ADEaxOKn7fwCW05IxsdBzFOKCtL+8/FsCXhuxCJO/5upsRG6ed5GNqp/RVMzXZVDV
	 TSbjOfs3fWuFZOIgKnAVbiH+2R1Y7SBPxL99dTweG2b3uu7b8d1mwuOUAeMV/e3iwL
	 XyXa7I9qaKwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A56BC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352619362.540.5407644941429907132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c1566ee812d57b1536eb9494c51a356cdb6be2fdf0563093d89a3c9ef7b09c
Date: Tue, 01 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743526193
