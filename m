Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4791E9919
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766723034; cv=none; b=UGnnBcLhmeodZNikK5XP9p7uCaJLHiOHKv5/yA3WXNgntk7xEjrk9RA3A4e4HJYoYJnXpEE4CpZgpBgSRujxsHBlRmIPgzGXJ5PtuZSYg/CwY78B3bebZXOa+bZbR0dIvwBcqY+dcH+TusR5JtqiYVuq4pqTlxkm2vjQbfYm31Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766723034; c=relaxed/simple;
	bh=uzV0+MRThUYnehUAPYhfAjBZW66abf01pUnvCZxc/P0=;
	h=To:Subject:From:Message-Id:Date; b=plqQIRCO//uLkuEK4L3lHZQljCsM2LxRGTTlzKzX/3mD0QJ8mtQSwS2Iq4iXhjC/0ENrPXbzD2e1nSZEM9ZyHNf7CSm9D5NCJcI5Ztw/kXoWYNgocANyjoDOkRy33PpRfOmWsBgsaXHmU6OokVUd65xMg7GnyB13ukqsNTQdXzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4Xjagln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4Xjagln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BD6C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766723033;
	bh=uzV0+MRThUYnehUAPYhfAjBZW66abf01pUnvCZxc/P0=;
	h=To:Subject:From:Date:From;
	b=p4XjaglnZJaIMzzq+gtbspe0OZUuAeAiPvwKcKiNdqzuz9yVIOOTdYWzPDMJPgfxr
	 c3FWtWgdjwlm818wEYZNtmuWf9LpesAcdk7b8kUncqisb0QxwcR8tmlQcuNS5FVnAY
	 cOXRuNE+TsShlhxDD6zMsVrr/Sz1LmDS9dOOmc1LEDYPIoHPQJvvXdPfNazCt7sQ5Y
	 LtwZqxVQUibJTjEDiRUbi8yAZrYvHUXmD9F6IviI5BOQOgh4dZEBH/vZKUSLnx/p0C
	 dNI9Bx1Mw6kYrhKi3qp/InOCygRsKT/vLyIH4KC0pOeAp9tU90QbsyYFfgNZMdACgw
	 hRw9POD1S/Gaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D38E6B26F
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672303374.22793.16360220119106297348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b14777db4973a85929f869bc10575e258db0a7e86c596d38331461108c9beb8
Date: Fri, 26 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766723033
