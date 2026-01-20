Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCB73A89B2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768940034; cv=none; b=twOLBKLrv0k/LeYG4RWrxciD1/gzC5gNqUg7b386BgB7gQadVacZ/nK7GKxf3il+nyhm0uN3eEUvuacoFi2QWps9+dSX3HkdOEaag6Sq7rn+o/cS6ec4u3MLsW+Mtx5SJdcXxBe9QnmAZxR3tjizqdREnAZ+M/X8ASeTHd536jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768940034; c=relaxed/simple;
	bh=+FD2Gk2JWmz8mco0lzekmg8PAV5bP3ixiwzaf02clXM=;
	h=To:Subject:From:Message-Id:Date; b=pkmf7Uuu3anvE4wFGHBtwxF40wTYUb4JoM1ht4RwWeElGf208zc6xAQgDe+TPJ2EMXh0iuX/2V6JcCtcVx0wTgMkSTF2zfMUt6BvP6Kjt0FogJ7bBsnxyN8Ds4f/LDL8dwP0OrepeuyR00NG0jYlueJRdB7LdgcskJy6CXLKSi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wtt7MBOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wtt7MBOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0536C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768940033;
	bh=+FD2Gk2JWmz8mco0lzekmg8PAV5bP3ixiwzaf02clXM=;
	h=To:Subject:From:Date:From;
	b=Wtt7MBOfKPS473w1HZCwaM0F5+DBynJUAolOHbsE38RgUpjof6AKGWmrwiKl2Ac55
	 kqy6GIeyVZ+ac8n62bwUkLRuWcXe0CfqtMzI3hi2NeN9WUFE+Qy1C8tUXdCO1MlCSE
	 uz1hiUaM3a/WtGFzSvgn2UNSTala6jiZvUMLYZDvuMd9+bjrKjoh/ON8TTzRDyYCTy
	 23D7XQWCDD2OyLSKi/w/rHUAUs0M7T8N6IyjEBdBmjAE2GViJL71GXEgAs3QdNWXu2
	 6+t+j5VSF1s1OBL7EPRDakTCScHOefUSUQU4TDRZvvQP0ZQTiw9R8cwEAzyczTu7+k
	 WKzOi16JlJTNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A3D2629E
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894003358.32334.10628724340980191970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d20d1bf00f5d758ac9f9fe284b2f67e054b48dc2b373e160c39f2f787101f79
Date: Tue, 20 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768940033
