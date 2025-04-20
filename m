Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFDF1C860C
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745179194; cv=none; b=NhuHiyZbkYsSTPqmOh8OOP3QRfAypHFJjBIk9ATXfO8aiT71b6YekYxw0Sq2bczbHsmo1u1AIAhz3DgXFKLaN5jJ4fvtzrGvIqPedmTNKVnycacreJXNkkPBumdivKfvsPjL47icPbO81sjiOuugWlYPLOpSWl55+82NMWH6JMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745179194; c=relaxed/simple;
	bh=vNkVYl9CtOZOnIv458fWnqjXUkuUNAPFZ4gCc0MGNbo=;
	h=To:Subject:From:Message-Id:Date; b=Lv5VDiC/0YcFZbr9SiZOfpPaZFl1qlITcC9pGiPfBcUyF8Gdg+DLsy9AN9tMkZfhhYEPB8IB/C4VBryQiDppfI6BltLOBMhTcHZtgzIQvsWJlat2U+8sACdyWvV9FNaDtphjotzrbguFxaQxn1O8jhID0UWBZeYds2Z+6Upze1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6ufRR/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6ufRR/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDCEC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745179193;
	bh=vNkVYl9CtOZOnIv458fWnqjXUkuUNAPFZ4gCc0MGNbo=;
	h=To:Subject:From:Date:From;
	b=T6ufRR/l4kQeNGO76Hrl2PjJX1UJt5126/e0erZKNliYvUA7RuDIp8aYCsIxBWuGU
	 iVybeL0lraev4PrL6LgxLjmGpCxVO3GAP5jmFsqW7Xa8HaM+bZzh/5q+x0HjJM7J5i
	 MDDBPFp2IP/xxP3oKVFd01x+hTPhYW0YfHItzJklJMMFUJTliwPf73dduESC7lG2RW
	 iwhZfN8Cs4J3E6hHCRU4ITMCkGFa0D8ihMqvCwAhtcXlKI2H+fUFhmtwVk+MgE1b7N
	 foQSlnuba3gXNg86L9GkqaBVHihMWQ/LqHSIYWxQqDRMbB4tfq58LopZhsx3mYJNLE
	 uyaVJi8W++IPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D9C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517919362.4045.15508392137054500198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478d26b6ed91e02e4c772c4f7c26b5e87e27ba7c2f92f2b72f3be7df301ed5a0
Date: Sun, 20 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745179193
