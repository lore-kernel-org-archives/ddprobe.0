Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EBE389107
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791831034; cv=none; b=WoWfhKS+1b3XVduQlYgz03wC3+oe7cpm/aqLz3e8Rfqa3/20x9fgIywdUraPyW6NPjJkkqNf44FXfS5OxuOgjJ6ZsQDw0N5lNqKPk+rWRqEDXy8fyitzUICwE+YgfezWMGOK09QLeNFSOn4CxfnMsfeB6fbY5OrnPDJ/qhtBjAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791831034; c=relaxed/simple;
	bh=/Lr089qzgGjlcvaOy3u0bUX87DhbvqD368NPispotiA=;
	h=To:Subject:From:Message-Id:Date; b=jRS5gDiQuZUWZ3Oj4DBC4TSd40OrhJy/6Cj0dxsMnXflYBLtv/Ch6MdVlEafkl8l3PTdSMoX+VLtQjywXCtsmC4MwI4W2miq3sUDo/9vhgngmOwuWre+Bx/QsbYLYt79TuIOXEDujW+PQeoO2/n6gaIyUvNwjAWPFGQSc8hPS5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDownPSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDownPSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABABC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791831033;
	bh=/Lr089qzgGjlcvaOy3u0bUX87DhbvqD368NPispotiA=;
	h=To:Subject:From:Date:From;
	b=MDownPStwIvLLfAYKkTfrdUTsQdPkm2WlcOJnAeTCtKsGVhp77Fp5VcSQ6tAlY9uy
	 REAJ++M5w/uDrB9Ew1qqTxhYceYxdVZ9yPD/EJDfJB/4IGxQPdUdNWcT0XkrbXVhCU
	 UT2XLO3+Y5m3s2vvyW0g6xu11t144c6c5Mi5wazJCAVqJK6xEb3RfQ102IHDDJSDqp
	 5z5gx6o6raFuHy9fvR7izPxJ8is86N2fDMJMMzJerPKgc2GpBa5uYfEQ1BdEUDav0T
	 MUuM0WyoUn0dm7Z0xUMr7feZVP2AzsCT3QuLWiDO0Kjy7oR1vq3EJQOj1cH7w6V7wn
	 LR2d+kVP+bZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5A6CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183103370.4762.8794850566257567231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33faae24b5743f7ad1bac2f3c08563d8505482b95ad5068781ff28e43123345
Date: Mon, 12 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791831033
