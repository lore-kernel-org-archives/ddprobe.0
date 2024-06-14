Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487A018C05
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718371103; cv=none; b=jRStmD534SHp70rKVYBEwGgPnAaxkjJf3O/W6afs3qU9X2SGSoSQpQCo6BkheHeHLnEgRq9nmFVEKbzXMayUc9Wa4AUhm9M2si+PwYDOOFMllwjP+q3HLBW8PhtInIU4B8WWRhhXXZFrbrqREX+M6wQBa6tZsa7JCJtkwj+GQiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718371103; c=relaxed/simple;
	bh=wC3qlanyO8MrJdWoCs2Y0kuFT8O/syd4abQtf8FMlA4=;
	h=To:Subject:From:Message-Id:Date; b=uNFIIZ4phr4XHYIxuqQpg3bxT1W+T2usoeG5rU5TacJv63Chsr7a14HRAYvpf4kiMrK/UhwxyknsZ/9lX8bQ/zRPFTWBWxSMX17TykMLiDicoD700s92dgcxFEeSMpN/H2v6vLyQJeUxJMLnWUGCNFtJHklNYJvkpuV4yT23klo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/TKn/+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/TKn/+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4346C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718371102;
	bh=wC3qlanyO8MrJdWoCs2Y0kuFT8O/syd4abQtf8FMlA4=;
	h=To:Subject:From:Date:From;
	b=r/TKn/+1MZRLu0vy80T32ImPFMiFoExcr2kD/jU5IXVvtO1KnwPHNrpQF7JEUUCSR
	 V7T4bwfyq/IWuNCxNc1xXeiFGWjBITjaLaFpKktj8AnUt0qrASFQg+wPNR5TAitYyK
	 KJz2asd/PHVbdNNQvEbzdoUNFemu1CqkNrV/lT14KYUG/75bXg3C6TtLfzr+SxY7X5
	 Y3XgblOORuHcRpDdN/GPbHxepsA75gmFrp+vyjMI+so0wpQ+JraxzNPaJVVTo2yeLV
	 hzHsZlIHGTUgQh/1SDg5eS1kJPfcbGrg9xZxJfiZYQPFuU/00exxIk4fUULneM0Ltz
	 rm72KlMXMUKew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0812C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837110277.21745.6896098056664717405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938e9429cdbc81402cbe42c853df84aae12793fe67b6411c1be887287c2e4343
Date: Fri, 14 Jun 2024 13:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718371102
