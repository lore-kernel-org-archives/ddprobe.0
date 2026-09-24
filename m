Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B803048B383
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790256635; cv=none; b=iEU9sN2FF0EOL8UambjxRmM8D7ojNsQKUSmIlFBNqWMgVhTMwTR/Di8OHGPKPXOjgsbrqtl7gjQ26+MlElyYp3V3KIAfHeb5QVSdrqoxABqIwdliNiMAnb5xpiIPHVUo1EOhLy2bB0YdLAqs7vIOy/khlMITqIc/zPlTJmx7NEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790256635; c=relaxed/simple;
	bh=YCsh6rWMkuz2POpLdLGqUKrG44zslVgT24+177LfI2s=;
	h=To:Subject:From:Message-Id:Date; b=YbGPsWajGjLDAVxQIkDvqsAsnx4RwdB3vIO2jAVRkcFfUPmehRuSpA7uYWEllzczGMhS9JPSKByUFUI8kjhOZof+0WpRNVJoz5dEpCT1sr6RUno51/W4CgNNbfkZNGBtBJrZvFhcf14w7UNfW4K+PMJmfVTwCE1+HCCbYPOq+LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY6s+Tt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY6s+Tt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFA7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790256633;
	bh=YCsh6rWMkuz2POpLdLGqUKrG44zslVgT24+177LfI2s=;
	h=To:Subject:From:Date:From;
	b=jY6s+Tt270vUwrLbR3lg8R25Gb1Hc4C3+nRj+nvzQqj/R+SYPIC4jYtzWlQG0JeUE
	 JYTUqC/4/hrof0oMQyffab5XKJsko9UBWHAZ2mIqJxQZnJCqnb+Pur9BrFc7rd9WGo
	 ocD1PztNy1idTBw0cPnA5rh60Z3E0s5S7qPFr/ra+OldczSYOYr/ddT/U8C6n62Zus
	 N0tZrqm35naaGC5wN3RUQJZDquYfe7cs1el7LPb7OaIrmJq/I79jU/5jXPsZ+Zg9mv
	 +sIGCWi+wTylHEQDf7wkVGV+pGnFoasqLEvYDX6p1176SYW2SPYmHwUEjAUe8ngjoz
	 TEenCRkzUqGlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18C2C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025663371.19889.11654650439685175153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0616629d8afc8b7d051e8e523043c96522ff6d06cb1db7ad91607fb1753ad4ee
Date: Thu, 24 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790256633
