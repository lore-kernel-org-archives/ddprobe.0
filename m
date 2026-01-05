Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24278284884
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767578634; cv=none; b=hzskpKQTQIVTsRF5yn/8mA0teRN8KjDetXcmiczvzvTjK7T88+frQ6LtIvaXLcE1biuEcdiAK5eitN9/FDwr57Z0tc68jN5PMAlhoHbCIsWqHaxakPIKQRp/D5FI8+5r1O20Omd/ovd2Dotr04PPFmIlQHu2oftabjcoE19/p3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767578634; c=relaxed/simple;
	bh=beQZ+bWP8eYTHUIbAPLRwhVeOZdCdPMsqTFfXUXa3bM=;
	h=To:Subject:From:Message-Id:Date; b=CItJvdOs+J5eLvnwUqF2eNbEXWMJ+DMyPeix4bvyYewMQDNst6pW5Epl4oAv5/LgC+MqUr2uEXzvdAWs9voBrg9gpdOR16/rLhdmToA/tP95nxc+vpy2QV7jON2z4d70bvXyDS/2+clV7QkJqHL7fAHy/00R+cOBT4SFSi1Qd60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsOn9f9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsOn9f9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A751AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767578633;
	bh=beQZ+bWP8eYTHUIbAPLRwhVeOZdCdPMsqTFfXUXa3bM=;
	h=To:Subject:From:Date:From;
	b=DsOn9f9q9UIFkQ7GyB6VNfB4s/uCT8bs+3MeQ1EOhfy8lHPZVYYWDOx+frbpgPbwX
	 FOtESlrDrTYKaTAeXML6yFZPt1q8tsceprtcYA+dJ7Wy+HcQGbSfOZO3i0ENvEV4CG
	 nExdCTotryXWeqAhhBMWVVsRm265g6OJg6PWQHDPnJCdL/rmliK4AUlKi1kj8pgcxf
	 0lxHndtmsk6N8hm75invstEIxwMz035a/gIcTyojP1mJnGOmzCpZOKCanbxrx30NQC
	 xG6tEMJIItTa0JYA271qhzZDOdkraMuENm1pKNAJP3LCp5ud6LTUkKUxgrhSE5CYU5
	 ZIFRKnwJ8wKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E7C2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757863357.8268.2761102109281607918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a2b5468653d15c4c2d2b2afc07a7a5202eb0ab27a9184bd13d5cb33ed2315f
Date: Mon, 05 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767578633
