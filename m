Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD74C190685
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755737393; cv=none; b=UST4wwksArsiulwBZtBtI7V750NUMxrbUEeZfUvhZrkcIkNHfHPdthxOHH/N0PXrQeueEGjxV497q+5ThQFRARXqfST2c1oK/gDLPwHPr00fKIGRfuB+tP46t8p3wfSj3upJa9wnFOWXIUJWpF9fNtj2roUZ/0dzZUarLz56cmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755737393; c=relaxed/simple;
	bh=L7e7DBK1r+VGNTSIZKE9nXvrxdjJHBG6STsmWM15hmE=;
	h=To:Subject:From:Message-Id:Date; b=sTFhwm5jRWxFyUAhY8ShKM4nKoqfDnVPVfmlkicBWpuLCeetjowkpHlXD7XpkMHgL0YM8KutNOsHggiI/LdKWX7cM2onj2FeQWtsWmqTK/qD+u3XF7u4RvIlkTYa0asGS/NxFoiuMExquYlyTw2yYx5/WjcG3pW9bmS4KflkJ+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuI/7IDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuI/7IDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2C5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755737393;
	bh=L7e7DBK1r+VGNTSIZKE9nXvrxdjJHBG6STsmWM15hmE=;
	h=To:Subject:From:Date:From;
	b=uuI/7IDWQrfGSl+ISak+rSBBEli2mpdUXHlzqcyn9PnH4Gk2P72pPEXzhx6EAMygs
	 PVX76aDwiBdFa5UjlsORMu+XqK/FPRv5xyZMzSfOyfCn/sVoSQoxgyyf4A5a7MQt42
	 DHCCI7W9Vh0LAN3fovJYo4ANz2zF6Riwu7gMbEGT96WG+c2H5wG7pHoC4obCkzN6rt
	 QSrpocQIZ+OJfgLRfvH04Wdnif/CxVcuwzvVt21mWhxyZTjeluSpC69A4U6Xq7iLk4
	 7bkIqlt7fPOnLlCVdFayYA90R59Pz5MiEJSSGnc07AAQaJwBPKQ5IVVI2myuBdfqgA
	 zRh/4JjiMSjDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB92CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573739357.21252.8848482650818246754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f778ebe8ace718ec4f284904d0b5e122f02e46639131ac72259363c31b2412f
Date: Thu, 21 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755737393
