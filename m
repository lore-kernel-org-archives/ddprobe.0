Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353541BA272
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731362154; cv=none; b=LlHW474X+qMv4kh1kCXBi76qvNux5Q0+XP4RBrDM9GJ3YB4e30pHMocaxDiQPaNB48aMLHfGkAyRPCuaIYET8Vy5BdZGkinhN/oBUqho7F6JVm9iBVe0h649MdyCpQsYFeCAOEEkULcrVOz5t8gvHk3Gsi2E5DPvpwim07jNkoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731362154; c=relaxed/simple;
	bh=87pUz/Qeeo0Et9yyL3mKos+oKR7tS8mz7KUGJyX2V34=;
	h=To:Subject:From:Message-Id:Date; b=bx68ShS+QNX1QqrNy3/4D7hQmS5GESYeyWscCQernLQ1uDWfz9bJ+9AA/bKy45J5SQY9enL3usyYRm1kI9J40nT7/sWPPddm+iB3gW2opma/SIQ/i+9w6SKtjaFkxpvIt7chU6bVXHRUjVi12mHZ/a5Z1A73LBTH8ZXDbx1+z4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmrZ01Jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmrZ01Jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7DEC4CED5
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731362153;
	bh=87pUz/Qeeo0Et9yyL3mKos+oKR7tS8mz7KUGJyX2V34=;
	h=To:Subject:From:Date:From;
	b=qmrZ01JolTyKqmP1EB/vZ9j6VeaxTtlRAtUM5J8ZrJKTKG1AhH+fta+FUS3Z1sXRe
	 oI7W6k3LbthpTrnKTyod+L12w24KZ2qCnOzsKyU4wOMSPurapq735BWLK4D9d05z2R
	 LrzCil19k8+mHEDuHcVTddRaZxQqACgn+zIa1Vr53s7SW1tJ1NRdUwbCwj3EnUFmpF
	 +rA2B9yMor5o4yKaTqDaAFWZdRmbReJZIOzO0maNve8xaOSzX7QPm99Nqdvy+Px1J3
	 W7R8V8oQdvymAdf9PKcPC92+Oqds7v6TSKDvRrPM+KlciWVQatEIhDZ8eNZwCdlPVj
	 +yPiF+U1UQb8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDD4D3ABFA
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173136215360.23328.17550981085720602717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf83ceb4187c57fc23294d41de3312aa07d713c41b68ed6aae5b9e6ecab2965
Date: Mon, 11 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731362153
