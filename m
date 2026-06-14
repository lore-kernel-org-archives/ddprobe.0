Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E3F1FC10C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781427994; cv=none; b=sWD0SGU/7xIZSfkIlXaFl7KNYh74v6gLIgXfg8FPOWfs2PWI/hmuBmhLDpQGIF6BQoNHtfTC3YpDNRAcYg/G2rWkvku66b6AEKMR+e82wDWEW5VexmHK3udpuI1oHuPS1XKaOcb+x31xv7APh+891Y1zkOJL+oKImD5YdZhddDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781427994; c=relaxed/simple;
	bh=TSeBtqv/r7wwqqdxixNZHftSOmO3CIG2JIwnwwcd+Dg=;
	h=To:Subject:From:Message-Id:Date; b=PMomFyXpfInTvCPJ6KtuHTRdxc7fUz2VO8JKFXrmwUgAfd2P8vu8KdztgckD+9Z/qU/vTGl+WtoniLdnvmHj6n1DJ+CFXGAePwfFoduG7Ea4Uzml8YxZ3Wc8FrKj2Lug2PJDWlXrONeBmyUzM5GGUU6cxtlYd260i0FCmAZdoxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Epn8J1HP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Epn8J1HP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C73C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781427993;
	bh=TSeBtqv/r7wwqqdxixNZHftSOmO3CIG2JIwnwwcd+Dg=;
	h=To:Subject:From:Date:From;
	b=Epn8J1HP1pWOLEzzBfcw3oR4hZv9wYWdV/I9pL98w/FvP+YRdE5kIPU/Bh+jUjWGy
	 Ab6t92CAxoeVRrqwpIAyDQI4ViKT0WJNg/qy2smtCnYLDLeLGcClqSOWBO8SZ8eHiD
	 rplsnbRMO29DDg/jpv5xUtaaownsGMfqLp85Rabx0wYbZDoGEd2hN3fWbaji3q0AZ4
	 3PlAZH9BO15u80IqUodYiiXtrc54FMMkC5MzGfjmyWlBXAgl0m8rvmkX0MRe8XqeHx
	 rWoyX5v1sObFz88sPYAjWGTSQE0++v4UDDR1vfEA4MR2a55/+KyepljkrKciN7OZQL
	 4IB+t+YyX/HWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39B7CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142799370.11951.6216142704532467495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176b53ce846cd754cc08d499085fd03a77db7f6f033c7f0c99b7ddc11612fdd0
Date: Sun, 14 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781427993
