Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C3E85274
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713909023; cv=none; b=txMPeuYQxsyDlqChCv+hI5DczOM4t9URZ2+1ou8cbmMFxP/SgfgpwSUqwBlAPrAHyOqfpQm7SLNVVZtvzCUvKLnODIlNd/9VQRnRlbsHSffOAUqqNniZnj6g2D6sISYc/MXF55bvB0+CKhhnKveJKaSYww6tkmKQ7n8c0T0Ojew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713909023; c=relaxed/simple;
	bh=FpMItVGM2pj7Qhb6drckQnMQpAf3QXDnjeXVvEVekbk=;
	h=To:Subject:From:Message-Id:Date; b=CWSfXxdiDnyDwTXn4gxynvYJk7SXGnPix0oUEXIFYrDtvt18+p9zJYVvpqZkc5kiu35Cu8nw5JztfusPjU65V3CfmhjeYZmi3H8ZNbzogRjDRPHoRaGnfebL2qpmzHNSr0B+OD/xWQi3+a0CHdVteMbrxAyS3ujg/m58HkqhPx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+qmufOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+qmufOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA82BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713909022;
	bh=FpMItVGM2pj7Qhb6drckQnMQpAf3QXDnjeXVvEVekbk=;
	h=To:Subject:From:Date:From;
	b=r+qmufOJmLlPLpklc2sUGnij9pMTSuQcS+l26ShEybBtJeytOyCK7nzxTIdpAgpNo
	 FMBj9FYOWf9ebrhTHukql9GSuQTUoFX7PkUNSvm/7O15Axt1YCvQUlCmA8+Ps27p4X
	 Utof/JvZ40vWVhVVq28seEFu8z5tln8+IgkgmOxYe7KpCiFbJMuC40RNo2l3bjwEFF
	 qgf/RdI0hWMRsXYWg05iIZrdmxxwwGqPSrilTtHIMVjTFLpNVHxhMSuqcoLN2f7y90
	 YpJjzxTAslKVkwavLmZDaYiTRD43uKaat4MA82oyJy7+9PwYWRKYKqWAyfuGlJzU4e
	 z/+HZZqEeB6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7FEC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 21:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390902279.3496.10307958162093064318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feeb260947e2e01bd92fd55293322fbd3e87a5e7da148846dd1e1f16f65adb49
Date: Tue, 23 Apr 2024 21:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713909022
