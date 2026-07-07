Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C8F345CCE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783391314; cv=none; b=A6+/ceETa1P63Je7qJVjvbLAOG34hy1GG8wF3AO6g7A+mo7Ni00tvFYfscVtVPW+fAgVrnob8uZOzLZUg2jX8ndS5BPzhAo/yHYhikdUi5EWOpr6ccalNF3U7BxTFRd1Cd4hbdG14JjJ0vL6CzWCP8/UItDuLkKONz0zMGQk5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783391314; c=relaxed/simple;
	bh=buBsgTgnhc8VJFzsMIW1SC4cpO6v+Y4EwTrmPAFO3Ng=;
	h=To:Subject:From:Message-Id:Date; b=tu2Yr8cq5sS4M2MCiV/JIPLFUWB/wtuaQZB0YvCM7JENEFLfw74XY2M/F7QBbBtCwM8nbfPY7fyUPjoSNycjavVXC8onwpqotTXCFIxzRoVD0ouDAhDA/Bhqbv14CNey/ApvBzV/K7wN7HFlNieAOAorJYbuL8I8LqmlOQ4BRfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p89W8m2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p89W8m2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC887C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783391313;
	bh=buBsgTgnhc8VJFzsMIW1SC4cpO6v+Y4EwTrmPAFO3Ng=;
	h=To:Subject:From:Date:From;
	b=p89W8m2so3NMGInRrcS4aRudWD8/NnoxRW8Cg0pRZ5jNF7iF3CHEvIMVhd+uIcEfz
	 x5tT8+o4iHmPTxktBsNr1NrQeuIVwqihdiyb/y2p7MndI3IM4P/az3UUrCFkAoyHgS
	 q/cU4mO6PAF//uKTbOpgSlcE/dpRedqZUCAJQ4SL792wHZv7gX0GKRfqOelj1/wDDP
	 QlxKaN1mSRebdPw8P8xa9nAiPFI3HH8YxtNY1zAdoEqSKSWQlGo8G8W5WIsbCHeaTF
	 rDAwgPcG87Ad/Qv130FYrkN+4TB6fTz/QB6gkaOoZjVu9gFzgH2ceHhABxInON0uzJ
	 /wlbjMH0M7mTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A865BC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339131368.6596.2122375526549267517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd065c129c17d489d6dcb1d15392221362a316c3043084afb1f41f38ab9bf63
Date: Tue, 07 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783391313
