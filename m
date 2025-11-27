Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14D32ED14C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764265373; cv=none; b=oHWN9/YuYHCySsm9BDJzhGqhrg0IWi9ROuOEABulYG3CDcBjid84HsIm/qtpU3beAaWn4/+sxxg8x4gjjIHwYDO5RaI7mmmUnkSZcd7aMiynycsBFYEbEQU3FIlk+IQ+oPDrwlzu9D25hBQ9Ok4cxGBdcVpoSPvIsBBsmGBggzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764265373; c=relaxed/simple;
	bh=VgUejyuiVjEwc9hJYlw6O4+ieTEncfgPyNL46Ry2qBU=;
	h=To:Subject:From:Message-Id:Date; b=qMzJHPWJcg35p1KgUhCpk2+hKpSWpD2rZaPUzzQS85mdifXmjjYA2n56vcxl0fCOqMy9gMjNYAed6KVT1YBZ1A6ui0tSfHgwqk2JXPPWkd3IzizlX4v4D/OFDHaMJTAT7ii5jwZyQS32oKcCAre3PyiNNzIcryeVgbXJZbhw1sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmhSYJRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmhSYJRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A049DC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764265373;
	bh=VgUejyuiVjEwc9hJYlw6O4+ieTEncfgPyNL46Ry2qBU=;
	h=To:Subject:From:Date:From;
	b=hmhSYJRhC5yYF6LLzZmy6LAbGiZivgYOpvPk701X932z3APblvaM+/8xPv4xypxyi
	 NhJb+sptdVeW8ZYU5tLnBa0UQIbjYRYwKDKhCAyFDUmWJdKvqHAtt+k4O21w9V7uBO
	 hLcoGK8CL4ICESZBqCzglNsQaEZZDn8TDfPvOm50wEvx/VwtUSx+8vmy14IEtZZSL/
	 h6e3HbuS/RQLb4O7Q27M6L12bCa2bOFf1kFJVRqJ5kzLsIHIjrtg6vZ9CaxXDIE7FH
	 e6lM7PslfeWHz0qVQVE7y3dsgi16sPpL0QQ3LT05u0q24+w6V7VkMhOPYL2pTVZP7E
	 qBKMKiwUG3F6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B5BD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426537358.5878.9588156957139586038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb78a2ffdd12273089196e33c241f82696b7e3830b39fd416470f010636f14b1
Date: Thu, 27 Nov 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764265373
