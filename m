Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C212E06EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750251594; cv=none; b=eFftXAf89gplnFpibR5xhg8tzmqqjHp5MV8JMVCUQP2a5pjq4zNbo+I9lKDJqg9+7pJyHRsq9snsXPWC9jGFhUMQ1RSrCsjTVnlF/ZU9s4Cnppo6Cm60xl6YHWSb+OcQh8jas/o94AGMj0McRtDiuwbDSd59Mi28cFBFS464xAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750251594; c=relaxed/simple;
	bh=QGN6O9kQ7Bv0Og5UOzTJfLRt1y0XSfYu/LnCYrhT04o=;
	h=To:Subject:From:Message-Id:Date; b=kGxKREt8I79OhfdQcrEe+hs43OVCCwyFnisUiZtMd3Nl0fbZaqUlr1P57UDGrwV65PqAGlS2XGKX4GM6XcucZuA817Heh7S2ZrgkkKHHipzKbYUBJFTJTu3FgFJQflBIgb3iFqp2ThLUevUfnQ+9ODwnLpEn2LramNogaCamfxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTm/E4K5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTm/E4K5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1BAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750251593;
	bh=QGN6O9kQ7Bv0Og5UOzTJfLRt1y0XSfYu/LnCYrhT04o=;
	h=To:Subject:From:Date:From;
	b=aTm/E4K5UgLBnpdCc+NYRQVpJ2Nrb4/ufp7JM5wlT7y2YjE/ZLCDNh4zf+yR2IbX1
	 NjRpQUsVX5aVuBRNJwHugHp4ttbnv85yaey2iudjKM2SJ0Kmrs8rC85ZebKhfhW4VH
	 LuQwrRRrPez2cGy0WLjyFZyxeSsZd/g2x/b+onZ/wrrHlbZKjPnQGP05hjr99sJdur
	 FJp/TRNEKv5i+72Dk7gDjszCLXpkfR4XI6VOJ6MPzDt1s6qtbf+gPOzS+5p3Tuo6D8
	 Qb3gNbnNtz1IteAZlUu6c1q/Uu2AM/AIylBKhPEsYAG6lX7Vz1mDcNVZeefPTjWAWT
	 5YS+ZN4WlNkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98748C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025159361.26873.14683771402953923908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eaa86a31e1d131ffccfd207a4e80744d661a36e006799e452a83fd1f713af23
Date: Wed, 18 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750251593
