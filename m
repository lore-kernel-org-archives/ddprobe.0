Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD2D32F743
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756794594; cv=none; b=CPLuIEDmLdSlWfur6VvzDkrEv3oxe6aY4G5e0pWXKfxxlswnxrdnQif5PAkcIZIEPBRWuUjSu2zC5NtoveowA6WUXKWw48/Ldi9T4KPjVkZV0YbV5Aie6zqaMiT+O0TT1wv9cJN5Qkw1hmr+9wJI6eJhtO9qSnnLn6BXrwMMLfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756794594; c=relaxed/simple;
	bh=9WTUloOnSfh+ihxg5JeMjinVVJNlOnH3QCHEOcGX9wo=;
	h=To:Subject:From:Message-Id:Date; b=WbV4Rt9IhKjQZ+qC94qkCW45YzYokgjAMchpTxkSieFcWBTu7jyGGpvvBvEGLGlAijzFcZN6iWrZ3+H3F7D+6EZmcoAq2ZTF4QUrEYj68zvExnOGzJdhuJDKROaJt3MbeZoeVe+SvClY4MpJtsbf+wGBngy/LyfXcm1n9G2JXFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vd1ufl52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vd1ufl52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7894C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756794593;
	bh=9WTUloOnSfh+ihxg5JeMjinVVJNlOnH3QCHEOcGX9wo=;
	h=To:Subject:From:Date:From;
	b=Vd1ufl52vLHEZtVD5cv5tOJDM6zJY1S/qleTuLexFMRdqt1t/lIm8X5iZO7X/DgMh
	 5oy/SxMPy9kVXlOiQztpp3e0T4tpWqjDgRJmNQfgABzRdYHL5SC7Ifzisei6p5+9iY
	 kkoAIXLjMGL4Vtq+WTEeFZzyVbJZEJ2YICeMBpYTRfONoME8s0Wvmtj2HLSyTZGTxI
	 spA3M7MKsmNixwUs8sz+a/OAKZEZWOfbfD9TyW9uM6F09dTWsREvD1STwbd/I+eW1T
	 06+l0aQpcEI9BIiA9RiRq62P7RPfskBCedKI3zQdyDULmdh/4Oym004epYAXUhhn4r
	 GNu0MLWCq7kPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF5CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679459357.7307.16040197142839158707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507767d655c2d372e88c2fa53cf0a79906362be0a56edf36865cff347ca386d1
Date: Tue, 02 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756794593
