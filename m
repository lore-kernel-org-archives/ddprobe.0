Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3785C350A18
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782101194; cv=none; b=ZHEQ8aOkWq2drKIGbSACc+ps0nHdleIQEnadlZ40B+HdAqhHZtUmGnFo3hMfqtVGBIoC4uGcBaZhrHyw1gl97akJ/vYK/6aAgI6i/CKhFCvQKfAgEU2hB97MKCp5AZZQHay1xT4yqhlhe4YieOnOAiuds+T0LgenNjBCqr8y7WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782101194; c=relaxed/simple;
	bh=q7rOJ89Zl5jHmqe2XLn0tMvGxVlx8B1GuHn64GyGbK0=;
	h=To:Subject:From:Message-Id:Date; b=ZH1nZ6Cn5oY43Q1GjgJMfCMelXEMrfgVMZAt8ynEqhBryW3OMPM8LNXGTzdeUhyjoyOsYb9dWYdGoNEK0vRFx/7L4wuKvZHlrm8lnO5Bz1S+KTm87Ie3Dl4Ti3LXvePfEduXbXHVZXFSNzUCnQX499GFB7oUZRWyyZ8GwFjP8s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg++H0/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg++H0/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6697C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782101193;
	bh=q7rOJ89Zl5jHmqe2XLn0tMvGxVlx8B1GuHn64GyGbK0=;
	h=To:Subject:From:Date:From;
	b=lg++H0/pW98zu9SKYJyClkLFMJgHWogNPMsj2ea3CNm/jyOaF6dHBJj9VZ3AOXxey
	 vlMnibBprbGQw8xWLltYx1W8ruz/iRz+MBcusplUANZCovPxm3qQ/QYEHxNC2fdM3X
	 4Gb78hFML7QljWrMTjEJKUqbZqYDWX0LziHtPrlixFH/hAqBd2D2aYEIbtkT/K9uFD
	 pwJVmlYXImAugfN/FxBRkESRsVpnm9oL4z/wWZipQ5C7OIOC3jZ6QbhTWt3f18APxu
	 62LzNTB/6Cfk2ANRydZcwmpa2sAEdOdrecEvEu2fmbKdwqZTddc7dITIRX9Jkhpev7
	 ho4E/PATbGx+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB797CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210119369.13008.1766263794703888260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc6dbf46297ea88a7e3c6ed11a7afcf0a035fff21f47329085dfa10854d115f
Date: Mon, 22 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782101193
