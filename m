Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146C0846F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759444795; cv=none; b=p1kicgDKdIithcGFwqIwaTS1dtnF4EEeGgSTg45CjuO5bmBWOZTFjoee+5X5TpH7Xlw5c9FSgPiYKsMh2tWvu8/IHck+5US3WCSiJuaFsWWAWCqhJl52k3xcdokUedCeZqu2f4+wRdN3G9fHoav8Xipd+MN6AioDmC9e/3Q0UJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759444795; c=relaxed/simple;
	bh=VHIRUDEzwCGQNR/gF1oJTkSMvfXCWeEMzV0NwhwHVUA=;
	h=To:Subject:From:Message-Id:Date; b=d4QajmL4EaWZHG9dzUR3BhRM9OnidaCMvtk81ZHKqzrDxzl/KxDhvTGp09yPf0SNoV0eha1M4xdwQOSY+184OpYKLO6NeglhEa/wDitmfDwEr269L0mZMmNx0FGmBJSnmzsx00EAtHKHhSiVznxwFYMFSq767uOm/Uvf9WiPAsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvVQkGyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvVQkGyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A379AC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759444793;
	bh=VHIRUDEzwCGQNR/gF1oJTkSMvfXCWeEMzV0NwhwHVUA=;
	h=To:Subject:From:Date:From;
	b=XvVQkGyKKE6duZMLYejbdnMJVQhPdSXqwoQU3UQnphyk1Ogfdd0jHWGiHd7lD7VxC
	 Me3CKO8iCKZpCiZULAUqSpH4VeHKM3uU14b9XyMTLsQRv4L13RS5hwibRtYy7cCSpD
	 eIquUvoqretePzVp3M9WWUHPiyhGsQ6u9Gzy4toHUipolVt7UP7AS8eyFezDFdF+IN
	 nmw7A4Duo6ip9/AjRLZ9cwmZ87g6GwvsfAXorq6bBUAxvzvQrzvjfpdgCVFa/1EmgJ
	 6qg25HftiEtK2ro6s37BVIQTzXCoORQ9ON++9BG6t0xo0g/qD3O3DKOa0Kv9Zfjb/L
	 dSpcG1O05HZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B14CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944479358.26121.12652865409753903187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17d8e0d92468d9d985c7fab2957367dd09ebc7a6497d0f867eceb97d9530283
Date: Thu, 02 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759444793
