Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AB83B9935
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791154234; cv=none; b=VRpDgO+qVxpl73ufPYR6X7vgSf3l4pBKCqJvI1OiluvHLCyunFmOXub+zBEGTNxCgyeCz5vH5deFALUi9j3zjYvh6BhSG3VoO8w33cAyy/Mq9pQWawp5Y4RwaJxiLzlAXrEtFKejeSB6huen7di6e4vz1mLml9+rICvw+zAqDtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791154234; c=relaxed/simple;
	bh=P2Vx+n4WeVzVGaTh34lBh0ivq0fp84aYsHeIpdx+8Gk=;
	h=To:Subject:From:Message-Id:Date; b=C1P8MRLslHuN7qtHmXDAQdO0pyfQpibZecKtGuvcLQ23AyUIR4lrX5BpU42A81l2nsVUrjU2LrGhgohkqd9ChX4suY9iWgoE+p/GSs4A8Vj1YqIPJC9bB3RQ9rlAXuUHva0VPhIzDWeGpQNLYxyDl3UicB0X7qv1Pqkkq8PbiE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPdekCj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPdekCj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA576C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791154233;
	bh=P2Vx+n4WeVzVGaTh34lBh0ivq0fp84aYsHeIpdx+8Gk=;
	h=To:Subject:From:Date:From;
	b=QPdekCj4eI0vPtEGoT1U6tOggv71crMDcDcgvH8RscGybklwkVe3G+S71CjTJATwp
	 2PzhG9QYruG5mYP4OelYqJB/v5hT1QYSpdoxxVfaOCm757w9S4y6X8aOQcQ8Efngzj
	 Ica7drmMISJdXDl1f2rMo+swC3d+nF/7rBm5VobyTfdHd953NLhydODCcz3r/7razG
	 UlJYScdXnlGYfYBb1MeXX9RzkGq5ntjH4/k2kJD3CryI9waoiQLCbdn1v1JRkX4hkr
	 ytWcUbTDAI154GQ5Af/0gBaDZuBeb6LVrZ3/PA+GVpkZ5xlk6qTH6akIKc2Afj/KCy
	 pKicaEajnRv9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B69CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115423368.12869.17817676580902228948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fed2c3b560fef6ca73168b985881afd546812c2139082a3f145829c6902c152
Date: Sun, 04 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791154233
