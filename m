Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8DD1FC7C5
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733142354; cv=none; b=saqNYACIQP0iCWLuZpvOYmGxSthEOr36fv9UTcUNs9zRkOIL0UpI5v0V7k4wOPEIaMY8xcuOjBgAtalQn0tn8Q9b0DpzlIbXtP+KRRxSFfdHGsxRHHhWnE0+B3T1a7hlkW+L7kM0vSvjT3fE2PtPYHpNOkNIPLK9TNRbbGlk8HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733142354; c=relaxed/simple;
	bh=N+Ta1P3wDXdRqLew/bDHNwbrGVjoJ8Eoz/eHCkoIGk0=;
	h=To:Subject:From:Message-Id:Date; b=JTGhs4Bp03vTuW8TFdbqkjxWLwNcj+SO9nOIbLhLqGobX1/HvkRWWntEV6CUfvh4/iDYdYVDIoM+qqu9wR8qoWAwJXgo/ngO7gQvnD4FXt+aJ1YfBZhROjBW/FzSM/by371VkWTpO1ylLL97MgtpWkQvPC/uBuZlhJ8BZLJW+ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEyo8GyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEyo8GyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ADDC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733142353;
	bh=N+Ta1P3wDXdRqLew/bDHNwbrGVjoJ8Eoz/eHCkoIGk0=;
	h=To:Subject:From:Date:From;
	b=DEyo8GyECHUM/c1EslghqpKLRC/OUDoE021sa5Bf6GABHtNJJoGE7tV8K+6fGl+11
	 gm4OF24ET0VyeP6+0n+8o6ztJ1HD5/hPltyxYkFi1H5/dhSEqfweYHOYHnbYJ92FJ7
	 nvBeJSVeKyLbrwzNDk/EUH9PsaUWeT+P2ATaiA5pNHeYSsN3NmgY8jTRCa4GcVjYec
	 PAbnN0JEkk/upRlBmGsb0tRRi99X9kt1bUcl0ZuuU6kb2ABfw+Z9fiqHwQr3MRn/oH
	 8RC1CcW68gI/jXB/+WPyeHjK4NzqRsdHfy/XcFRwwXJ1nSq/khNKm/zFqduS6LKjbw
	 U0Ug9/8tga25g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA7D78312
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173314235359.27075.3942318074469478098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b06dedbfb20ea364b6333da8ce76fe3ac0c3a313d2c858c6a3aa08926681b5
Date: Mon, 02 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733142353
