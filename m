Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DB4291E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737999355; cv=none; b=Eg5J0DFLcGV798pp/pftX3uNHJZ9RH/5flQZd1pw6oBuArAjOzmA1odkur2B/asT5qM0kD6jcfjyu5upiU91CMwnHrNE0l2NKWmqBIHNWKxEuhW9SbNGK7xN4H4Y60DGIvRzCZpwyNcz3ceBhxx1Rtqt0TUbZ4TyIYGZBE1gmlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737999355; c=relaxed/simple;
	bh=8wb0vuRrNyWtvMB2ZS+qqLRLxpoCzdlmWUZAJXX7s3E=;
	h=To:Subject:From:Message-Id:Date; b=knQyyi4hpsflUw4/l9RFu15EEXg3Cop4GQmcBnHuYu/u/1EL2T7OjwyxssXVgFC7Glpq9l01xaptNBtPPiffpZdzI+ZScJpTwxpdYDQMGJu0Z3XiaV69vbf59hoZMj1g/W63bW0S5G1IqY2bz4Kwr9vfX6Hb5p1Fw/lw+IyCWtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+zbkYKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+zbkYKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9272C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737999353;
	bh=8wb0vuRrNyWtvMB2ZS+qqLRLxpoCzdlmWUZAJXX7s3E=;
	h=To:Subject:From:Date:From;
	b=X+zbkYKUecFHSbv/422y702Ako/Z45d8fzg2K8tVsg1y/BDzbFAJhGtrMuY5L60M6
	 qC93pe25toeJHwOGYaQoh0C1++kevl1vm2uKF+jZTa6F0Qvk+J8u/gLxE/W1KzzZNn
	 wNxu99pfEMwRgA6VTvqNysNFkuBVkS6+84PvAYl1viHbVCDtm90+KSPbEdY4KOFGRE
	 ZER2qccfDJRpOxd/TUg6yPQ+EICgNBmQeWgMli1zNCxBiwe1aougbwyPSdkGulY2cz
	 Equ3p3c9Xz+8CTNLlbrxSadch3nqK9PV6TafJZFqG/tH5FTz5oYqZytZ1698Ui3usB
	 nJ2W2R3KuzmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC44C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799935367.5726.8136382984354410383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6f29548a75c580b63360a0cf2c639d781e4b64680bedb97bf623fae4009570
Date: Mon, 27 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737999353
