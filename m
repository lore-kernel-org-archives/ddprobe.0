Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE7D1FAC42
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763614314; cv=none; b=asQQivy5F2PPKJ7p+a2PIN+ILtclPq6MgUL00wP/kr8cWrfZs0rVmlMGy0/7+swspfKxvYV++fxd7Vfd7Vw9xrSrQtfO07OKVNJxLMmb5sRhuYIeEyzOIs6C6HBdUbfADjrVHlERy8gYPHSfTePGS9iu2M2BO9tK7XdBiMdTi5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763614314; c=relaxed/simple;
	bh=9dlSG15caoXaHpEehcwb30hAmef70fbKIUjfvECivVA=;
	h=To:Subject:From:Message-Id:Date; b=XftSE1SEPD5MvuzRBxwUYKAGhwKLZ8u25sz53J+WrP1qX+fxWUWZDEdN42nU9iNCi+o2IQAOOfn5FZCT+cI+ZrNVnq8VPShUZjcury/p03t0fz/TAMXYeVTcidXB77u7fK2SHIE0Ojq92wFDfKfhLsfV+ILKDPbEY7uJxOD2ngY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttXnSejs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttXnSejs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA212C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763614313;
	bh=9dlSG15caoXaHpEehcwb30hAmef70fbKIUjfvECivVA=;
	h=To:Subject:From:Date:From;
	b=ttXnSejsxserBHFTRBoJ6MJHVtu6CFnK314YT8n+TfFNzJPL39JGqKaVCwNxTb1EV
	 TFDlb/Tnw6hJp78Xf6QlgoLJ6p9S+aIBLYvK49a3C2HLd2AvUuRp/7G8XIO6AdghYK
	 somYjKHqa6DtXk6mgBmvZUUjPSS1GCcrGY9CGLczJix7uQMzWI24WrsH5Pvh5C4zMc
	 aVuRoXTGGlL2NvsvvJrNR0yY8NL7f7PBqVGeNqAziAsw6SNJfeLS49brxLOJZ4PVlp
	 JPM6J6IW3oxC3aSqeTEHkgctJtbYe6IFoenoTL8/gOQ/fesv/leRISwcziTxb2r7BP
	 dkyU0Ip5w7ZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97968CF64B5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361431359.20587.13110820799613773808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0eb221e89f676b4125ac46cbc8502578ce55a2022d14a2262ce492f893cd47
Date: Thu, 20 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763614313
