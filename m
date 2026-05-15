Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC963EF0B8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778835034; cv=none; b=E7QGVI/qR7F7bBoLH4EpLKFGIRDBtBpKYiWmoOdpjSfESaVRMIij5jZDTwTgq5rh67HDfmHWnGTqyt+IO/wcw8xwJQIQiUlul8VdT//97ymRQXb3onZEx1NOIaoq4mEEwCNfm+sOmslMueaL53/4zdX/dn3H8jSt18ES+yE7O2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778835034; c=relaxed/simple;
	bh=FGnIGmqCgnBbp5cWITTGRlfO4+SsU08utdVC2GPafiQ=;
	h=To:Subject:From:Message-Id:Date; b=nmXhAsHIlnwp7L9qMbNSq2CR7kg2dK1vDh7lbUdDfOTZ2dy0KX/V9prgtPiNgxxPF54O4u2nJOgsYPPuY3IIahH9oCE0qxbt0/RUe07PklUqGzwrxBnLV9ZGyDpQ5zd6RfY5yHpaB0IRt29U0Kzl/JU54/ttl/wUrZzk8rHRzQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAKpXPXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAKpXPXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB81BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778835033;
	bh=FGnIGmqCgnBbp5cWITTGRlfO4+SsU08utdVC2GPafiQ=;
	h=To:Subject:From:Date:From;
	b=tAKpXPXXZxmwEjEipYf3Jm2OfC9tDbOHJ7EXnJbAEhbp1io+97FsEfW/iUISmPG+B
	 h1LOb16Suv/dbXQvHjBESTBRls7JCaGqmsHCy5gQI7iWoOgl8edhhlxE56vT81HnnO
	 POvjpOTfm8xnu7GHQZGAg98+KG6lsAgyu+eQ0+5Lk0eWhUlyowzZVA/P62cBM1tN46
	 V+au/jG25GA8jjOXYn4orzitUQKAHH09UhIQKcgURqeiR/JKUKH1tTlCm3domXMR7a
	 OsuL1jkgF6bLsB5+mrBsucreUutGOI3WJ4On5CEmIy263GABiDvxHbDBL8NeBiV2aw
	 e9351CTuIL3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC284CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883503369.25477.16402035042184633734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcd7cd5e6f46f7f41901a4f4645d7f8a3c300a811e2885775d5a57879b65dca
Date: Fri, 15 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778835033
