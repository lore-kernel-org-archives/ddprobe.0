Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EC9450903
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774992294; cv=none; b=sAudYhMX27imbv9tpxvirFv9zHC9ylo31R8XIejaNkdmUilTneLchW7gSFAWk/1rMB/Li+gCc7uzTH6JUXiWARVriW7ZZISjxOipk/Rgi5WBAAdUGM6GAI7a2QYfPCQ8sipUWazMX3tCRXQK3NztAjdtXE/LbBiCrINSerbkRsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774992294; c=relaxed/simple;
	bh=31PALdGwgxY4g4P71u4dO5880RcY+TsGjXdaLGZcPGI=;
	h=To:Subject:From:Message-Id:Date; b=LgKald89EpkO3akNoA8LtmjLNDZQ/0q/kII9MX1A/GpLvL0EikJai6DjKXVcKvMoT16bKh/5MWB5yo+KrqHb/G3aAEbAdfE1nXI+o46fP0TVMp2nt2tbixtJwdUodTaoyAn4AobYxHEiKsNsFRU6EGphk35iejTG7XqAvfXkwhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vfi/8pjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfi/8pjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F82C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774992293;
	bh=31PALdGwgxY4g4P71u4dO5880RcY+TsGjXdaLGZcPGI=;
	h=To:Subject:From:Date:From;
	b=Vfi/8pjx9RG0mSeB4E4Kaie6vVEfgAg3lYHwYYKHtyPAC8ofJzQr+isjNe8TPcCbZ
	 OX8/rfw9iYKFtbU19VtVQcmBXUJfYQTvj8zW3wXXG3+s5RjEHTTzTVUFXxq2aDir8y
	 pY90PK4xl8qW/DNRGIM3mNz1oJr8hl+s7Wls3UgNKDyW/KVfs3z5j3gP9XYJjvEAfd
	 NEZo5+HcnrIlKP+Pi/fMNv/gGTMyDAYLsjXj4in933YqufjVM62qvgnC6nsf1RIur5
	 xcS8SFnX4q1QrCFjNjSW1Uw+gAMvQev1cIUswrkH5lG2tZSF+HFFYCUIkdTWbTf+jA
	 FLtfXofrXkw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154F10F9302
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499229358.28790.13899998642237695188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a71532c9d69e4b670d52f7db7f0198d1872e08790a8746aa59bc3b596d3833
Date: Tue, 31 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774992293
