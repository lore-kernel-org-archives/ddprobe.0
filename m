Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A441B950
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719254543; cv=none; b=Bs1lbivmNk7wlGKSLaInz7jo13dO4zOUggLqyXrLgTMvlpI+uhSDoEESBypdDOxZPH4O18TYgFfhNV07LsSS6ScYkmk03CGfkp8iBlx7wQ8v0HGy0dvjc5Dj50PNPU/kXkFsmaKcAjdtRIZtHdkqoNwPZXJ2uOM3nnQOTHWyLJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719254543; c=relaxed/simple;
	bh=yVSbVT0A7HVPZWUO3TzR5JAivh/7oU6TDUteu2kcmWc=;
	h=To:Subject:From:Message-Id:Date; b=Xmn06SlfXp3Gh7wggOHAJ2OKaPK6pOOmUnuXoytTCakg7t1nqzSFfKyjY0bt4Di4uDD9IIWpBn0MXpvWxKuhI+gC5vJDYwZ4RtXcPDczfz4nCW7Z5QNLSk14tTLTf0KHlGTn0Ab3T5gqkfaRAAVofvE0/yOsFbEIwORl/Ex+tsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkDVvbG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkDVvbG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C20C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719254542;
	bh=yVSbVT0A7HVPZWUO3TzR5JAivh/7oU6TDUteu2kcmWc=;
	h=To:Subject:From:Date:From;
	b=LkDVvbG2/YhmjGNC+ZJY2ji5JarX+IIa9c4vofb9W7x2Xcb04XRE37u02v4I0Cwpw
	 gCIMvoRWfSo4SXUJqldc8NKwQ83CRaQwIeuOp+kW3JqHUDZb70RZufu6ppkISppw3P
	 uOUCkkk2jq8fJct0FZG08jKIXZogS3DkdcT88C9Z47F94+XTRPtkNxeonZAmsV92gy
	 78nmsxMcAS/GWA+IeZZKnVUu7qEgSEBWKNJxe1nRX5GHg04nqyAbDUPO6QUDvzw4E6
	 d9davD3DcOtMf0TRhbE+OTaXsCIAJbV0wyGtC3GHbkUj7VtnzfCf5tCgyxM+a68B1/
	 vnfC40Ns3k1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7676C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925454278.5524.15526574420298071451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22eca782c6b8bdd07976dab312b4f42d311a4772e84f1302548dde52e3c2963e
Date: Mon, 24 Jun 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719254542
