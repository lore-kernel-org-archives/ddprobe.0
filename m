Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59104249E5
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717319123; cv=none; b=dwiA6YDNYTs/4Uw9UW/3ToWii2Av7vC29BZTNNhm1Y6GMwqNwS8ouDxDNb4v5Bmho67iA1IvREOBHqPlZvg1KCF8N6VIpcj8oN+hIS3RywLM+1Fbvc64b/sMEWc07u14IsQRhB8Cvcm40tzMAcb7G6W3ukIrDcyinTcFzgXwLTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717319123; c=relaxed/simple;
	bh=6grDfv//zyNdJeJDZOp1c7nOArZPB+Jak5wmPUWTOGU=;
	h=To:Subject:From:Message-Id:Date; b=f2h4dI+mMpcDZXGzP1j6K8KVXk9QWJIDIEFTR+2zHo+9rGLi0V3yTVDB7Eh+jmstRTmG3y9wCVGVqGPCclGOVee2mA5RwYWgYFotORI/EWN5ChwqB8i4SPKipvXAyDUvOVFkRmW4d37ucHJgglwxOELYzZ1mdpswYVZwmDqMXmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEbt47/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEbt47/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02CFC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717319122;
	bh=6grDfv//zyNdJeJDZOp1c7nOArZPB+Jak5wmPUWTOGU=;
	h=To:Subject:From:Date:From;
	b=aEbt47/+xigvFAPaH91ClZOWHt3tJG5a2l+OgPYld2ic4udnV/nDdnxiacXkj73Rs
	 Tm9uSChAfbWkPm97KD/cFNxZCJElEU/cpyatAvBpN3o5angAjpc9jwDBErTy6FrXTn
	 IlwlWWQ/tXgdHxKvThD6lrcRSfv2f3v43PuvMymBo58H3RfIdKtMo9ijfQjYBuNJyx
	 RG5Wu530kuz+FicjXjmyxX5LkTLDVBFMA/kU6zCXHSkAGo+ZmmTO9EacPgT7n5VXBI
	 BiGDPx9Fl141dooV9VRPJ1ZjwL2eg2q1FRiIsgx4V22prWYh0yUd7yhJfco9iQaqP0
	 Gm8/nBsI4gl0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDEB6C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731912280.27600.13897355975841081343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbfb5fa4c723a5c164910da425de1dccd90f801a1bfab92d0fbfd2ec612db86
Date: Sun, 02 Jun 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717319122
