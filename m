Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B18A423E94
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786051834; cv=none; b=q1WqblaxPv2tU7n3F9MUG8PAt59WCeDlPty/RLFlnY5tc7QewqZt3y9Vl8Qvq2Pd4QA4xDdFfAnrBxUIyMGL/Gw0j1M4FdSQawOTN6a81GTqJbQJAOqndQtvgOIs4xF5ygFqyxGtiPYLE/iceCDnP7+8j0GGRY+Vl/BLyUv/2e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786051834; c=relaxed/simple;
	bh=D8RxSYWW/lPg/RjG/ZvZtTmuOA5cF739EMBJJeb2Xq8=;
	h=To:Subject:From:Message-Id:Date; b=i4Z0VOaE/NM+ODdT5fvzHSgcoxBSSx9oqnIhBinhUB9UMwUEbke4Vpryt45A8U459J8V3Y7u09AD2BahnFfRGybxxc3gSRB2QzL8DdUYPg28sf/9sZ1hlrryokLiJv3EkadEnvIWq8afLEBbsgJ/YWGHrR9erjoKYUv1O3EwU1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGz5XUOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGz5XUOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D315EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786051833;
	bh=D8RxSYWW/lPg/RjG/ZvZtTmuOA5cF739EMBJJeb2Xq8=;
	h=To:Subject:From:Date:From;
	b=vGz5XUOCUKukDiMOoJ6lKb2O9R3xB/O8At9xCmWxmfyukejRCyB0z4WHg8dP0yjOC
	 /NYdRE1gFn5PEsUSkNzrKd5nTBMPvXteEFifhvY6XnzRtnShIClPj+/qoXDlpEeWZm
	 2kqF/dAGaiUP/Nzd3zrsKwTZtwwy+uXrrlKMxrfu86tu1IbFhzWKpun59WeLlsMKJu
	 tQq71kbqCNr9ybeSa91+BfWjJHOGnGLuK/n9GLoFpfY036LZ4h8ecASfz2nOyU3cK+
	 FBOrJdgqMhCKcwzZVbvQ3SYihN2RsfBWJLgNom5Y29BP2bimWphxO0TcSJYS9wqVsZ
	 vfY36ji31xYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5CC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605183369.27483.9939532413875328552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2409ca6b5c3c2516473b31ceac18d96d2c0625f8a3da17433094f4eb775a31ee
Date: Thu, 06 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786051833
