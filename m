Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0797A8F54
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706240897; cv=none; b=GRpyGitbguANEa0UM5yeqWynoxKNCcKzVz7TRFT9cYv0illVe2SlFM1D3e/AlKRzbEXLQE72px01k1z+W5lcHKiJFseZ4Zxs4hpzfcsM9cwjKYkna1nRLeHqmz1FcNV3zVzG7n/jiuBU1Nvv5r8WSzzb3w6MH1DR70GYX30kdZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706240897; c=relaxed/simple;
	bh=PekbQr+w6u0Tsxl1ShyiuHOOXrW/wpEAqlZWjjoMmPo=;
	h=To:Subject:From:Message-Id:Date; b=Nd7iOdpWSoUkKHpcI/tdeuXRZ+wgKuuCKD4ofk/3l5LAXseFJY6ws5yCOTkzbNj9xsboUAkzKA1kkh7Iih1+/qcGroCBafgw62dAe3fz3bbMzXET1sp//jk0aLJBCGbem/mSDN7zZMvDgswvHjAFqNCR8nORKxtaf043Ew5Up4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCSHmOqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCSHmOqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC93C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706240896;
	bh=PekbQr+w6u0Tsxl1ShyiuHOOXrW/wpEAqlZWjjoMmPo=;
	h=To:Subject:From:Date:From;
	b=uCSHmOqihsYl7yiYjBrtbz1W87KhO8S74LFE9Gp2APmJktk4GhSgvRIufPxXCEwof
	 +NVsiHnV8QZPKxLWSYCcHmvIRSu2saMqb9OYtkDVNIkeFWqINcpEFzXNynukC23qFd
	 BMpCELl96Sl1u2sblkv2i2CboVu7GzU0ArcdfmRaCSlmC2oIEikEdBp0nibE1JMnxv
	 D5HKuEWxQ4wMAIzq4jt/z9HTZ3v0o1Tpi0/21gahKG3AxSeRGqUMwu1O1hRMgPdNe1
	 BTY7k9FJfVq5fMqywulRnHoNgcZc8sQyTmn4MNlMrf35DV6GlIk06qW+WzQHYNEq46
	 AX/8XRwPN4/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E0BC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170624089637.13160.9241246038635959932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e7f2473ae6aab464ef54bdeeb63a66f4d38bf8fad34fde6393833688a27f5b
Date: Fri, 26 Jan 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706240896
