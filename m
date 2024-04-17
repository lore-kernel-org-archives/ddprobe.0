Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757275B1E0
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713356963; cv=none; b=PGfYki8r4wrqbpx8d2Un0VBbuFU2Ubhp8WJHLPV+3cTDMr2Ux1t9Orj+FkAuHPgSq2TzdILqfoeV14F9SiptupGaHwZlluz7Uznnh5YcLlA6fGIIqSAFDQJ4BDCKJiyd1TFONkoN9ymUr5mp0sjsDaiHJchNwWKRcHadw7dfqF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713356963; c=relaxed/simple;
	bh=9LSwIXbGxk4u+4D+ftUuU7RCYgxJx+qFJ51ph29Jogs=;
	h=To:Subject:From:Message-Id:Date; b=dwDoxNfQNjnAR2YJ502l+Z98tgC6WHNYbK4HLd49ITwtlWQ8RpklGHdx3wtk/nNpF8qIXOckHW39AeQLSoyedB0AqW46EJ4I4HFwJ7dJMKsuc4Wrt9cCPuOdN/q/OGftsmlurSq3mEfoyFb8PYivqzhpv1f3OfuhUl3Mqurgt50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C02itq+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C02itq+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C3CBC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713356963;
	bh=9LSwIXbGxk4u+4D+ftUuU7RCYgxJx+qFJ51ph29Jogs=;
	h=To:Subject:From:Date:From;
	b=C02itq+7jv36nq/cbiCkZrvPrt5wg2XJQaTXfKWSRgTw0yuhsIVyggdpbErqcO2/s
	 f4NdSMjLhy+niqSeuhmEnakVvjRonIfcBdyaw/lTLgYF1Jkw0zw2UuzG/g8L2g9hax
	 CEDsdSNcz7rhlNpiZCZt4ONpijO5nbuVEWyZWdRnS46R0+47SqdcYcMfoNfGbkJgMK
	 LIutEEmkHV00ytSjnzDXZkh8zDahdFuMvUPopH+VjWn4sAk2R5Qy8JloCyxYmBTg9v
	 RPSAPDErfPUGDL3VLoqaq6ZIZMNGZyH5MkEwP7Ny9GzKxKhvM/4nYcgF+oUucaFwbB
	 TIIpVGDBiqZhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5BB9C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 12:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335696292.8321.14315139412141844699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b69fc82b0d0324b07a2efe1374578413e766c2ec84169367b56104fc915c8d8
Date: Wed, 17 Apr 2024 12:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713356962
