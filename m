Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244AB3CF211
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789127434; cv=none; b=X0whQdx34XpqXf3H07duK7QcijUn+HgcZOrrjVyk0xD0jKAhqyar+ooXojNhJdpNp7tJWDL0fghIFlvM13ZlSKB8prHBaqwTqDyHxt8M5Y5cNNoqDQJAt7uJP/aKX8ilK7R9UViT7tjqAK+6+Ip+8KAfbE5gwk8xGxpqp6TUvmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789127434; c=relaxed/simple;
	bh=1uHo9eIM886Ovbjr62yTvR4tnHmp7L99J0z1zLF9XAs=;
	h=To:Subject:From:Message-Id:Date; b=L5OR6nW0CoQ524tnlK6ur1u1Q8Q+G6nhmgJElb21NX/VUdxBWG5J4zxqpumqMnAfKW6BYF+UgCZq1TMku1VzHb0Vq/RtllSWtr7HaXyBdf3+WigyQ0BSKc5Si+/WQUUxV3eJq+f1cGSwm1zEDWZevtpHvHpbDv2nYOXXxepuHWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3MNA7hZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3MNA7hZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC35BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789127433;
	bh=1uHo9eIM886Ovbjr62yTvR4tnHmp7L99J0z1zLF9XAs=;
	h=To:Subject:From:Date:From;
	b=Y3MNA7hZ2SFscRbKl9zlaClzRUM3O5BkXa03FSyu4o9WiDUIdwOClwdZVb4vHdaKD
	 n8tGaVDv0lTLqlGEvfrrjV51gxluP/AnCSV1wZA2BwAYS393aHBt+ZvOKx2gGzelJW
	 i+Cz2QsHXunATEWU6JRpDHXbCzL10T9UgoPsxzqZCWuCeRqDpWO/PnL1SlU4QEmKSH
	 FX2PSRwBVXhxt/EMIRlRapd1d9CHmZa/0dGaOZCX0kg/vu4CATrP63S5k6iLiRbV2T
	 lAACvRIbWrLwhfTLiAeKVYVMKBUsk3MdE9lJ59f6X4qWp6CAmP/rk9ibHiFiJEnXCU
	 izGs1eGWSDlQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7591C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912743373.10157.16153599835016641639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84633ade4a3125893a53bb285b420ef1e5f34c73f094ac3715aa1550082b6102
Date: Fri, 11 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789127433
