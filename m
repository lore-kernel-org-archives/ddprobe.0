Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9EB6FC3
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748164194; cv=none; b=KvduiITRzQNhaz+RCu3xEYc9kizEwuk7p7qYmrPR9zVh6qEvcgAU91OZMMnDBtbmDarY4xAyUNetZBFTTvc0dipDxjySQwvPd+vPlR/216U0H8cGIiOhNtr7yL/1Id4NJOMSGOyn5xQWkmll/2YwRVbCoWeKIzfVY5lebgXw/xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748164194; c=relaxed/simple;
	bh=gNMLfh4lwCWGFfCId0dO305NRfEoOkjmBJAMQLyDmoA=;
	h=To:Subject:From:Message-Id:Date; b=pQ0vUO+Bc1MJpDj+vou9oDZ6GTpxf51hCnZA+YK9eiV3IC+1iAZASzjPpJynqzwYmGgsuII9vDFgyNLl8ATG2JgT5ojhW73Rd1FtOvG0rEnhKc/SSmlsdE+xa+sPO1I9WQe3neBm/plCy2gxSKE6cS1o5bJ41E1OwQwdeernmq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyRHBu5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyRHBu5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A206BC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748164193;
	bh=gNMLfh4lwCWGFfCId0dO305NRfEoOkjmBJAMQLyDmoA=;
	h=To:Subject:From:Date:From;
	b=OyRHBu5ig0C86Qew6xNeUshwpnIfO70ko53lLlrVTaduNP1noDDjXHPbtxU55GiNr
	 l9LGS+/hUZrrlIazSmN0lwccp8MdGUvlZeKrE19gQ0/q9ttJ5KLFGM0ZVKxlz22DT8
	 71nUaT/mq5RwfG5Zah+B79CIUgNGi6teTVYbxfl7+Wy4in+ns6Jxxbjq+Ctgtu8q/y
	 k5e65N2vpYSGLIpl4Resu1bY/oCGTQH7zAhrCneIKiATPr15XdxvYCkLqYApogD1uE
	 r/CUS1QPvYVUiwU99LM0BjqASDBYkGvRtOB1IsLv/XqIx0V8b/VDwO8IFzO8mQueEM
	 boBiNDM8Nv39A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB3C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816419357.4292.11135873886166835009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a13ab8347c374b0dfc614975448f3f0cbc87c921cecd1c869ba75771f52a9e
Date: Sun, 25 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748164193
