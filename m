Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA27289811
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763016594; cv=none; b=HZnWVjZq/ps64po1vzqoIgtLAGzB1gfBo8PEcSSZxDnXiYq1jxfCmRtsZbpU4YyGIjtPfE5zkKlMN4bZvW/YKtZMbbuLKj71rU6ldK+WQbhvd94WRcLd346wBmn/qCDfHXJxR3i4bHCAa0jL2v1hEbNjXkbnuUdRaiBhJ6s0Ce0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763016594; c=relaxed/simple;
	bh=KHjta0MjFOQJwnHt2kS8aZS76/OOdi+GPGgHj8Uc4Ho=;
	h=To:Subject:From:Message-Id:Date; b=e0dloL/9hx0kBiqu6zVj1CT43yDgwUdMz1y/zTgBUBiPhRhW7FIechGAPiZp7D7N2yRp5Z4AjV6p6eFdUHrymOQpswotVE6R3YJ9MkxOw3E2vmuJ21TvaNbNVWnkNodvQ2WBuLpW0y74DyeFsi88FIrL4mPsIMbYonAJw4Ko1oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q66Zzcnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q66Zzcnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763016593;
	bh=KHjta0MjFOQJwnHt2kS8aZS76/OOdi+GPGgHj8Uc4Ho=;
	h=To:Subject:From:Date:From;
	b=Q66ZzcnpzGRgemwx6tRj70CumeFunmNpxLNKtpc3MdL8DyoYh/ZJVrRkVahcPZogR
	 Eo/RcICpwqbkuGM8rRuxpMDEOjelYLBmSajWjAu5n05HGHkMzJIJwdPQdafMQgTM2W
	 rSLQIU4EHtKktlUDLjvRoo4OXSBT0d/zrvibCTsTZOnrfiFbtPVxc3UwTEP/qlBioE
	 LIj2l4BB9/AZZuNddddsKETUn2kOUCqX2vxeSMX8uRS33YxKDsojPhUiPG8vw+dwQu
	 WaF0AWBQtNa/NttufC6KGJ1Ce2IeO4/XzO2HQawIemQSOZwoMCeduoa5YyDFAgTgWJ
	 CoQChsWVW2mNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93613CD4F28
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301659359.25751.5629616076831639874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafcc631453ffd8cf0742cac7daf389afe8b36f751c1d0a8eaeb212c694786c4
Date: Thu, 13 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763016593
