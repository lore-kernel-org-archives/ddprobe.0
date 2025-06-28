Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A773221FC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751099394; cv=none; b=qLAMPoDqXk+XRrKcKw8io0yjo8VSJVrj0u9umvusClixzoaXghVRSQUvy1RFl+Ufs4P1p2l7gTcEGVsIAC5PHk3fKqBPFVWFxGgj1GDmpzNzRFLG4VdY/L3EgTLANGQvNicb5L9yP+q2aZT+bGXVRmov4yDwOImbP7UwbyIDbfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751099394; c=relaxed/simple;
	bh=GErIgq+kvzeyQq7nz+pXe4KoJ683kbYJKAL/oKJlRHM=;
	h=To:Subject:From:Message-Id:Date; b=EexRRVltXaG7UrT9xHeOm0y2lEFHc4XHjYSv4hmoXmDq4hoVFLyOB8L0BuNFNjNGLFFxW9vY/X8ykZQOIcgC4M8o2JfeyyqqTsB3GAGE5chc8gSzbJ5nfnOqtZQ4qO08rPSgoTY36pGWkmSsdbUGOHzAWPPUHDn0PsoOXUSUWP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAvkUhmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAvkUhmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B13C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751099393;
	bh=GErIgq+kvzeyQq7nz+pXe4KoJ683kbYJKAL/oKJlRHM=;
	h=To:Subject:From:Date:From;
	b=aAvkUhmU9ydKoqlnU0s4FazMlvsVckeMwRIlbdNUJsNEGCIuJ3f37/sSFeJJk3xmB
	 enQFhuu1KVKzknIbjDcdDRwpYedCB5aiLA/yY4+EuFwcZ8ak+L5oL1bdl70P2VcRAr
	 ExgvrjJG19tCfS12IXZg3ZPLWwRwzlwYVEp2UNea1Bc2OHSUpqOPyJTqSB4h/9l6J3
	 9z9lS/HgcTyfydoXgIquNQL8ppJex73xjfQvDidL860qAOxt1RKREMiIm3kWSGwNI+
	 L1IbTsBe1nQOYNuipL2Dtw7AhKdwz9vaHvn0MrZm1/6zIi3QhAfy4Qr+k4sV8e/MkX
	 B2YmGJdubUNPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E22C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175109939358.25534.7475721287416600642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff7d32ef6958890413d56bff242fb8ca6fa3f6c9ce2a7c178b89e7cd5b75c40
Date: Sat, 28 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751099393
