Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2531921B8FE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751091594; cv=none; b=YErAGMK2sYjak8EDDDncHv0Q6WiPv91XluiSL9ZmdMYmgQ+DYb2mO8Hmgcdmr9/1aZX4HGr8VbM+PrlngKaIVCnku9U/ZCoHvYzeeKhlaq2anGecKzCfy6md/CSERYdaZ/wqkduUfF+Spmgi/CNRagHJTWhUr65s+1TZkDr76mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751091594; c=relaxed/simple;
	bh=15K/DjcCuCfsk2JD4/Nvio/yr4v7ylkY+GnPX+9hyyU=;
	h=To:Subject:From:Message-Id:Date; b=o427+CrY/bo4wAl0XxVdvKwnKmkNNWi+cegEFmu9qi4toZqDHPGS+cXaWP35dvczmStEtICM5OoWUhwCizQNmWMM3jWTj2fEU9E4kfwVseleN2HK9JGH3ic8muDfaXZGXtwt8iwP+Nun24k8pXLeS9Sdr2cB8cgrzeB0AiEc8FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJrdXcA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJrdXcA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6E4C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751091593;
	bh=15K/DjcCuCfsk2JD4/Nvio/yr4v7ylkY+GnPX+9hyyU=;
	h=To:Subject:From:Date:From;
	b=mJrdXcA8JaPXO6cLlDcMLqa8qC2Tc9VaTnbGRQlU5aiwhkUK5f4fdbbLlOyHX0C1O
	 y6X90k5pM6NmQplnLEi9NXViXa+f3JDU/NXa5orvNiQCkVLzFzVdVR6byjtbRRiP6K
	 TiJ+k9btF4hQnjPYXT+hxYOrYQUCzaZx7T9CqYGf9CF9LqReQfsvz3hfsiBuCn977N
	 Px7vUGZkKtKI2e08NIGU5nTVCnsV6V9ebaKvBEwOfM2gnsMaUzMI1zoRy5w42NbAIK
	 DMm9wI2j3KOWlJHslQp6xz+HNFKRDh6ofoUTolaax5n4VrhMbrNnsJnEGJsk51qj7U
	 TcwyPmQQtJjyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697AC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109159358.8790.9262847779152874977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafca6c061a329d3f818d0fba9b76e6f2cd8950c0f21e6bc1f15263ff797175c
Date: Sat, 28 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751091593
