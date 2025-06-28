Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A8541C63
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751152195; cv=none; b=ct+9NdnPA56DvDlPc0kGL8SMj22kQp8mfxFOOepnkCOxH+XtNXTLDO1LHJd4zh2ZASd7NxIfNu4fsiU9FpL7DluOCyoyRZ5IqAdtVB+Jhq6s/APJg2R7blRtIbqHVBnIeMlDG1UQ79l3BRCwtUppxYPXbquWucimQWYnJPEvGro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751152195; c=relaxed/simple;
	bh=433e35/EzEn+hMKLjpEi5/fkU1mKmibYvD7Nlf7drGc=;
	h=To:Subject:From:Message-Id:Date; b=ZWMg0CYBPjvaZWU/NIIGlw/CbuqslLgjpV48LNXC4EiaD9RHIY8Fvya2aQmT9/NSBT8HIzay/wl57JXdvNj/ns2l3U7bl9sTh4Ti1qzm1lE+8MLWbJeIM6jYMFdp5Wp2rL+UldE8+ZeErNX5VN+rlqxUyrLW+nIVQnJ2cNQVz+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIRTj0qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIRTj0qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37BAC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751152193;
	bh=433e35/EzEn+hMKLjpEi5/fkU1mKmibYvD7Nlf7drGc=;
	h=To:Subject:From:Date:From;
	b=RIRTj0qT9OuUtaq9u7ekkNRYsV007eXH1k9JyvzFgsEU/EFZ/wjGV9GRLy7MjZd/S
	 rRqt2hDnyTzIWwPKzp5CHA9v3kIyhOUsJyi3CKmrr13t4cb15G375560OjSn/EXFxB
	 tpnx0TUSNHHv6ECIfkgB1iB02X07RveHP2Jy7kqtKj4CqMpgjFGbgf35skAKzXzuIR
	 uqO8sWX5cPydxsOAOz3kb0oKdrQklpXHE6K4JaCCtVKxoWVzzqvgnKj8q+6h2mK5RZ
	 ItpwAfsBEVuFFefKc7IPvOZKUsRbVBdD8wrvHB81PdXYNHeDeVYSeTcUTkvevdK0P4
	 Izd4ljZfEOmOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91864C83013
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115219357.32676.8821471661252153360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e36f7c42f4192a0fb2f9bf4f46fc94d1db7e4c69eaf9602e5d57cdb34cd37c
Date: Sat, 28 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751152193
