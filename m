Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0BF254865
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746817794; cv=none; b=fEsc7YSaW8+/VZ8ecEely9y4t7YdMlZyxthaOBXTBJdVMZY2yLOA4nHS8OSUj4HJGrzpJ3+uxv+BZMlbBGL+7ph+6up+HErdy8PQUFXbHWhT1DKbxoucYEQiHNSBUsWOBC71fonY+3d9FgKnj9JSru5JC3B5b/CFO08/EFv+k8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746817794; c=relaxed/simple;
	bh=pBQ9ZRogBYQNbJNpiEG6TZ42x2EisYoifjlOFGj+Pkk=;
	h=To:Subject:From:Message-Id:Date; b=qglFuqrOCRhKQGBoEzvHVYXjxhZRBiqMi44Vt3HN+7CdEo+87Xg5XgX/6aq8N89bbmASgeFWdW1OORz0xXzU6w3XwHRoseQStBvmlcEn0U+ssC4CU5Gp9ty5SCryx+JfoP+qjF0SGmBH/ufSdaoV7y0WpxUbgml4/zzEB2zsyIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEmH5e2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEmH5e2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746817793;
	bh=pBQ9ZRogBYQNbJNpiEG6TZ42x2EisYoifjlOFGj+Pkk=;
	h=To:Subject:From:Date:From;
	b=OEmH5e2VZn+WM+oXrdRlxxUKSFPy21sOhy6hNhC6tfqliPm+Lf1MxCXx9LVtrqkTx
	 bMRbWNdnudI1EJWoqMmf9g+GdGJjKSgnRnMlo3QtPLRSCdKVXzo287+xgxNLGYDs9R
	 8Qou0ETzMwBgB75xSIrVPnLq0JAPo4gPKVLoKWujbMagbNEeB6hqyGlzjdLn56dUsa
	 LEW0ISooiAGLvkYED5jjfwheFkYAmFYufo/nngurCDNEU4yXMhVwuemt52IKQn373X
	 iO+tPS8l0MY4slYRUMZNCsW/OhmASLAwWGg3xMF5LbdnxyBsGwqXUg+U7Fc3Kc0bRD
	 BWe79Aw4E9OZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A84C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681779357.20257.1699969318330490893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4097f0792241dede24483f0e8699ce05444b6b80fed2351b2b0d9b5ff181bead
Date: Fri, 09 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746817793
