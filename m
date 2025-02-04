Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6293E5CDF1
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738642554; cv=none; b=HI5b1NKUoebNiSck7QqJ/Rh6yadYHkIngVjvetOjTTseaIk0uBXVUeTWVuC3/D7/CstwN9kUOY9FxZbk4rhpk2lkwi2t3sOA1X1xHw4e8vUBKxca+Lt2hBrtqr3mxcP0sOWB7xJm5jXZDpXS/pwgo8zMA+I77mwYv+P4xNlZK9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738642554; c=relaxed/simple;
	bh=INxO+SsOqSc9I7MAsT2hoWSYIfOuLdLH+RQPBTVN11I=;
	h=To:Subject:From:Message-Id:Date; b=DMtD6GaZhmvYS33HiqC5kcEosYXVSGN080/spvPF7biQuWnqePzStKqCVYADUV9Dq4Fr0ZfZTBOD2xVedwxc1f9cef3mPf5Pe8si8Glt3IcB6jwLVkpjSn4BMEop7iR73jp8d592RUGVKhWOsvlK3itptSwTrjETx2O4rcJ+bi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4pNzaNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4pNzaNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3777C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738642553;
	bh=INxO+SsOqSc9I7MAsT2hoWSYIfOuLdLH+RQPBTVN11I=;
	h=To:Subject:From:Date:From;
	b=O4pNzaNVqYHwG258xyHL6o2EfYXO8H8mbnWBhclgX/izh/G82qQ98aNy5BvvG1JdB
	 wB8/EGOJZQGOKlmZATMUx/4bHvKs/E5eEmIccFV+wLl8Bh27VL2+cTKBh1XwsC1Cu2
	 7qAF2/dDMIzJOD005mR7ks5UbuAtiba8bD0nGeS4FZQMuDVnIbDxGVgqnErDp1VQBS
	 cJXeY1XygCOPCDCkFZh/785iqn0/ug8baCVh/9rmHsiWFjQhMrEv7UlosGCwefQpnP
	 F8xaqSCH8SkMtrIKIuuW09Ao5URaHQ/a5UwfJuRfpX8iTwkaUx/XOMFQvl+Z7zD3Wf
	 Ox7Ur9OH/++Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A041AC0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173864255364.18033.9345271757379916272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61243ffc942acff63c43a3a6efbee4ab980a45bd7d49ca9fac283a1e9bdf3890
Date: Tue, 04 Feb 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738642553
