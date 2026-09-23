Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEA13B2D0A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790158835; cv=none; b=ObemG7BVLNOs39YpH3dj+BxpBD3W3ZOB1X8f+zA7jqh7zWQFRXgAaNBGFD3xwyUskbXzewaNjZLaBsci1Uw/ETrme568kCQfw3pfCNitMra0Pedi6K24tu9E8PcSOsxuuLZFO6tEgonORV+4p3QaBB3jaahadWx2Lq6SyAhAez8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790158835; c=relaxed/simple;
	bh=4Ymc298mZzV62Zv+gWXZa9ntTBNAT9rmY87ykOtcTLg=;
	h=To:Subject:From:Message-Id:Date; b=lebJEWFde1QqH7z7WMRXl1yPZm0WLtF0n403AnpQTh6X2PBTeLBe9qKAjXVRU17Ui6JVhWRsYMtrCAftC+GhuvIBcJrGv2EMlz49JoAZJnUEB5dDAGfI72GN+T20EccC0ehVUiMNjg9dKa3M5NlV0G2c6ZcMEHzLExdyV/RlITc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqX3dY4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqX3dY4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F61C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790158833;
	bh=4Ymc298mZzV62Zv+gWXZa9ntTBNAT9rmY87ykOtcTLg=;
	h=To:Subject:From:Date:From;
	b=FqX3dY4Jsom71cVg2tloR96VB0KB4KAkysWIgWFJSyLVeguxMY/qGPLsfwHYtbV2y
	 7G0munaR5TWpu/AL7Nkuj+tbwnhN1UxAyZAMTi20VAVYH3cnsazTZEstU53QSBOUP8
	 opUfwRd72IVQ/npyhozzClg0fhnqIJvoMU/VK4x2ngQ0VmqUlyKWu0tarPQd68WLtA
	 tngQB6w58KvgyZJZQfhPEW7ZDjNgv8UOoJtMZL1ckP7p80VW2+js3jcnp9ugf2fclJ
	 jQScIMXYjjaUuU/9qn5sBgRllEiIe/d7h1rF+Fi61KFCE455iLYDe8IKCH5JwHOkDp
	 S/KR0jYghGJoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ABBC982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015883369.9752.1709800553820222164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292a545d357c840c2ce2e2c4b3dc6ea122612c15b9b6bfff843144b3604b0468
Date: Wed, 23 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790158833
