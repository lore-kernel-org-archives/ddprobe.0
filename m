Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E52639FD0
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719780863; cv=none; b=M07ShIgj+5F9L3lMod9n44qhDKJUwvstaz4+/RruKH/JX16MDKwjK5zTTZq7ZxWSPs1E56Iwq035Dd8BPan/swTpESSGALwyPvYY9k5F5EXSZQ+VxdBvvrwm/0O7/4q2+32aEuDUFMocqKyUBNY+xSYNj6J8dqj2OSNeZ9oKWWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719780863; c=relaxed/simple;
	bh=agERBSbRC2cbjR9YNTfQ7OlttlVoB6dd0IGwgnXZAKY=;
	h=To:Subject:From:Message-Id:Date; b=pC0UX6yb7xa93VqxCPJi8pExQNXUYKWu1AYalWj4HTlNeHkiH2j9ACtEsELPoleDbQ62BKsBMizp3IkeVFfnSvbu0gdZj3C8Bps08L/3lBk47vCMWs8jrmzLznBIuIxHBkq55ta0KxSFFaP6cOhUAePtDQSxBIijhDpa7afGNNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTiqBkXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTiqBkXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB49CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719780862;
	bh=agERBSbRC2cbjR9YNTfQ7OlttlVoB6dd0IGwgnXZAKY=;
	h=To:Subject:From:Date:From;
	b=XTiqBkXvVDw7O9HlhgRH34TFHea7w0W7OpPMPlR/ld4nAAIQXaSj0jdBibgtrEp9i
	 8mwbNAkjIYbE9q2LAL/hJ1ilImA8D0xhjyiFUoM2emg8obPlXQPKH1r+3tt3ztzgkk
	 mCN8YPrcZ3jZvtLPDH+SDUCU2rAabrv8bvWSFAE54tHziSCG5KGpY1DKKVOCUaZfvU
	 9EovcpoDbBHbkwwEb/fh74aRmfEX7ncjFEn2DSM42t6d0gSbbUUR/KUCHOksmg4Mb/
	 9dRkQSlCnDZQzTPRidXm+xhjd0UENOo7MvChHCjVpg/FmwfB0Ec5j4wNLqQqc57eBE
	 7jbXxAczOHGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C567AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978086277.13176.17244864879206707688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86499fa94b89e6d8fe95436bb4da27e9640daf57d719000b178ee8e7bf4ba5c9
Date: Sun, 30 Jun 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719780862
