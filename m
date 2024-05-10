Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194851311B9
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715325143; cv=none; b=Z3BBYYFcZCKt3bDMulORRKqlV2SQEdm+vyoF8+D1LazCcS1R/VjbY9ojWuBW9u12fW8NDVwSdNr/Mvs6m9JG9Nqn48Tkjl79BD3NxGmmdoorXuH8yk4f3TLy0fuo49CIAyPfCiOv23E9sM7IuB62wJvpxos9HV3XkbdKisjF41k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715325143; c=relaxed/simple;
	bh=D6hrXUlZgjKdS/OTi0P03uO0SLos7nnoWJhmJbuykYg=;
	h=To:Subject:From:Message-Id:Date; b=XMEf7POVZgp39rDHka8ZD29WSc7NpWke7RKxlU23zEp9QCMeUyhikQC1/U4s2t9BlHjn0Uq7dQX5DWi0JauLxJezYONwh1eI0WfchwLCGceZLD3i9IDJ4ybHsnQKX67MtAEfFogw8o0ThkYBHLOg5XKbE8DsRTzU+2PZrZMZOzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8iwEjTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8iwEjTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64B6C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715325142;
	bh=D6hrXUlZgjKdS/OTi0P03uO0SLos7nnoWJhmJbuykYg=;
	h=To:Subject:From:Date:From;
	b=P8iwEjTjjC5ot19XN5h70ZZ+969cMvx7fL5c5GZO+GN+O4PTLZabNA9xYdpUHyY+D
	 M6gw6B+pWjoy3I4HkRb8d0NPB82idc4vdxQ65YrC4xo8xdkOds4oaA+HlZ6+v9S1ga
	 bmEw2uP323OPPOEpJbjOBB86Q25Kn+oWt4pga/XS2kDHv8Oht87XHl1/R/zvlDeIwm
	 ZO62J4lQaeXFnUCAkgwO7XklcrrprRxsY0vaFWa4gAL8by1g5eNj3OH3uXhghmClUB
	 DCLRZ4CReK2JWPu27ktCYAKIy5yteyOl1gb09ZB5N08xAhFRDd+ocCearkwOw1GtMZ
	 STQ39+F12vr2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7305C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532514280.8104.2103991263926719803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8380e3acbd74a555382afda278b3d3440708c85f9a216950ff17252f6c053a
Date: Fri, 10 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715325142
