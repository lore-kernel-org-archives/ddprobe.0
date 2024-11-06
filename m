Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9AA190075
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730908554; cv=none; b=c33068OtqHumpm0smclOYG0W3tGdvFWwDTw6L72HdJM+gVo/4nxQRq1m2KueK5alQX9QsIU8/MgnltT0PXhIocifRvbpoVBo/yXGTfxvjVoiC42/787gyBYAyBj3EjiNLQ2q3TShpGGUm0bNAVIBBmwEPbIii6qBoNTILxuQ9ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730908554; c=relaxed/simple;
	bh=8YGJ6jSt/MswiebUf/FVSLBhoQXYwwGSL3/BLzqYoHM=;
	h=To:Subject:From:Message-Id:Date; b=NEtGUHMfTE9Hp5Nb0Hvm9fFvGc5/8c0X0E0ydqpgv0Gc5ihaaVaP33owDp05IAPPz+dwCIAFl+sEER509Wzr3uFv7GtRD/jQwtllx1ohNLHznHqZbVQH7/NtvVPZtTkHUeJbHSY500Y1az0YQERoivxyAsFVGfDfAtkDv+LFh30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg/loMcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg/loMcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C96C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730908553;
	bh=8YGJ6jSt/MswiebUf/FVSLBhoQXYwwGSL3/BLzqYoHM=;
	h=To:Subject:From:Date:From;
	b=pg/loMcXaMo6KfNjYOqfBukmoPJKzY78WSE6RYK+TYxthVSnZBuW4j3XiJyuYqagd
	 Wz9vUO1oJrQDyqIo3IaZLnNbBEILnVF+q04nKiJnox08SFVI8ykkfXDBGBPNVTEfWp
	 HqvG5/QUwWJyVNyQAJwqZ6kwT7R3DNXWZJE90jDWA0jj2GtXNX5kyjmk5K7dauFVtV
	 k3ArnnpiWayytbTQ5GS8YvQelYVymEgp8EmmCaXuKr5U0DgqABtne4CH81j4kUQ8aJ
	 ZvuaK3LklIvw943wnpuWQOwWS9Tuh9rO3MyJvuMY0/78cYQdApoBzgBvrCF+rCd1yk
	 QjowxCHoAtNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935CCD59F49
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173090855359.31858.13571481868556418752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4833ebc78ee18a588cacb2b8ad381f18d4c66aa4ad66c74338d09d98c3f2b8
Date: Wed, 06 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730908553
