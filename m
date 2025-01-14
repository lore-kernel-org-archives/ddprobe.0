Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DBC146590
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736891754; cv=none; b=aNGF1Tbbbv6jOPDz+2TmKKAtXv8Pq3tgzjIqA1gdrx3+Zxst+gVkq96r/e8bxw5hn6LBHZjB1qtGBlzMKtcP35Et39JGwL4HkhyvYMDmuGn0LCduhj9Bvs2c3MB5jjLYdrqKjvDkQu60RWRlCJU2cIFVVfm0brdhJYZjrb2jYZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736891754; c=relaxed/simple;
	bh=t+MTvWEFiW4grWzTr2V2D9UZnx72q0Q7yPWIatBM1sQ=;
	h=To:Subject:From:Message-Id:Date; b=GKEHp3fcJTvLPf8VElegm8qZxbeJAx+2aQnwxe8drkeUG302O/Cxjpj68jPZm7LgclXsOYjgosccqOIBDA6G+lCYtwfgR/OhMD66XBtEWbYdx6KjHtC2k+YeXh92qt93lsHWSleZ5EIcfOdmDqzFS+R+L/56iHzqtTd2NK7QPJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC8RA//3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC8RA//3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B88C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736891753;
	bh=t+MTvWEFiW4grWzTr2V2D9UZnx72q0Q7yPWIatBM1sQ=;
	h=To:Subject:From:Date:From;
	b=FC8RA//3ErkOIQCxQS5WlMTA8JwuTDpqwR3OeGRsr4r7RMnxBSwgz1Moppb7z8f2c
	 CUZOUAtwu6qCNjBv80ffMXUpRlpdDfkC05s/K3CTXdXyS2bQWxdS6PEn1FLXDTczLF
	 BV/IXMXRCgYwd0wKpDHZZd4CZS7ehm6X7mor4al+3bPmElHngPwYaa2p5es/F/8mTv
	 FlV4oqcij7N7rdoYLLhuIxSGCjUcEmfutvzZUgKQ8uOpanVER6CGgtGxgfiTQKWr6H
	 rJnE1JWC44fRIvCOmW7CmxoUP2s+pzNjb4MXuXV1k+WvsJOw2MxB3qbNT0h59QlFsO
	 iKLlnAmVcdW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95630E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689175360.25606.5862031176403549265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7688cf3075c9590549538bd44eaee015874d59186be53c02ac0c1a2b91e5c27
Date: Tue, 14 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736891753
