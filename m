Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408C73264C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783599514; cv=none; b=uJzqubjDGRcyJjevZm3DPo0lMnqvlMjmFgUE1UsRnA095Tb56DEsp2Us5sO/FgiqhIwru78CG7Welli7ik2qfE7oyaW0iJtqBH8Gal8mWCe0HDtv6GRKNMRwG4b9aQx3MKVU4AKfgmTstajz9FN9E5Bkx0xxU5D14aTOqO0KS08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783599514; c=relaxed/simple;
	bh=qpeKcr4n+yfXUanfBu5M9+KbyRW5gGix8bdNTol8E3k=;
	h=To:Subject:From:Message-Id:Date; b=kPVxf3dms5DjMGl40cftHBmtWiXxBw26b8v7iDtuYUTOZcjSaW7e2MHgwyAbE9IBOPIobxAoEMfQEiXJ64NuqDEmY+iA+JooxzQk+srouZiKV16e+bgnYlyi/oAwCJ6agKgPZtqgDIJr0aHwJvOaduPWgum7nvFgELhlwA5OGOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6F+vstE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6F+vstE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACD9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783599513;
	bh=qpeKcr4n+yfXUanfBu5M9+KbyRW5gGix8bdNTol8E3k=;
	h=To:Subject:From:Date:From;
	b=F6F+vstEp+3hZ2SlOuUnnYO5yNuysZbOVxrkmftY4X3zHiN/KAvSPat8TFdGy0Ufw
	 lZwD6YAZ5BUVfxTUIxX8HQam7JopASfx92z+s8bYBfRaG2kjmbOfHQ9T5GfpjC7ljT
	 FrEanHVK+wdx5R1ns11wLNZWJybFYXTC1894i5Ata1PfNeNizzih+OT8f6fcWr3zxh
	 mrBSYSH55+c+7NEdV8kCoHvp/FAZLsccC6NcZ0k+STqkqfHfus/L51PZ+ay17lH60Q
	 r3TYtPxYnuepSsLk/chhEHiStiM5Fgddu+tWaxQmUWQaOL8F6IkqCQB05RAnAuB412
	 Rx1EBvsMUSYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8498C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359951368.14908.7638284761253379204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7382229763d114c04b87d992355b412293b959be46294178447648f038b0352
Date: Thu, 09 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783599513
