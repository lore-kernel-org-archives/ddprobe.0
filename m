Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D7822CBD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754343594; cv=none; b=JsmnQgLvnnTMpzBqSdmd/xlHWhu0A9r/zas5qV4SxBFOJrK6pva1BlF6yUnl8KeoypOyPQIrmzbMx9g1YWO3xdkqQB0JTjWqZ03nmBSMdtToNraLBq4KdhOHXY1NtXtyjRcFXPj4rIquUQJb3dl3CasMWQkjufAOme+kMWLn/Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754343594; c=relaxed/simple;
	bh=r0I12kunDPy44d540VQozZwZ+iRQQOMteUMPIZ9K3/8=;
	h=To:Subject:From:Message-Id:Date; b=NovTnJffWVJNUK7hJpUf+Kw9ygS+T2EQleAwEdG6v8LFD+n24GuSpxFvPFHe2XQtsaPRK0IpoI/OR/PRIEkcGbfHhgCZtH+vuqi88ZtrTSVSqsgMknqOEILnnKAfCHz+ybwcG7r/0bG1zoaRmOih2S6X2DB1m+xovsKQ+MXHv10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5aCKWuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5aCKWuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5F7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754343593;
	bh=r0I12kunDPy44d540VQozZwZ+iRQQOMteUMPIZ9K3/8=;
	h=To:Subject:From:Date:From;
	b=F5aCKWuzW8dz+o0jjQhnjHstlc2ThpyCO+rCVqmB1IM8Ci+kcQvCb0/g/5SIarfpB
	 5cVtIuRSf9qffanQRvIuFnYmuPLb7C4tnNDiWFMzCo4Yk61m/bLPobuMD0QClEk1+2
	 5Gb+wWtUH0FJKqKD9+22/JFGmZFkmcOOfWg6GlvAg0qA6fSBp46rLzTRk18kHW64qC
	 DkcGPWmMqyVwgRVzhiFp+uDZ9caoCAzOwLVUvQvCWpNeyCeCFlX2D1upmsxQrsCBgy
	 gND5Pbhsks9RK05zBr0sDXkcONhpn/0aQl3kpMlqrBmn4DuRXo495DnZI3jqIFwzYn
	 l0UfiLRqdk0gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C07AC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434359362.28844.2346059720121716284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3e12ac1e1762c605baa132b8447d563e7933bb41705532faf04b7a16f4674b
Date: Mon, 04 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754343593
