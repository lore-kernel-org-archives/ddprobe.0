Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FC318756A
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 08:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734857754; cv=none; b=svR8vMMnzwi3gUcY56uXolwQHKuvemyAEaxgo0KY3ajL4h+dOAnpTqdBB7nxh6Kw1SYbi1iQpbA+ZqbrBWA/3pV9uUIkj/nxSKV43iV1VAX7rCLcjOGkra+UBXO6TimDjJzCK2MSI+f2/Gvp/O2rN/d0cGtDsrHb4qeFRbpHcKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734857754; c=relaxed/simple;
	bh=C4c6ko6pmPZJZTQ/2PuX2ySIX5mr9SXrkVOH2C89k9w=;
	h=To:Subject:From:Message-Id:Date; b=VCB7foBqm+4+Gg9dCyciMhv2XUhl9mwENBTC7Mdf4hPQvl1slKLVy+NVsaZjF3JaAgv81LqqrTcufjtkWaO6wC8JAifQAiVpHmxCrxEYUwbK5u5IffnrwAuPQu+/GFrqgVcxbuFJeE/6xDiKpG6ZYlCrzwWiPMZ8OiLMAYVg4MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNOBqfh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNOBqfh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C8FEC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 08:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734857754;
	bh=C4c6ko6pmPZJZTQ/2PuX2ySIX5mr9SXrkVOH2C89k9w=;
	h=To:Subject:From:Date:From;
	b=rNOBqfh2yDBWICDpM136bybWNgvbkLrsP18AkTT23xO/pdsdxZjizvDFC8NqyOZg5
	 IJaUaiftNceCrmelE8UXcFb4yIupLsw9NZTqVz9ac2VvWJakvALJGEtHlcjbdLeCCl
	 79WBYkiWKZwDRVofxuxVdNbJc0jYIV6XjyQ9MfiHwDhd886ZAm6ELUcdwErXMegoai
	 0WD0baoxOfQYqVTZXtWBMVhdVxXgKsWni8dpxRr+LDfkboNLxvAhdvyJAwZDa6fNZJ
	 aEyMwRegGywmtAUaORJPS9lFBU1pARYpGYMX68xvtubq/k3qKRT3a63yxsEY8nzvR+
	 MzoNbR3dLEDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E398DE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485775385.27824.6217666464035694407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92274687cb2f66e38204ce9df748e87704070b32113f8612767ab613588ac8c6
Date: Sun, 22 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734857753
