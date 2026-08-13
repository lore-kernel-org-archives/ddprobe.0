Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412162C0296
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786609234; cv=none; b=juuDMLD20x80DimXi7L6gIXKH6j+l/ZvC2pRmZ5V/VHQRcAJUL8/WZWvsq+IBEzVJ7oohrUZ/vCa8hQ0EngorPqBJQNtFc77ThF9I2RsOemCjV8TsUjfZpwrOcJ5yzSp6pZ1m2SY987+bRsGeF6cMAyOFushm9XMyUM0Pl68xKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786609234; c=relaxed/simple;
	bh=urV3BgYwQJyqEKtfMAcIFr2GL4k3mXyLKUYe5edmP0g=;
	h=To:Subject:From:Message-Id:Date; b=isrsyWHB33v7cinoFkgn+gp7jemgVPcvXqUWx5Yl9AiYKcE6Sa7c4PujO2DcV/AO3dDoMfFvn/9OMjYKBvDlWE1orQfoIwANOrK46NE4CEwuuxeLkX+K5LXsbAcSLbbomEXeRV2LfL8LT7+Yy2Cb1UD0HCJpe9Rp3R0ldJGULlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQhJKE0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQhJKE0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFDDC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786609233;
	bh=urV3BgYwQJyqEKtfMAcIFr2GL4k3mXyLKUYe5edmP0g=;
	h=To:Subject:From:Date:From;
	b=FQhJKE0UUV/burJuJWsrzDPhjb83Ec6T/yNlaVoNj9PtfKWeZmiqiWHwYMLqmTFTU
	 7ZYNYg8Nm+LvOEpfbCe5gbsBU4WT9sTveTCjkGb6bQwo9KJd4leV6rcLTcKbEgBJ+9
	 QCK+TrgXysr3yTR5x2MF7jubG7BohBNyCNcMWezJKejFJ+myW/gzXdMB1l7uTr7zOm
	 kDinNSwTtSWt8P0xI6vM0BpVSOLou0CDsxKLEFRBJy7VGBAwv7wFN8yUtY6tp2azVA
	 4mBKXCQftoeHylk2+YudXyN9S2FSrnq+OKKhX4q6sgTW62Yh+CsBe0tXsiTJhSFFqy
	 Vf6xnvRHIOA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BADC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660923368.11454.71322702655385849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77af468b2419aac1f3a4c9896ba7450ddd7183cc92649fa490dbdc804e7bd3f9
Date: Thu, 13 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786609233
