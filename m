Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABC82ECD3A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777415854; cv=none; b=igqs8WnbhvgcuISFTnTUJuNGD17cuI2qVTElOTbL6V/ImLIF6KiMjEOWerql07tx3Cy0TvoGV9zTakcPc9Yi3WQbNnhqDP8h+eCr0o5ZLrhJxExkYYk4pNZu0Cz/+cJvNcC78Ucg6IL56ZVoq7eAdcY6QizqwVS6voAKdD8EJHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777415854; c=relaxed/simple;
	bh=ZeaLv6M8LdezLiMoLKZVOMPSJkepLecZAAxwAgPsPyI=;
	h=To:Subject:From:Message-Id:Date; b=sR3AWOrNz23MF6CmJ8yZhLbYT1+pyrX62cei0UBxudipwR6VvTwwFGXoVyDJrig5KZYvOPnZqbBIA6u8z8fRVa3UDTD7OZ1ilEvkHzECRINYzH8I5LPjsn97VkU9ik/qCndvmgWirLvw8jKvXNYXI18ka7a8AUnnxlC014LlkEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra27cAhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra27cAhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CBFC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777415853;
	bh=ZeaLv6M8LdezLiMoLKZVOMPSJkepLecZAAxwAgPsPyI=;
	h=To:Subject:From:Date:From;
	b=ra27cAhmIzfVwbNoxjm7nnDdwixbChyXOosyTnKIZ8SB2BJjaddWz9lYkrN/DNoPC
	 M7kd6aMozu6OU4IQ4LZN7y5VYRzsP8dKsZUJqPH0ePTyXxjzWrIjXFzn+jmC2CZOqD
	 SPQDX2hHQkno/nu+MvbLFZQ9xYw1X2caJ9/o/8w4imC3F7XLusGf/cpMDTYzmt4Er/
	 yC98Jo66XkR6VCJrFfQQHxzZ0mt4kCdcxw0tbwRuLScbSR0UDaai/1biVTrkSBDzlB
	 sT02DdsFJP/1RF9OHA8qsV/r8WiGPdvpQxnX0InpR/C8RotTiiZpQslqh+vEo0Szlo
	 yXYN7PuajgOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E54FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741585368.8447.4635436980468708793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ca0abecf806726afd7c449069dc85bf6eda7d92b985c76a738d07da627666a
Date: Tue, 28 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777415853
