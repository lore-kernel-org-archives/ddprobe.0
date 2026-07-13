Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3583E3AF676
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783931314; cv=none; b=ZS3MAXN4qnOh6QnO24BbQMN45NW0wxE7SV5cTlKLpvJ7A61LCUsIMSB8/woXcTKb1KYTcC/GvFVI41a5bSCzwXDgYsINONTN+B8Ts6GnryZ/AGFdelnGt8AXh0Ucd7C65BaLl57njn0/CagOopPL1c77strIQAIf7juUbcoXs3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783931314; c=relaxed/simple;
	bh=FFVAUFJvxSMq8rTVsD08/25ou6/McObQXC3RYHSgFBE=;
	h=To:Subject:From:Message-Id:Date; b=jCLivXLGTnxjO6/iFH6KUjHyY74zvcXRN5yNAIK8crZMK3rMIYDN1qnm4yTr48UrRiqJMS8ROiJ9jgY/eey3QAcvF/VN82Moxkb+U92LzpOF5XhsLLl4f2LcJdweMP+U0u+V1iDnBPwjx4bRG0MKluyFlHJkCsyWG5LZqrIX164=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8yIZ7PO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8yIZ7PO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD07C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783931313;
	bh=FFVAUFJvxSMq8rTVsD08/25ou6/McObQXC3RYHSgFBE=;
	h=To:Subject:From:Date:From;
	b=G8yIZ7POxWYqvCWdGDTi9rA0lf/XRnMJ5HfIb8h0p0xd9yJEZHOzJWEkmwNBGl38a
	 ZnnBXzbC3WrGXL4PwjVQ5xPH4voMnBVKMV7uYnHaS/WrrVm3upLGZfsChkljxgKGa6
	 oOgBg3TwZPpFHgFFEDNhq74EtpU9j4DlaRRg7zNo0gdr26A3SVtJwFAm8VBLzntQTo
	 MgGNedgm8I6n1k1pRgYYiNHX4qDPYvoPMTCionRs7tKhTqRoBsxWctd+U4/d6ILGXn
	 +3oUxO/2GaKtrqhDlJ50c4slbRjQu3mrmQzctKKTzxTUV6lu1EFwtNr6O3fj62mT5h
	 N8x6Ts+ECxc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B5AC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393131368.332.10309409545321042983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a883a4bf0d5d59d813cb3988040a03c27e4269bd540c5bfd48e6a8792be4d54
Date: Mon, 13 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783931313
