Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C881FDE33
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748375994; cv=none; b=iFJ0/RV2BuRIaFEGmmdJff1O/Ksn7+Pq9twsuqJVyduu0T8DChrAR64KzbZS88v1mqIL+adjwJLhrgQCDgeqaCFj559AH/mGl3JfrmkNf2Hdqb1mZ2ZtJ5idnEN0kxPeBTpkIiHCpDuiGThOwiKKjut4pU+v+yC3UmzoQuYjkUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748375994; c=relaxed/simple;
	bh=P66hbmnDWWwNJrfJmBx0OL8XUyjIbHsu4OysNFQVG4I=;
	h=To:Subject:From:Message-Id:Date; b=ecosnhPuuBxr0P9QP6SZKUAur78gYvBqp0+7/wAlX4ac1ZvNcCh+PRAAZ1LrR7f3koLwUQlQPXDZfa2kd2qDcFUeXwHq29dV08c0LJCPxSAWfHq4p9LHCdEV8mr5a2924rt9k3q0waUU3xtq5Ormim+cxFZ+hXO8fsC6IvNoHeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R75s/sBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R75s/sBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3518C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748375993;
	bh=P66hbmnDWWwNJrfJmBx0OL8XUyjIbHsu4OysNFQVG4I=;
	h=To:Subject:From:Date:From;
	b=R75s/sBU4TNRCY8zkhRFqZDJG/1ORMu9s+gJNhHkhCR8Bv1XHrwEb3RnOWNwLkfLU
	 4errtBz5AAch6IiTGgOrJJet/MLxwDPFFRkfNelPRw2ZKoYEPUsqxBjwwCq03jNhCJ
	 7X88ln+jQgsGvBiEOGB/oksYl6b1puBLH8XKIBEg7Jdlrq5urRC72d1/kg7Z5zbwQv
	 9WwVfu3KrzFJ5qt7th39dnk5t05Q9DCubWSQpao4nsrRUULMkSWaci2AUqHn6i+C9w
	 pdz4clobghmdBqM+oPccE435Hn6MufixPCpkpe0Mgc0Z/ak9HRg9vbzy5EeaZDuHtv
	 HZWt1eT4hEu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD0C5B542
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837599358.21992.11619844885576018608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c300af031605a3506436e885717b5984c92f0a74cf9c9c18f622f308a1bcc146
Date: Tue, 27 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748375993
