Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBBE1C0DFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711831097; cv=none; b=D1fwdDcCjYcvcNgrF19fQ7jMRaqH/emnMbcwVCxpWHaDxExSyANDKaK3g70o9jJyv8fvjzposhkHtcjuFULffH6HHtY3L5DzJsvODdv98ZXs0iBRqfkgl5OhcwVtaKQc35pKPZXMOSblIvVqjemsps1jQqdYBamE3eJl5I4EBd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711831097; c=relaxed/simple;
	bh=v7x5yHXDSk2u9AVkXT+4F44tyN2T71yCJR/0XIEOxkI=;
	h=To:Subject:From:Message-Id:Date; b=PKobf47dNFlPIoohQccVYVywQYF4KCVgs1cV4TNFsQQnDD6PAH7GeqPH/NgGlOPXh5pzJPwkWgTrZgdUmGNntmdhmj8nn1hINZzIiKrA79UY9oWl1WJWEyCL+sJzl4EZwI0E0EFlr6WBH0hFGc7KrN6WaItwSYqq/aRDWhBeKh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZe/lq41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZe/lq41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A92C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711831096;
	bh=v7x5yHXDSk2u9AVkXT+4F44tyN2T71yCJR/0XIEOxkI=;
	h=To:Subject:From:Date:From;
	b=YZe/lq41kp4nSc/LY8dAdrjoRsAK75QuRwgGAoNNTuS6Obz+DMZazcxeqsW3114z9
	 gsI+dp4GjdLDmozhQ7xrmCBKASP1dlC/CZBd7FpZ/VrEZBYwjpLDDz+CK8JMEI42GX
	 0tr3Ip39QW7C/khHOntDzyFb+rWFj8VlDbf0fbuboVy7qEzffV4ZtS28onK6G5OWHd
	 Yzwa2xluzctgZJstmXOqSm99zgMVD302RD94/AHEOS1UWigHyH9ZWsaJV48Cv2yRRb
	 ROOK6Zsj0CQLJsjx3/W+7QQT1LLErHBrXDIy9b/X0tZNv7Fi9fXD4TyDazuL1kER6O
	 KHxZQ2CcmGz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69124C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183109640.8283.7242722825349256241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3215c13f1abfb5c6fca666daad35d4f6d5c3fcac2f42ea646f7c8b8c67fdc811
Date: Sat, 30 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711831096
