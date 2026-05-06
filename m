Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18307175A60
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778029054; cv=none; b=u3JFSvSrtHGmwzaUEvACt5+Mcu0ym3P6q3eWx+RNy+vyKoFAccz2UlKAjupPv1xiBgN1D3jz1vMxPBhfpPAD+F4VD+ScUAf1AR+iPu/M5mLCIEyg8LapREMebDBgVjfCJGoLHIWLAxAD8Ls5rOGs4t4lp0ywm2EcWg+jmjBg7I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778029054; c=relaxed/simple;
	bh=oaV/q5qrWa41xXAdKzEKdTuqUF8sB+b3L9FS5O2NIbs=;
	h=To:Subject:From:Message-Id:Date; b=PaLofez7QwMwFfNe9QusdozlNb2VZy4uuP3w5OjScUQT2NjPJWdb/Nd409kW41ggnFJ9iU7VdN15TlMIGB+snspN2X3AJ2FWdUOzR2Em+nSVG6B/xL8WY7KrMkIe0O/uYEg1AqNIIj9eUxVghLFiF4vmDXJdMtLlbsdwq1YWvYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOqsc2nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOqsc2nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCE7C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778029053;
	bh=oaV/q5qrWa41xXAdKzEKdTuqUF8sB+b3L9FS5O2NIbs=;
	h=To:Subject:From:Date:From;
	b=qOqsc2nr8SzoGfEdSAGa7IMFUsP2SFoRySy0RfikKEtXXxHN4+/d96WScMwgQtttz
	 iCKhkTVOkYYgHdVsvx+i+3jSdS/5x0SrVNE89QefPRUldt+IwU+5B3pXxlaG3FAdft
	 hhEQqHfyf2C23skcRoj7AsoI+9PTtZFKUtGBLFH3T0TnwGLQYlWNemgIAu0Ek/ajJI
	 WpFYqr00jTVkirOpsQyfbeOhw5wFGt4RbYKqfP72iIsm/1KmkOw1h1BWG2ZMobPXl5
	 BbFOtNLwrqIgv2c34vI1CcYqy4XD3whc9P3k/m2x6Xg2YwC6EkJb6jJ1LAqiYDgvrS
	 z0ftcUgwmmYfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BA9CD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802905369.11703.10398784036092046214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d2bacaa8cd7cf32bff15df6e50f2637e25859b281b3621dbab101c0b8fa268
Date: Wed, 06 May 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778029053
