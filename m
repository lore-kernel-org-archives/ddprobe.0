Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A48328EC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747189194; cv=none; b=kcQx3jU0bmukSv5qwvJUuMAx2I8xg8wCu0LIILfGX8eDUnofwNlLW7TS5FrKJFOGYYWF0dxt5DVRqFzFOLWFS40++2ZnY9cuuc0Kq9d+FsWXXLUYs13TQN2KlOqk702ibPDaOmVqF/xeiOtJ0SqSoY/pbqvLEfAnWoCGRMeytEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747189194; c=relaxed/simple;
	bh=5LFEE7qvFEAXt8W87my8fgA1VBH+lbrRyyxtpMxv35s=;
	h=To:Subject:From:Message-Id:Date; b=NiPxiajDc39xb+7UGJ+Iq9NRJkWMHxHDOasGjsHVGLsJpxKP2CARnJbXyrbvGv6UbCkVg0uu74fgVKt5Vbz92elzj5LvS5N5mWiMVh47l5RGUJeBw/cfOADoBLffBjVXicueR4HreeNxMsxk9wyEqiImYwqe0OPzT8NVVbYEeF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbzZ8wTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbzZ8wTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EA6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747189193;
	bh=5LFEE7qvFEAXt8W87my8fgA1VBH+lbrRyyxtpMxv35s=;
	h=To:Subject:From:Date:From;
	b=LbzZ8wTjPKhkilX/moWf14Jdfhou7PcerGkiTAx/ksFOZWgI26w+TfZfRrXTPsHqp
	 tQxle+SJHr7NxvrvNGGJAktucuK1RpSSvMUooV0hUwMcKqx7E3iOtsF0MyS6uqO8jc
	 7k0/j/rhyX1JsalQxivobvkqsPG3Nyw7zWWiq75Wbdk/5kLcugNqbknWNdkzDymI1D
	 c1vnQwLRmHP/tsW60eGcs8R+0n0y/myjRbI9gBeOGtOsR4QAezafNjXinv8TyERTam
	 mnV4pvKUVDCrpd99xQ9oPQ24TueltJEpJ+bhYyyYyyPNjoRz6B1F3c+SGKEKGbVPf1
	 MkQctNmSqJ2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E8C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718919358.1352.16924124992028570149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074487253d8c0988680dbe4eca1d50eb8b55074229c4470e64c4952f6a2a10b2
Date: Wed, 14 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747189193
