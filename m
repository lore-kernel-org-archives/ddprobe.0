Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C982A2D47EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763752913; cv=none; b=MxflTnOzxIMMtJ1Y/xwEmi5ub2wygvSGg5hQOlexvFgZy68MtCYnP4IGLi+MWrSVh9K4wUrmpN5CSXLO9egZ2TMFKFiy2P35AO2eThUvcyUJMx/vk/GGZ+WiMlT+I2SL9JCfu35E231hIK1zPpczjzeJI1Cdw4pPzzEIpYSikWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763752913; c=relaxed/simple;
	bh=zU+Oc4spTUN7zPm8bmXS7f3QG7IVEG2YNNg3Dh2EFdU=;
	h=To:Subject:From:Message-Id:Date; b=L68CKsTcMTGnI10I16g6Is4JgddagO8eN2xpUaSzbElksyyS7OvqMTj1vJIRyGxhQQ04VVOU9jf1KWdcEy+S8SmcCy+TZgQ2w7/FcxEN8tmahUJ4/YRaABYlokj41lOcB5ozk/pHJD4Oy0Q/XJEDnzCvUqCWpe5MKtDXgTYeCfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ9qdtpc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ9qdtpc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D52C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763752913;
	bh=zU+Oc4spTUN7zPm8bmXS7f3QG7IVEG2YNNg3Dh2EFdU=;
	h=To:Subject:From:Date:From;
	b=KQ9qdtpcJUno1FPBwmDjiAMoPuI0wOYNcfcYfqYVn8O3JXUu+MYogRjzpr+yP+2Tk
	 icQC+qZfBkMUNdOKnpRMLASsQ5MO8MWApNE6Y7Oej7fuYjYBvG2q1/XWUlxurYvxs/
	 dZQBtk/hEaGFJHKUclYjMehpr9cCrfxwK+2AKo6WXBG5+x2RP4iVM3ii9C5OH7tmk7
	 DaCJ9vmk2BJOHnCsNf7pMz7I1lWuKpm9t6D3WtKImOmBFC1JAkACY8hYp+v8hu832J
	 bBf15SLdDojpPdxeNp2+S6skHsNpETUJeXZ1c30B317p81kSi4yuPKGwBv79ycgjs+
	 CHLON/kGuqLVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93555CFC500
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375291359.14745.5164249894989811972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc35abcb4c32d2b8fcbdd44e33462bea83a36e4dcb5564ff5b53d7388d9d3a3f
Date: Fri, 21 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763752913
