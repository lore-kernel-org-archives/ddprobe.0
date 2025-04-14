Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBC11F236B
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744615794; cv=none; b=M5+gjoughEwI6xyp9niO5yspHeLPykVlTPwnC0fTr3fsSXrFYHinayjbkLp4My/SxtEOrltKSGz3dd1tVBFW2okKWXvYPiPJxpzzsSs/q3I7soXeXc0jLV6pxnYRoodKlzn/g807AmwaHz5dAsLBOtcacVY/hnlRAk5nhLaYujk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744615794; c=relaxed/simple;
	bh=sOPLmHMsRPbmhgQyqsFyroYcDE9oCYCkkkLYJK+TzuU=;
	h=To:Subject:From:Message-Id:Date; b=drhDiynJRQICbD12GFWy07L3Q/jzsufZurticlG0p+0k3D3Db4T/ldKgoXGM4J74VVX6yrEsuwVwc8CYYIY1GYmXkGl6JyWjgNhtEthZYyXB9AxgriNdhXtx76uWtXzoLoMIYaVXD3JDxoP9nPPBCBC4nabfYcevG9drKgj6Es0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJRUPoVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJRUPoVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6ADC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744615793;
	bh=sOPLmHMsRPbmhgQyqsFyroYcDE9oCYCkkkLYJK+TzuU=;
	h=To:Subject:From:Date:From;
	b=oJRUPoVmxoMbJL+CzXUMS+hZBxtxiOSe9dLMgzvYkjHlkJxtpo4hEtz3fbA8plLSh
	 POExGra408if0UgMtPnnqVCQnEFmJfBiRlyo3z1O5jS5FKOs9RFzXiAg92NggDgyRt
	 kE28wWDqqZIvjr8+h5pIUpzpAq5pu2vsCnDWPKfQwKh48xiuc9luTZT9QM3hf9QpfA
	 62d5oeb8cIvlNQ13kHc+297wtytgFsjnmBiogg3K3pCmciJvrmv0j7faYV5oJM2MBu
	 AIZyWFfUaGc4mOUu6tDtHAbQQDmMI9tLN7imR/AtieoHbrGjMGjp1HBdGLMsoUI/oo
	 gtkSr7Ikcfu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9743DC369AE
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461579361.582.4916639061953727309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8a774e9782377e1841ee4ac0df1f9f35084ece118ed0122627a00f1b06da31
Date: Mon, 14 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744615793
