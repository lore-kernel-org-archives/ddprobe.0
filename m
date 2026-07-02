Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F76306764
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783030714; cv=none; b=p722sLRrh/ognua4V/W4AlnqQ4n/J0kUyBg9KwX/FTAlWsTNVYp4UTOreeIOyve00AA/outPCeJXRWZ0zen6f5yfhc9edRcuSleHomzhFAwb1ps6mqXGrTWpjDcztk/u62PjxBBN9aAnZ4b8l7r7oAzWj/dg/ob90cu3GWUw3uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783030714; c=relaxed/simple;
	bh=P+/5S+c5oZaCZb/xTbqF3+FbAnVLon7BafbCnj85Vao=;
	h=To:Subject:From:Message-Id:Date; b=d3ntqO7+8c/c6EeATCND1iqzLAQcX6zJx1hD1T7huHOz+hf5/bdu3S0i/DQujzJe7z5lspB4QPV+pMa32XwW1KPitn7RnjIf8cDuaM9gcGvRv+lDYtJv4kQYGhNiJvc5HSEyrWkWKW7GlgYEhxDrkdgDY/02UUC5c3BSZCXd/Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoiBHK9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoiBHK9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEC1C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783030713;
	bh=P+/5S+c5oZaCZb/xTbqF3+FbAnVLon7BafbCnj85Vao=;
	h=To:Subject:From:Date:From;
	b=KoiBHK9mrE63+4BRGxuISoF9O4XL8ClvuRZ5vNfUgeg7XpQS7hLiyA1rQzMFjPG46
	 a5DcZALlsmPdO3I7gVKS4jBUq9O6ANKNAl9qMJYFFH+JSGwzxvkJn+Sw3tThFTchyq
	 k5fjNWIbZUzihZL98uav3yNGkuNHoXewKMLDl9vm/ful5bwOosUP5T2o+6cywH3Ke1
	 R7yLiNqsYEmWhorbKnvPXYnfvYjMf1G8fY7tSflkMn1yoJhsmnnVF6TblgXK5ni0/q
	 d4fkyXQnyedtedQzGmV6rTLuGBBKEtEeq9VWQVx2Io1pI2D3NtUB3rbdnvgPm6CuOE
	 MQ2LsjEtncGcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA792C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303071368.6008.16834977744657833269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83366bc2b41b2fbb97d496ab645453b466f7adff88920bab41f8757da3cb5d42
Date: Thu, 02 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783030713
