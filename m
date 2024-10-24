Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DD41CBA17
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729791354; cv=none; b=rpjngwObHU6Kq7QRcpxUHoA4UFjCjLk6FoKuOjtqvn/T/Wi1hEim4DoKStAUKnQjdMWlbHlB0h9XRzfMvIRTi0/f68Cqv39TrMAAZQ2zJJ7QYwjJSPBoF2oWZKaZWWxDDQMbvWSr/qy9/EpMTgWkzbYhtuNkSmd0V/aaP+lMFQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729791354; c=relaxed/simple;
	bh=84DAwJkAD19zE8462617eYSCGC5N/8iHOaxsQrXQ5WE=;
	h=To:Subject:From:Message-Id:Date; b=syeEJwhk1fj3U5/ZdUHBL4r82qUqLW9vpixyfkBITxXO+fEeIura+zL1c12b8OBOLn+Zx6CG57qXccLWYyD8EehO3FxzmhqLP+raiS0uu2c+IbQPjCkUMZ4zwhTaLKlhon8hpWX+d+TIScGKgb023eM276UhYXpBk41jt4bSeUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNZOvNik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNZOvNik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD57C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729791353;
	bh=84DAwJkAD19zE8462617eYSCGC5N/8iHOaxsQrXQ5WE=;
	h=To:Subject:From:Date:From;
	b=UNZOvNikE5xDZ6QYD0n4rHrCYA24fe5MgQLDlONUcUJLx3+EQ2uBJZarjEH+Ci64x
	 82LI3ONvlErr6HNa8rUwymN/ldlltLYzNKiirVa8qgo+0/hYtiH5GtpY0byASYj6TE
	 APFIE7lcF0xt1wHfr5T3C+c6UwQWnSt98MevwYrHQ15vo90AVDV/uAdSYA2inX51Fn
	 EElnFcM+ik4LrqShZdfcru4+DZu5kqWg9J5Cc7lUWGwPmr7yvDYBaBnlUIQLSbr95u
	 gE2g9aI4OiETAhMZ4HBK44igeD9ahIX6G8XQSpv3S8K9D+jod2K9xa+l1nIw16IIT5
	 2P1KmoPw4BpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E57CCE8E9A
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172979135363.29359.5075274918169835790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab72eff04a6c3ff0436ecb20c55ef739257173caaed96b67c33ee7c174935ea
Date: Thu, 24 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729791353
