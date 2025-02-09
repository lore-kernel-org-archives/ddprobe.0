Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446C8243384
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739069754; cv=none; b=Tj4OQVWZKy0TapVc7TVnsNlk24hDFSUl+qDOd+wpUkC6B3ahjGkaQGm5t89R/N+OlrZbxoEz6laVhhKzlTEDSMBovWIB3cwYG6BUOMNzNMspP6xVLWbwBdbsYkjfpiQ9oos0yI3bMDb3MEOQSqpvNYc6eedfnyExzwfhr862YDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739069754; c=relaxed/simple;
	bh=QMTJxmVYa4coysbg40FAWl0BxJcJKL2dg6ouwXdfdcQ=;
	h=To:Subject:From:Message-Id:Date; b=FD1fJsv2+ISv4xTqi0EiG/723nLS5Xh16ghi+avfoPHI4Qf6Qg5VM23haO2s7Pla61F/u6q8XVIrPxja+c+jL2+o2OJsYGjLTSZdbD3Y+JdHQ4wtXRC88pr4KfXoOpyzNWpPZImQbqgZoEzKMsvqIkOA8SshPNs+WtuWph5HzlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyDZjw3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyDZjw3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0715C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739069753;
	bh=QMTJxmVYa4coysbg40FAWl0BxJcJKL2dg6ouwXdfdcQ=;
	h=To:Subject:From:Date:From;
	b=iyDZjw3JBMG23vTXHwpqcKxAeYDuGTj/1E9x5cU5YgleutonwrdrIpbzpEQ+hRQnm
	 W+hiz5QGvliYFmtzg/CjzyB34w44QkyBMDcf8Xm5WooZGSROfSKX3IeNpK2VeHWP57
	 FMgQorK7W4FI0YWeQbaRaR465IuklDN4vWkaxjldga8dW4pYpInzIck7XS6Jxs1ZMv
	 QmH2w/T27UWpWhjhv5UHGs1EbsEFw50Uvhsc2TWpQkSGTx7bAJZLSEZFSNThEPQNi5
	 Lt7Yen8MKG29pBk4UetsjhKBFPOJkZjJAc3cStP7s2T3gkBi8zYmBKEWqoIN72kp66
	 Zmobl04xaSfIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96064C02198
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173906975359.28441.1913265647594024590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c16d7c1c8a637f66789b2c13264fc9f8d1254bb6ca076c8e76512a2505fdf2f
Date: Sun, 09 Feb 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739069753
