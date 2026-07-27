Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0200636073E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785119434; cv=none; b=fXPA29QczLZXy9E+4/NyhXRLCs+RP5yIOmhXcjHhRh9HYCYBpAPOBLACsAoAjaovGNA1stmmRXcIzgwv4fD0wTKxcMcE/HRj6LmPSv7cjM7sv3AoZ/12X+WvHTlyX13PeLnwprWOScvp0Alr7+T7MnAE5CjKJXCETUt/+AyWTGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785119434; c=relaxed/simple;
	bh=ZOzNvdpxlxQNqiow0KteUUwSU091NODJQgJcdP2qYkg=;
	h=To:Subject:From:Message-Id:Date; b=RXuLkPqjKtkko/LHKPcTC41bQKdpGu7PhXjJcMtF1CfgN3e2eKGPvGr3ccAftOp6RMZmW7Fbx7QPfhHgzaFAj5yDU0R2GFSNK/Le1AGYaiQBSQ0sdSyxa9WG1dFUGZI4+233uwJUdhCcRUHkpZjxiVLnTTAOcqp95yilRe1EOWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hn+WRvu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hn+WRvu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DE4C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785119433;
	bh=ZOzNvdpxlxQNqiow0KteUUwSU091NODJQgJcdP2qYkg=;
	h=To:Subject:From:Date:From;
	b=hn+WRvu9a/ejNmPv3s4yBiSAPevRfhKmqvV/EzqmW4ze44uU8N0P56IMWwsFp0zop
	 v4Wp5RkxLWOl28kxXix5kGoIz0sOnKVIQxz30PEwFBv7O/LX0cGT0puO+/d6pQHOEf
	 LSBHQ5CbfIiCTSwRpvyUggeEaL/gTP8jeEmfG0GTPLmxyN4MEQ3TYLjc2G1Gr4Bobq
	 eLwferL9Lpf3HTweF7qz0kUpq8T5Y4xs5sxDzG3zg4OuKdvBgqU9rEDjbKBPArCKwA
	 yYTi7vpX92wdYGzrjYOHRhhOXiDjTdMiF7kAzC/a7uYKS7qbmT1tF/VqBa/pc7B3Dm
	 LV5fzzxHekdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99A4C531F9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511943368.3598.12281977225127855179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc9df20deeab3115a797f0eca072c85b2001af2cc0ed227f6300aa09eb20652
Date: Mon, 27 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785119433
