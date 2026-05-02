Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB818A6CF
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777724254; cv=none; b=svFUVcJr5ogfnU4uJUrp+YdBlCvu4x76s5IF7iMJnVKcZJcSchtfXi2Emn/tKhk488fRkML3SbQN0ESaCWg03PuRnnRS5VsIBYIhiJJp4IFJ13GXdrq9RKJaugyUyKgXW7qM8HvMrwpJwAtwdsxSDTMx+u4VO2OERm6TI0V5MFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777724254; c=relaxed/simple;
	bh=hjmkWt3wUu6AmOFYYij7ceKHuivxQG5sDT33DiTRf6E=;
	h=To:Subject:From:Message-Id:Date; b=Bu8Gy7lMPRwBCLTnvcr8vB+eS+sTw8FMuKl8C3xRcSN5J0gdWsKkylrOEOrVcl4PlZboeNaqW84OqT8a6kfLEjOQqKeW+gRsGZ4ZGWqugQz/I2wbgmSGcEDGaLqrAackeKIwhUyeIeyCCE3WURo2QAPdXkXy1Mk+wKItLTBZmH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDhv2N9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDhv2N9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C262DC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777724253;
	bh=hjmkWt3wUu6AmOFYYij7ceKHuivxQG5sDT33DiTRf6E=;
	h=To:Subject:From:Date:From;
	b=oDhv2N9NBpMolZyqG85ZWhd41KMmVTjizgOtopuKJK/KMxh7184fPHqB/yV+5SoMk
	 WSyOItfyg3itVx5a+A1bnTVBlrtWu1bb6ohJQyaECH0BE/5800UH1VYnGRhQ/3a4Fv
	 IrgIG21TcJSOt3NRwmxhuaej1ApM9MnBAkvhOYlJ4PONPVENv62XvSTkl/hSUyyYWA
	 vaOGTLbxnS6G0XD8bjAFtvP1nT9Qj5Wg7H3WQWY/O+40iwXRsC7K1w+Tgz2A136Zq/
	 1pbjsWZUVUzUzDvL14Y0zSAC3yHQ2a8GXZH5gK6SI4DDKpvw+wfL5H9GAI2HE+dCct
	 w8fWMdHmW+6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAB8CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772425368.15520.811978471924574440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4f94126dd57abc7f236e2ad8d8f2a6df9ef3aed3c07417c58bc5b104d2c1fb
Date: Sat, 02 May 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777724253
