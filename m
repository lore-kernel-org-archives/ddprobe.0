Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3895244B68B
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789547434; cv=none; b=jPOWKsFif+CQ9j7IqfgD5zXKeFhswT0NLGQnVRCIPVBXnPNivzUmeGPqlvsXZL2DQnBdIVtEzrJ05hd05F0UtTt4wD+WV3mF83GDyaa7CtPg1EMgp8wlZuRFGnDD4oQDWjt32I7I10rZa4BEGcRmzk9mDXoeP66nIXm4ohqjUyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789547434; c=relaxed/simple;
	bh=QxMuTSF97wYBQYrbJh4jgUCBkYfnpQ81g6sXA74cOIM=;
	h=To:Subject:From:Message-Id:Date; b=QTViArsTQiLFDrrL+3GJZ/+O6JGd8GjzO1l3wPedrdkfKu8vTR7VQI0eXI9y6f5124s6mhR10bC5Prwu2s2irG7X3biPh0LOFXGzWEak9MtV8Yj8z4ugt7OGqGd2kTqbT9w8PTJRI8nQYyKsp+GPOV8tECa3AMwuagq2iC2EABY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr+ptnUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr+ptnUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA209C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789547433;
	bh=QxMuTSF97wYBQYrbJh4jgUCBkYfnpQ81g6sXA74cOIM=;
	h=To:Subject:From:Date:From;
	b=nr+ptnUoa8wFehiiS8v6+5HDdSTf/bNUGulcjE4cFrjFPJ3ve53vrtm/KgEOM7tHL
	 hE9WLRSVgRmgbSsMf87VNPh9m0hj9FgPwcC+Ogq8y0OdspUsTc9YnzikPu+Fx4occG
	 BRCg9sbqu2CDKev4JCIbBACzE4c0Fmp81p/wlpPOresRF7NgshbjZOZfW8RlEZC03C
	 d9ber8rRlkoPdS9yxbh6k1CDsE1F8a6axR2kDg0gjyCo5GyKLInRjnru7Ztv8cTviR
	 jF6Wmg5vqEsFb6PpP32aMs4JU6D7InFfl55BsxyqhlYTUHR5AjWKeMrW72o9Gr6ur3
	 CutCcfH+ZHyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B524AC982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954743372.13572.2663340303146991284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835f271ab1639a193c4255baa69055c7546837ba291611872b8d71e04aaae13f
Date: Wed, 16 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789547433
