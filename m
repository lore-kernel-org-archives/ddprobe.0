Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5628518A6A7
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743347394; cv=none; b=r7w7Cx4bsmaEKQZZyN7vmSRJ2HRoEjupOe8dLfQ4Zro8hPILmgm029ZHp5lxNuSaq+pQB/yHBZcCzmFiz2ycO4zgC1qpuhu0639j8i6OhmgmAapcs9osYVyH1kXE/vOEAy6EwQqr91kVWs2WP3M3m8Dgbii7gITLgBr0zbDlRlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743347394; c=relaxed/simple;
	bh=AcmsHKX0o/h+83qiUlvhasqIqCWWE6B3n2wFYTSHh08=;
	h=To:Subject:From:Message-Id:Date; b=gb9vBxdPNjsl08m6T2JePpcLGwECQ45oUvrhKNWvwrBpF3gZ2CPwGM2sGYnjKrOFh7ZX8FKUu46pNN+OkI+FF9LpE3eyi0jBsJq9lbPLPRJvMLh37CuHys7n5AGxmnk2+Yrf2Cm2yHWoiFnLGqBFhwTDp+CBWS+MvJBVNCtB0XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH6E2gC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH6E2gC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF95C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743347393;
	bh=AcmsHKX0o/h+83qiUlvhasqIqCWWE6B3n2wFYTSHh08=;
	h=To:Subject:From:Date:From;
	b=AH6E2gC2vR0ahtkZyzJTvmyIffGb9ARCORcowDIFBLR/xgL904iUMd/kFo8BDOjAO
	 kXIh2c6PoyjAx8jsTXjEkmQZFCZaA4zry50M0IiPTwWF4HG84txEZ7RJtbXPBlURMr
	 Z87ize9okeMSSIgTJR5vWutdKywxV3qLvCwTWk+JU+TFONBvS61rbiHD2DHL4COWfU
	 zJR8nHJMaVeiLo/2SNVoyds3SqqJbj+KTLEIARWcIP4/DJphJNC+YwKVntWi6W1B1q
	 NVXnoFDxVcdW1EWLtwwgGdFRSQhirMK5Ehlq1FWU6moxzIYvwIhJpn3l1i3a3Nh2pM
	 AewKYPa6vaavw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0F3C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334739362.21981.2581543015107805028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bed7e23e57f697db19918481224610b2f08e309bd8a1244a01b3cea023a9b0
Date: Sun, 30 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743347393
