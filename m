Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306BD747F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746685194; cv=none; b=MvCigHpWbAppOy4PMo6FejcDchzxSXZ+BhJWtTgISmAImhtxtK1vOBgxwZzFzpM3iOWM0JXES/m7EUPLnwlEKWiDPvs9EeKzKoq//PXWN6gMLth1ZOF0Xt3YW4BwD7rYwIK537EYJQP22y+whtlpDpKp/Mc3beiUn1cfzcwZDZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746685194; c=relaxed/simple;
	bh=i83+pf2WqQDymrSjEjk6s+CA5AVUONFWFMNzdxO1uAc=;
	h=To:Subject:From:Message-Id:Date; b=Vf1sGkVuCWpqRpUiYwytv8ggKVxGdj2DfEs8zxqY9K4INdW/mqjLe2PAsmH+Jh23BUI5auDpsaoNkwhNWYzbxtzwEQ8SAbuSUSTJ5xDWMZ08jpCw4kRpKbUBv4nyWp5Fx/u6lEwh4zXu8qU9370FIwfrNGLSsUE9rrzYPRECVs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ky+M1YpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ky+M1YpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0933C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746685193;
	bh=i83+pf2WqQDymrSjEjk6s+CA5AVUONFWFMNzdxO1uAc=;
	h=To:Subject:From:Date:From;
	b=ky+M1YpVpT9i5wgcw8q/qLq8SP2g7/xDcW7b7RH1gDzP079xVxJMUgx7fpEhY6y85
	 umye8H/UK9tmAo+uhuBVn4em3GWD5hR9hoAMiTQNJj3I+urh+/4SgYxleZS+Saixaq
	 CKlaa/ZsbJbPkse/EimO9w4x0DFrFVd6Zz9q4hT6+x1J3Bqmgxxq7GOGjlN82JCu3y
	 MlORt7Dm+0wGfflM/9b03gaE7pnpBIg48h+MYBH/OuRwWbmQXAuoaBA0b1+9aVLXaN
	 JFGTtTp842vq8A3MNOnLXUpSGKTg84bLd1+mWppkRvryHbBpVuXHiiab5G2t8jSG4w
	 JKkXGmKNn3NBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E745C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668519357.20456.9665380765228497342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9263f9c97ccd53b1b64b256dfa3346f7bbfd124f3b32b499c9294e829872e71d
Date: Thu, 08 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746685193
