Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBFD19D89E
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779585154; cv=none; b=JPU/gjxGj1mWEAMfCImIIY3dEOMV0LiWVBo09OLdYwL4V8lw3MegiG72XPNIs6OXKsiUuBxZMyYKYk6ZmXfJ4IGQvJW4GvPz2Iy5gMWRr2EIYJsS2B8en6PH/mWaA78FaoQvQvI+Lzgdjhr/NeGToL5X+cWjy+jneed5IFWti4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779585154; c=relaxed/simple;
	bh=f8RPAjU1B9zw5fHHSPozlCVNXqjzVcZWRo7H9HKUkuc=;
	h=To:Subject:From:Message-Id:Date; b=osfNhMjiwI0L3vgefTCkt6lCXKUxUJ5DvAl8G756D9YVQTVouMTFr+Mc/ymwb0i+FKqiDP4B34sF5FL3d4INSSitowT+5Kyaiyvsf9vFddLGQwJcEdaFY1b6xzpGEnMgrJl3A66z7+YuEUu9yEu+Eajc6/4bq6qHIBnr8unFS6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+6uSjP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+6uSjP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4464C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779585153;
	bh=f8RPAjU1B9zw5fHHSPozlCVNXqjzVcZWRo7H9HKUkuc=;
	h=To:Subject:From:Date:From;
	b=N+6uSjP+gncyeB6O7HVFImiz89ZGe1qDOEzvdLmmAwYAEk2fWTvT1RWIYvUMjpjRD
	 uso2GYfitVPWjk6YmnA+9VvD2hy7HbWLsOeIRpjikgOWpBbzV54esUur2Sn6R+oeRr
	 bz+u5Sb89kWdErFuWbRn9Qk1J9Ojnh/PnAwKBQWUiI9s+R+XKc5SlQMT2FQi3btQbR
	 5cSQSHWtS4oagj7kvYy7M7Av9K/JSuezE5pJ38y1Qt6t6o0651X4jTmZSe6oXanq6a
	 ZgxvDqJPuUxTNwA1GdGd5CP4Iqnf5XrAm8n2moNsvof0+bD8/U3eiueKA1p1Kgob+R
	 H/j8L5wUU89mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DDACD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958515368.1312.2846194308580127034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d2494c6e731e24d657629ff07e6076d5d45c590bfab6c4837e888a829720a5
Date: Sun, 24 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779585153
