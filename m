Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0713929A1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769405034; cv=none; b=r3YWrxjmUurEdEdOrCxIMn2URdGB3xtC7wBmWZVttsGi18abzw5LdRxO0pyNKgh3zXgLJFrQBQiuxpuBfMqAf4kc+LIn4r0v/vkxykzX9KxWePbuUmdkBNq3G2B7DirFw/rDrtGEOfuKGTUe3HzcUtIZmkKCBh7bGBW6YBhwGrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769405034; c=relaxed/simple;
	bh=9k7KjS1TUjLrtTvxQf2rOs3oPbrFD7MxgzL/6CBilSA=;
	h=To:Subject:From:Message-Id:Date; b=aCwBidiB8xL+GC5+dUuUxn1xK6k4mhoZ3iJr2jOZN5NAuYH6TelUROrJTow/n9SM0nh7fk+flgg2w+kiJcMjrCnNuIZzVNHjLTOwexW1gJVSXkSLmOthoMDCmgQ0lIBERwk0LODH8jlFzJGI6SgL0UgU8tRrnANOeiwdviC6UxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syDl13W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syDl13W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2990C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769405033;
	bh=9k7KjS1TUjLrtTvxQf2rOs3oPbrFD7MxgzL/6CBilSA=;
	h=To:Subject:From:Date:From;
	b=syDl13W9hgFGGNw7bhky2Y5zLy6M4Ym4Y7pjfPp4JefHu6FUlBv/WHQJ+YHfIPknd
	 sfkV+jxM0r9CY6YmVsohl+cfx0TjpNyhY9oYcpyaUL8LzidRkt+vW9nYRWktHNnYup
	 uSPPi2OG0EEWiHgwxVeY0Qg0WDsdDuiLdyJsvIxFC3agUsOaPSLnwWZN8fAqeQofB0
	 aTEdqu7LMSP9z4W2DnFNj0dsfVfxaIwHSh4D0+TjPhcjf+g/MRZrWCCMV8gMyCtcht
	 b9/6eIRoGwURr25hkBwI/QnAPjEBp0T30FwGhGRnMXFq0N8aI2zvWyX4iEV7Jw2EhF
	 1Ef8KEXKeo5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B0C88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940503357.22635.6486821373341872940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827c43b73a809edec2d9279529bc935830bab05e9c9885ff45b4361b7a34212c
Date: Mon, 26 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769405033
