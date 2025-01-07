Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EDA18C03B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736278554; cv=none; b=g6q8maB5N3I2dugWeThdTgPPVW9bLOkIlg6kfNXCXlII6pNLuPTPHPRK1t81k8YJs7XBsHi2FvKL+EYTzMA1Ne/I67KLxtKfg+n2NYHnYhn/YKQD25tJ2OqYC62MWsc4EJ53XNgmZAUMc62zk7qGgsEIPyFXCoFurpT9onySXyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736278554; c=relaxed/simple;
	bh=xFVh5Xy6txXnLpw1gonnyZrG+ho3SzgBk91jiApSueY=;
	h=To:Subject:From:Message-Id:Date; b=cT0L7xEhd1ZlfDrYq/JG2zex009Bl7bSkbN4t63s0FxlT6t/Ddmi3h/5ZLtGkEQ6cUcmF+CTN90VS+j8ESkLRwEwxfH/ArZPldFuI5eBCs3Ovf3bGhIU35vA5Wnc2dw9qgJvSZ7/zB9y9ODLS4trtgpkvn6ieEW2ka/iGnNHeBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzA2fMKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzA2fMKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B12C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736278553;
	bh=xFVh5Xy6txXnLpw1gonnyZrG+ho3SzgBk91jiApSueY=;
	h=To:Subject:From:Date:From;
	b=FzA2fMKFQqJjqJVE1dSSnz+kHmq2JgHjzPPkZ/TLWiBgcT570PUomFixSQW9hvblw
	 yag1ygG/TbSB/igt3+wqku67PWvdeWmKQVbGQoDOSgIWej9PV6RWN6HZeR35lnWcXY
	 FIuXHe25jC3xQCkf4mYB7ApIK9HzhrXX2Yav4LaIKz6b4X/rA0toozTZKFLgK8VVL7
	 T7Xie3KE9t/eInXRz0yBCNiUTh4BWFne6YCPiPS1LSoCkNLr8Sv08JkdZvNru4mYvL
	 Mb+6WEbte7QbLsw8lZfct/VozxC969bi3KbjzjsIT2Gzt2Zgqy82accmPNm8yrTUxT
	 62SP8BfoFIcDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947CEE77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627855359.1078.12903558572016535902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4740680f2ddb0d2a19b4187cad71f4703a3c15ad8735b1192373ca5f80ce61
Date: Tue, 07 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736278553
