Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3810033EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753027794; cv=none; b=hNO5eofYLF1GllxbMiTgDQKCn3A8+TQKCkRn2cuaJJ2dN4lewCXeo1If1usMa+c+opENpPq5TrGBbUsbtxsqXuHpd47H2D5jsg/znCY69ZETw67qhlYLINC1Rh1R8/eGhNZOXxHZB2SpInobvi/pfdlUSlcStyyrnzyHlodeu0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753027794; c=relaxed/simple;
	bh=afCRWFHIxKBIgou0APpiFku034C2tdvPCn6lXTdOlcY=;
	h=To:Subject:From:Message-Id:Date; b=GGYoU4CfqzZNY4TS6zmLWRZ72Zk/JxIor1FnaMoXjYGC/u+9DOI+H5IM9EG6k9ro9ZFFWDunx6LfdO/5DhMevw6JexEkbfKnFW/72v0O7CrYPdqndkHaBjXJtNI+VOmuA3Qc7aYIsUinOb4ejFVYjIxtL+veMTFD9vMIv/Ytd6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeC71OMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeC71OMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7394C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753027793;
	bh=afCRWFHIxKBIgou0APpiFku034C2tdvPCn6lXTdOlcY=;
	h=To:Subject:From:Date:From;
	b=DeC71OMIqeLZbRZn2L+HBXGHkFt9dhQ0N2wcT9zB5FqHF0zPM6X07lw4z2cl038FM
	 963p23WYUPvMUSwnmPaCKHusu9qVug38b/opZ2f9Pk8mZsIthMzZlUgwqkCBHWvrGN
	 EED+fndnZRcKzIYcwVt1rjKCvsaxP90SRRn3/k4r6DpPfGzGGAm5B0VW+AJhhwQCsS
	 RlCYzByAEL3HzlpkcV0trSpt7heK5n35KKKMY37Gbcc9u7dqrLxsfgQ/PiMNKgLypL
	 DxW0QCGXO6O9IB/ZzDV1DwT8FsHDB4nENRiHlR+1qy3uM6ClhppAlrm4uUPeBAC7jY
	 Yvjj7kaEqmU6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6AC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302779357.12187.15813887278750416208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76321738f208435c49a92c4fb2439daa6264f1f77b02a195adbb045c933bbeda
Date: Sun, 20 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753027793
