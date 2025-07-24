Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFCE1F4C99
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753390194; cv=none; b=ayoeydWHwjtFQQWrUq9vZR4ubhFFiRNHJ0jk6jmBuBQOTEPdOoUiGBuKorIZZmYY+A7rJgVuwnCqyM4YCvNWclruOQlq9snzURoVVjMvbNh+v2fps2oOkXYoNZ+GEzU2Y6SahvvnX3dTdUpHNTEXEltG5hK6PDAPsSBr4TYASzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753390194; c=relaxed/simple;
	bh=Aa3lbZFjjEZxjZ2/nYttOAxKeRDiywOqcYb+HWhUp5k=;
	h=To:Subject:From:Message-Id:Date; b=pcWCUfkvtBekGPLMWXeeNSZNfTAVF2STQHHPZHF7nhUijT7O0BYOrjzZA8WteL3f/qneaF0+T2gOgzNHMtKUKMjTw5JruiL5fTdSyg7fxl5ABtSbgA7CH39vKH4GIoovFQ6/E5hxhByyOCXoPLo6aGzcMQg5evlhueQZE1XQqq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5mh/gog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5mh/gog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A116EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753390193;
	bh=Aa3lbZFjjEZxjZ2/nYttOAxKeRDiywOqcYb+HWhUp5k=;
	h=To:Subject:From:Date:From;
	b=a5mh/gog4xy1vfHB7diSsOmchv89EUK67fAOSurW4nXhkg6kNUacap8seens/Djfy
	 zRBNgFwTlaukbkvRP7oUI4aHz0hvACH5sPWyC0m2KTqqyzGuswmLuWL4CD1Atgr7eG
	 dmVwmfjHDTJcivaDMUjwPNshF0CT/kFyOnomCl7DjqVOVQ9q6/hWA7ETHTZuH84b2w
	 V/GnwCmIKU558lNsH8MHp+Ryz4un/SSKnMKA9FfMOrU/aw348E3ecQq0SUSm43dgiA
	 qIWPCBYJDKuQLxV/UrvHJRiyhePQXMl0ufSYdGFccoHvWRTWeafI2wsN9e7SSHOpPZ
	 s/0tb3/uXvjKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6CC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339019358.27330.15992931990759184907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256c7624f3561a3277ec104682ac1e9c9ae9460d4e0e3bd2eb0c51fa3d1ba82a
Date: Thu, 24 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753390193
