Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4487441C77
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719133343; cv=none; b=Svg1BIfng7wp2eW8pnPtZubH6Sn7ZLYLNWgZkOnloQXMCNgfBFgiXcPoLfuNiSOa2Jxg4kBRztkZg4by11/rxHSBMVsaKih/VHwKpBiuVmuVikqN4JPv3KEddOKv60C2UnOcgc1FGDr7BgyL3SlNGHwsvra0NAaqmq7ADy3NtAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719133343; c=relaxed/simple;
	bh=OJmJIz5Gs1/d4fVPIeMoQZa8hsCtrOqPwdP5UISLjLU=;
	h=To:Subject:From:Message-Id:Date; b=nqeo6Y88SXxSSE9NCFofxIR8mppIh46Xm9orYH+phANx5aSPy+V9xS5UIRAUSxf03L1HZJNIuSD67NokJ/htAp1UIGh4SwpZgvU52nEdk++IR3bf4iIE5fqLVCtg1LUnmeEDB69zx3xNLe6eIdDQarKfWTM9dgbBYPLqHDjv0Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtJm2tLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtJm2tLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F17C4AF07
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719133342;
	bh=OJmJIz5Gs1/d4fVPIeMoQZa8hsCtrOqPwdP5UISLjLU=;
	h=To:Subject:From:Date:From;
	b=AtJm2tLmD2UrqLuM/5xcaYLr0jSdlynGVykg1ABPN9VAu9knw72mvQR3b5wj283lX
	 /LpuW/zdov1vE5q4CS9X2tqHYgeZzgZ1nWFp1bzCmC5k7yNPSFrttkDoWG2wjjkKNN
	 1dpAs+hl1ZreQfA8yIXhdyBoTKzCmpPZ4vSWIvoyWI0FGu67xLGcc8/bLYp4ZR5leA
	 3SmKhHTG/HaUEyW5CBwRZdn/AkSrdqNdpibjA05q8Q/n24CEjAItU0sxuXG+7HGgyj
	 NHOWGMy4yKJl+TiP23vsuRUEMCgSQjiYuIkBaREQ1wTTjsXX1ukzq9EAked4sFh8EM
	 F9s4CuhMEZYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEA0C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913334276.20547.12153828730215814951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2310f56211d82c9430355999b56d84b6cf23c2c20c9ac448e38534300bfb2fc
Date: Sun, 23 Jun 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719133342
