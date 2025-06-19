Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351A83085DF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750295994; cv=none; b=Hv6QOON4d6UripPzCXri84TA2rgYzUSG/G8tySi2dqoTvY3C1D18cLkPMbRIayfyKBmtbZQJ4bPcUsljGVf4AvkwNawDzMdZqo2A2NFVwS0qQpaFDRDZzmPpDOxzEh5nNFrrUw8LdONSqGB1GiJE+2QXKXkhtX5x3gLmYOH40oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750295994; c=relaxed/simple;
	bh=axuFU5amuidmOs15Ffx6WYP3WGKoqlFlgF0N1SubwRU=;
	h=To:Subject:From:Message-Id:Date; b=gILMIW/Bn3WS/ihAC2aYcSbKbAzkpFOXAK2rOixU00zyBhbIsU9yS4wmUcPw/5V0erK7oh93KhV2fBN+BYCobj2ei/u5NVue3IjeqIChv8QKQneo+73ZB5lf1JhDWw5svc0g00T2xlGU0VFB99cR9Yd26tFlCp2PSP7+ezIo4QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQEj52UY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQEj52UY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC622C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750295993;
	bh=axuFU5amuidmOs15Ffx6WYP3WGKoqlFlgF0N1SubwRU=;
	h=To:Subject:From:Date:From;
	b=sQEj52UYC2rbyYGhCjkwPIB61UEDozpEQOYjLONFvtKe2HLnNNvVyTupInXPHIx0B
	 W5/zst3KCbyB8gFq/eC7+Icjh5vb3fgLK49l0QWAJX0Pj0wkQlZgsbsIhJhlV3pI2N
	 26VGfUbelWnpxNJGZgBkLpaE8WEAsZe1oAyaXlS99m64QDz3OgLSkoK3wH9/gAa37E
	 1vNjiiJpDZZKFpO6uTBY9NRkM/4WrDgNkcDSObSekhMl9rx085eD3dU1EOnoZjjfXb
	 IK06Clsmwmfx9iuz5CSrMShh4BR0wqbNsR/3Ha0izsUTVRXiAhYffAoPbVWpr3MHI1
	 PkN8Ag30YJVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D19C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029599358.24066.7676279551922965892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9dc88fc5f96e9fd1121370136c099dd95d2c723e8a445a47871fed2d6e114ec
Date: Thu, 19 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750295993
