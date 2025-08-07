Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF6611E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754527194; cv=none; b=Xyv6guxfollgdslIMFgKHQKgpsuU73MDdTQ2IgkqTaRY1NhIhnUo7UdtZH55YLdQCeKZkc80W7gYnuMX3iQdCHi/pMkMl3I0f45zl0fwkAC02uiuhql3Yq0YwZVpGLtsdylBbNkbVatn17QtxkvJAkD8mPGNhM4tcSkKucrIKMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754527194; c=relaxed/simple;
	bh=PaK9RX2OGmaJVUZ2pZqNxS1j5m76j7nBruFdouZcKgU=;
	h=To:Subject:From:Message-Id:Date; b=WlVr6LgyIXAjdqg23YqXf3U0ZdUwdbYlSDRRNgeAwZfT9Rd5kEqs4Js20Ym21UuGPOrGGa06odBkd5NhHwJff3hyCKiR97z9czcZtIFVSt2LKMcr3rWRHfN2h9OMW82O+3s3QIQkOu64ZOz0yAr8k7UDk8wNbTguIsS/D/Eo984=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olq6cmof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olq6cmof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D31C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754527193;
	bh=PaK9RX2OGmaJVUZ2pZqNxS1j5m76j7nBruFdouZcKgU=;
	h=To:Subject:From:Date:From;
	b=olq6cmofsCW+ltJBn01cuyrDTPCGZOhzsA+Yi7qwayRxW2S9J3iBuzJQ6AvoRMUT9
	 pd2yjb9ItoXfkQxX+c2SgZ/uixk4du009Lhxd/p0di9AdV3P//LFceAXfCUhSV+sfg
	 oC/+eCrieX0++FY+O/q5HefIPIwHihaHoOdQ4wHqpeEffAH4I/p8LknAs8+so842mu
	 mLJPFeLwgZDE9m5T40R28CtTiQvXWoO64Db2gD0GnYFlRr6EZLEEBm9MfS6GfSD0LE
	 KzJNKMdNNf4BEzlwxTyO/2Q39LbybGe1nwvxSDQHaDbBDXqq54x92Wuzmw5bAhm4Ag
	 guHPe99VMz5Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C0BC87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452719357.25157.11569541569180448649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65af0f2c8100b0439ddb07a45ef3295241b9e2286a1888f9792e4acad20a88dd
Date: Thu, 07 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754527193
