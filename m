Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D522410F4
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722559553; cv=none; b=JC5tY64Z5Z6n5JXCm9GkN4X63maoPiIzdvFSwxo9Lxy6GfHas7AdQFezPlj/tj5YFdlSO6Wi1/k6rqMN/GsrFN8FlptVVAG5rvVrdPmm012EidWWYjpJWFvKzr6wtPUk4Li6akjT5WRCI23uEy6E0MmWkEKQ1ascp0SQphYZGfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722559553; c=relaxed/simple;
	bh=Z0tCyih39KG/nzBejy0o7cx468xhJZL2VQk+bG+dLN0=;
	h=To:Subject:From:Message-Id:Date; b=XKvy2K03UbnGWJexWRVoz0RVr7laDwarAu0eVbl8/GD2hS5KsDvrTMJ1vxfsn+FnLd1fqen9Svyv3WfEj7cF6ikeDYGb/HvVvNxKCiINzxMYQv6PaiLWGH5olvqkyhGwyhb6j/fex0PmM1Z2VetwIU15yxcJdheYgDPtnf9dryY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNb50458; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNb50458"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54B9C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722559553;
	bh=Z0tCyih39KG/nzBejy0o7cx468xhJZL2VQk+bG+dLN0=;
	h=To:Subject:From:Date:From;
	b=oNb50458RLqNu+n+Uc+p6/6DQk6GzRmycyro5TRIW3iydLR3lkKgoaataA9szPlIY
	 Pmtcz2dc/E9LkItLF/6Sx8n7MdU+kV+hLpwCaib5PWCaXN9O2Um58JT5fbnQmdz72m
	 7Z1OI3wyORgeKadU+sfYS+ghDUa/bYzH2Dz/QtKFOYzOIpTWNSJsROIoec7Bv3TS9C
	 HR+GYwBFM3CZCz/AWFjHmOzlc9aQ36TgYANdeKaziZqaHqPCdqNB77jzJzXuMNaUpC
	 qGFK+gOCBHyYB2u3+Z2feo0qdbQlVrLm9QYG+jXqf4a5tPXpJ4tkD0PDtq3jTCGBif
	 a/lLlnE/7y0gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6278C3DA64
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172255955363.27091.3489300500923302351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e9f9e52a8ba73453aab12c1cd2d65bb04b7538e858ed0b0300f6676adb3cc1
Date: Fri, 02 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722559553
