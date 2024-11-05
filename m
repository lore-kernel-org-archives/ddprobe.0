Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E386EAD2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730818554; cv=none; b=LFAjPAayp/rH7KpMhM3yfopD61zHCxxNBGvx9EBArv5H8JFcptvdzZPre024T/oTNrGzp79gTwhbKMII7VREr9YaxRwPdPCH0mzMA+zfvzc2PtVs0YjVv5o1q2+zr5+TAa3fxbOhOw/Scq9T3p7JnotH5ejINHDcH6Orn5WrX7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730818554; c=relaxed/simple;
	bh=Au2HQ7DMUCpxCkYpfb1JS0VIUUkSW/lnbeTvbyQfDlg=;
	h=To:Subject:From:Message-Id:Date; b=RBHqJ5rZtdtrebI1lPONd1PoYJPUlPcrdGLCdJ941xvA44A5eN3xdtvnhv94Wrs2Kj8pbA/ESYFyk2CLTKLS52R/aG89GM7uVjR4xqsyWS04bgjKYx0awkB6Rb2kQBSEPxkWNwsd6rPquXyLqbQZFATImTYVoijYMMCXAwO/EBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPPu71AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPPu71AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77FFC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730818553;
	bh=Au2HQ7DMUCpxCkYpfb1JS0VIUUkSW/lnbeTvbyQfDlg=;
	h=To:Subject:From:Date:From;
	b=UPPu71AJwo6K0y2rOBgwD2a2tmmAJYhTebB01TjFeJJ6SR3HXA5lRKQvM0RzGVZe9
	 tudIBDfFsX6vNFcVGRFUZl+gMUlnjDjvEtxlq9sFHyGAlIUKeqGiPfikDgOm3xmvfQ
	 K9ru4Mb0IZpxaf15XkshtvSfWiP4J3Fz9aX+Deurh4dIR4FCUXszNV/zBRJTrxulDE
	 1bEqZgt9MsXUj7A/Wu5m4uuX097OvEpAzpVNNV14h40U8/LFVpwEFAITbnc0lJJy2F
	 RK8OQ3TOMn7CeH1ZX7hr/KhUBhbslLePNIcSoxGTIeKMzl2VuEPMXNC2Iqw4H3W1f1
	 lk8MaWW8O93kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A659ED2C114
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173081855367.17835.7827289300685832876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bf2cf1dda9863f46eea69632fc360f59b7daabede10a541040781e2f804e7f
Date: Tue, 05 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730818553
