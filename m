Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5788113E024
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720076723; cv=none; b=u+J7XpAURdssas1f1tJeL3hBCSVcJ9ifkvcYOPAAvLHqPqsYpGpDQlezeQ2jfontDFan1nKWNtfgd2EZcoywh0HxdKuit5eQrZBzvnciw8Ii8OEiVplJlR59C6eKUef/nv9jdPR4APnDWwPkQ7anfMUUOHUknm9xKoGiZ9egEr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720076723; c=relaxed/simple;
	bh=fvpS6rSwSfziHiAgbe069eL1n/bfVBoRipQzbonV90Q=;
	h=To:Subject:From:Message-Id:Date; b=EfQ/aI+lGAaDeHt8usbzzux9a0v4Y1H8oC+UcUAAeXm6GqmcZtNw03y3Dx6zrT/HOjqRQ83qUPomdSp2u1YN0Pvq/nXAlJhQ6X+i5ssra4boynD5vDntxZ/7GvYE9x3WQxSb0NHToHbm5j/hlVKyhmIOZpFyIjT3Q78TZ8YTFGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOshaD45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOshaD45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D65C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720076722;
	bh=fvpS6rSwSfziHiAgbe069eL1n/bfVBoRipQzbonV90Q=;
	h=To:Subject:From:Date:From;
	b=mOshaD45KUt7800bBoibphUU2RrzCI7PEhhwisv6jdrRbCb+i4MuUNJBVGKKpkJpe
	 7t3XNhuSYM6MwAuRf7fuzX2cRsKufiZQqojc0I5OXXidM0QW9yEx6NYq85+41iBKX2
	 9vI4QPmvKIiBYIvULjua3sYLjZY+d0F8Bj9LVD9/Okehedpf3WaWtURp6YkmPk6gfX
	 hWxk2Df+MlOeq9MrnKVak/ENSrUpKCN00ePTqxYc6QlvzKZq6qBjprFqDk5mJPudAT
	 U42XDV5VqQ1ddBoCOELcMgyKBAy+dIaLApyUU5ugNeRgN7oVmswUBZylYPVvSlVWpK
	 eaGLgcM9vz90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8E2C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007672277.31630.13018356539486076179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9399d33d03414c29adcef34987f1105b0ff2451cdb0018ad451d6e2c2054f0ea
Date: Thu, 04 Jul 2024 07:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720076722
