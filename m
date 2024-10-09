Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C16E208D0
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728446754; cv=none; b=MPNxj8QTIu9Ililggvc+YEaeIc5pHqkEbkyqqVXjo7HLErd0hngnsfkg6HEIQ6wrRKk9WZ0CXg/2jy/12JSWHkMmc41Ogr7aKpbfqivOqn3nr2ruesKIiFkgiVJZd1ag4wjeaeM7KAf0QHHz+MxFXrl8WVHM58V8FsZ/JSte1SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728446754; c=relaxed/simple;
	bh=DLKNllq7RnR63QvUfRlOsBpHn2PmxrQUhclEEpmKIsk=;
	h=To:Subject:From:Message-Id:Date; b=h0E+65gYcRE4DIBSo6wEi9LjsOeOasjioqzI3d/OxHaKnYBh6ejbhrQMnNiocdwU0A0HZ5GlHF6qAIXtbBW3kO3gss87fm1u5JvNHNAokCFRZ621mVun0Dln4UsT+K5fpCNs9JK+beiUxY/emNojhezlQJNGDQgYb+K1ezgiH2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzQZoUp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzQZoUp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B015DC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728446753;
	bh=DLKNllq7RnR63QvUfRlOsBpHn2PmxrQUhclEEpmKIsk=;
	h=To:Subject:From:Date:From;
	b=rzQZoUp5acUEKRYkRQ0ut16wLY5MmmAUggwG0OUD1Cqlt7kd8Hbc/l7gvGaQoJIjI
	 z6uVUVhJ5sql9CBIrfGVjH1/SmYUCE887dcuK4Pm+3fQCojemj18BVCGgNgqQmWOLN
	 nD4kconWI0oWWzt70bRg8mC9udZ6uMNnIzlBEJVFh55UriCQ7ZoJ6EP2h1IdZxKdgM
	 y4OauQYh2A6LU1wCu1Dn0+1U+SRHCOthPbPFGMW7S9+CGvXdXUp4cxaQGPFy02bt4m
	 4LMeulPdsHWA/LhsuK4LQnJM1e6AcCeLAk18AvHhKMZVtRhmVAOF8nw+rEiJZ3L3eh
	 1oCQ+w2CdXAKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6F9CF043B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844675361.10137.17539371964602320205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0b40b3f16f9004fc6ad97c99506805cb50dff9797afd91bb4a9680d123c875
Date: Wed, 09 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728446753
