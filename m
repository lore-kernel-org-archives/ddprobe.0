Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489132B9B9
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747010394; cv=none; b=bf7f9BTV6bmhQILkM3QBLlqjEr1g6Rgyae5n+TaYU5EwRbt86U41W81dUW8PEeXYCvKifhsZGQ9Hu1uYawwKDnq0wbbiiZJ+76JivUhJIqEZMH5ulvxM/exjQY6I89d0J7tQm35p1vodVpm7i1MfYtnyUKp2L91h2UaWTZ9LIRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747010394; c=relaxed/simple;
	bh=krnvalcpM7oPmVL0EXu3V4BN37ZHHvwZceiizaiLcpo=;
	h=To:Subject:From:Message-Id:Date; b=Liq9y35/W1+YpXZR+kWqEZyiT1O4MtK7oIRixXsAcs8gWwPXP3QpCZbgm0EerZYk9Ia6Sgh3r2INkMRcBfDpoqmOqLsQrVp2W1QUANhW+93QYAJkvWElYkzjpUw75seCb+eqE5JqqFsFev5rnRn3B+qOOTybqe+3hb62+f6wr98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEOePM9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEOePM9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747010393;
	bh=krnvalcpM7oPmVL0EXu3V4BN37ZHHvwZceiizaiLcpo=;
	h=To:Subject:From:Date:From;
	b=UEOePM9X02YusPyZqqvQRl5eKJFSdhKpIhzE6DsiYvyaIrIqoAhAwMQEsXhCyzILx
	 4TmtV5+PJgRJ0qhIuKHjDEyeQhVciIseoVhmkglJPlAIJyXZh5X+8/1rS1Ilv5T9bT
	 hNmuakDwOeHqnJUMrgrdEKVtju6lSKMt6Jo3UtDIGXPaHzgs2qdgyHpzySbc/lUs5W
	 Q8hptbAP0/AGk8y10OctwEapG5peGppJKohvgzvFyuCvFVlPAslLW9fItKhIP0oxKv
	 eAYQi9mtfLOVsjO2TbPBox4j8Cb740v/RBzSyFivOSaFxIiyU6+H/2gAvEq04I3z62
	 +KTzFddYC5kjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AABC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701039357.5256.12714529764383867536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c56ddc7b973421d11b59928d07f27b44d0c4ace92941a14ba69aa7099611f0f
Date: Mon, 12 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747010393
