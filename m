Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380FE195B37
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727858755; cv=none; b=Gm5dgdJIBZ/k9482e8iYjb4+DCKyIPDN8DI8lgt7AQPQ4n5NEDgj3mZ2TU+mQO2atfHbmKGogUhDdP9QADUK10xYRS52CioQgnBwKBWFSlc3qDbuafBHO6fPxY418Qbl8nWmKHOlWiQGANYUQzhX/0oXPT/wCfU71ynCn0EMUeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727858755; c=relaxed/simple;
	bh=GVckgOktSLhbpWXa72RcBEEAHgepNvYsb8TX5I918SI=;
	h=To:Subject:From:Message-Id:Date; b=NwwuBzIE1nOXPjKoQemVHM7A7Frcpm/vAHTJYWuCo6phFkqxUD4CSZL00Bzkf4h/j2SDbvFcyqz/ttzjDmmOzKpvk8rygr5/373NKoyxr7zzkscbbAEMPV1vRHTdYZfmj5OyCU6vMBxdezxgW94KQxWhn7Hju2bhNk6PeORhd8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKTN4AHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKTN4AHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE0C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727858754;
	bh=GVckgOktSLhbpWXa72RcBEEAHgepNvYsb8TX5I918SI=;
	h=To:Subject:From:Date:From;
	b=TKTN4AHdEORzmGUgQLtfy7B5GdLcEd7gT6B2ylOhDPCdXzIJyHmu6FAMqShaQBNfx
	 xxV/P4ubcEgZybePiNe33NeXJaIFxGJ/qSXnxN6DiN1CGmuj+4IqZ8/9gZq/10Deuu
	 rk+rn+kFNvxVbrOVFrHbgy+SzMbUSmxv1WEo1usy5pTC5wDGdNItr04AE8Efn8TVrX
	 WoYR4rQjWj25+dXkmJYco8wNWYfIVXzdpzK9/CM4ltqEjiO9LJ7fkwXp0TQ8cD1ure
	 IDUJ/RFIiV7wJgcCjUMJwSrf624qr1aiGMN2oc9N0u3PY/BZORxx0fz+UZn4fgTsPm
	 pMIThMy6sgtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94640CF31A1
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785875359.26236.8602187514568543400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29dbfd000251b0fd7ecac5a5551056d0f72b3ad2faefaa300ce4b2dc484e5df3
Date: Wed, 02 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727858753
