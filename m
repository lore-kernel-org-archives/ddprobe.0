Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2023A1AC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718872823; cv=none; b=YjG5Ys1OkfFQtoUa89knaGa9bMdYe3RQ8e59dN/yGlEpxp3uGPNbmjLNo8/vQXieuwCMN5p7/TIJyoMEKJFBNpM8pYusPvQXvdDyFapLZAPnHXV5023CNsVeLvETdvWRSPinP2MjNbIvrOY70zhQMVcEGSF5yIXpsQJDN2xkF8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718872823; c=relaxed/simple;
	bh=sHAslYvOWay7cPLGm2nxng0sAWyhM10ARUNKZT+5lvI=;
	h=To:Subject:From:Message-Id:Date; b=qOM+J+GNDoQ8mf0vbFkuQmguHEFOhKasdURU9X745v6Xst53L83AUX+XP44xNg8jCoG9IgM2fnzsapahyXOh98BGUhO1RX8de9b3LZpv5XHSaESHGF3t3E277q8LdqMmLnTISCa/hR13mHsgCG/+FG7QC6jKdxive9ULJkNNdTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bB61gRnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bB61gRnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5BCC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718872822;
	bh=sHAslYvOWay7cPLGm2nxng0sAWyhM10ARUNKZT+5lvI=;
	h=To:Subject:From:Date:From;
	b=bB61gRnWKOTTeobbqDyvRI70+HQKTqB0CR/YAobr70Yy2d3dvlcELEtJkdFlLU+Qg
	 Bkw7W32PbMjyc0GkZvD7HxWpPuM7vLEKmvwVMf9xkawxb2hh016U4vltHPO+F7+nth
	 d2avk0M3EK0EUNQgW7LR8MRmmCQQbO4A6ON99k2uZ6bXzrU8UKLvt3mBcRLP1rHjOt
	 eCma1oOWXOldaYHiGhnLSH84fVDk1n+HUYlb/Slm4/FGbIT88FwsbGEGG230KlQ0ia
	 eZK+Lwaf+c7ObrB6aocb8N6HLSFxQH8pPO6pv3kiJ4RXEQa+WLZ0hivR1NMwT5xBt5
	 EwctrafUam2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29DBC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887282278.32731.15618184066709636619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fabd4286090b97cfe7466f241a364572e1bd403b6098eace0761e0f9c5953d0
Date: Thu, 20 Jun 2024 08:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718872822
