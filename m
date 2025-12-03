Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6EF2EC0BF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764802974; cv=none; b=uiOt0KwxvSPUtw3taX5nz3lkHMjhgiLJIOA+FIZtHgjRxNXbH9rRCm7isqeE00q7FCEmeOjOj2MEeHl+lsssewrANxIG54sbjrnGLvqRN9rYyOB0ybubaHGIbhJCAbX4OsLaiDhKw7wFIInzDtFHAQDLNZSyfP9aphGGhm/ChOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764802974; c=relaxed/simple;
	bh=e3lC9z395PShXsA9HSVlti2WM7kPwS91oBCl3P/YHC0=;
	h=To:Subject:From:Message-Id:Date; b=h/IPvH03dTgx/tQIdpPD2vXK4vBgHmOto53AbJ+e0qJPg3LtJ5D9qh8Pfu78E7PgnzhQB1Vi9wcUv0OsgZ3K7807MpRq4QTpD1H3TJwN2eZeeDlOyJJ0bdeG65jESYKILQIUV4Xn1VMfluYfkKVlakuZzEt1QYybMoR9NlRAuR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEqj+v5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEqj+v5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FFC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764802973;
	bh=e3lC9z395PShXsA9HSVlti2WM7kPwS91oBCl3P/YHC0=;
	h=To:Subject:From:Date:From;
	b=uEqj+v5rouE7BrAO/6EHvGSDjBYxepbL2H8t2E+vzSstOsivHofHpTl9L2P++sQNX
	 39XUn+o1ZYkiR3Il3USfyqOctKJxb0wDPYUfXiuC2OA7OB0N1yO94zy578I4mwgzYd
	 daDjLFdaNZBqocxqledb0ApCzOE4D/ebiQ4up/lbLEm/8Dg+aIU3cUS5ia7dKgUtAd
	 Uz2RdSA5/bgqq715qT1vv//4WsHOV4w5KPormU0F0Xs3/Lt43oDf+gtpImSEXLFtH+
	 nZKVkfx/gm1WOA28A1YIz+5rs9Vj+/mVl/7V9RTAJvflcrNgRmeDiQe1TaWnIZ+1hX
	 uobJeIke/+JJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9363CD1CDA8
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480297359.801.15145450623921439964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec00115c40f2c0476613b7f2b4ad71cf49afc0f5576be4b4be64e6238d976719
Date: Wed, 03 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764802973
