Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3477326158F
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745231394; cv=none; b=OKPYH06pJet4XA3fDtUWx+W9gxC7e968YYIfb+Qh+Wv6ApFHzioxsfF/wN6Jkkrfo23dKHewIZsya4fDRkCBxCdHS89tgooMMAVYJDPtOChxQmNFMa9bmHJrz8Mf5PCiJGfVj4kvSB0g7EEA1mM2/wYQ3wXxxwvc+Eq9t9BcDE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745231394; c=relaxed/simple;
	bh=PiJ7stvnzscNYw3zNGeXnJ6vcCJ77Z/8GPt1uuHnPO4=;
	h=To:Subject:From:Message-Id:Date; b=M31iX+FuoZAk5dnrrD72V5w5qfPnHfEbCvUS88c8y6E5erBGHxkuAm5ALNhvw1l5L8ev6dsNKJJONyDwDDO9uVpxnuibmkEuDnbiSsrrSWoQB5vm/s86tenZCM5Lvx3gXkHwf8V/ORPTSTUUet6FpgycXetE38bOemVbY0kXMO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfJmjOOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfJmjOOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA413C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745231393;
	bh=PiJ7stvnzscNYw3zNGeXnJ6vcCJ77Z/8GPt1uuHnPO4=;
	h=To:Subject:From:Date:From;
	b=PfJmjOOb113qQWAmlV8AdalZxhrEGr5QfV9FZv+iZMzAHO3YrD8IYA5RV9x1uUzd4
	 nUIlMIPs1fAHij/quc1mrwwemRP8c1+UlPxosrU6vjzHFUeL5ARg5nBIIJL0+TGyk7
	 OBDx8qgq4o0KiGyJzx/PQ05KizfMm0zCNJCiHEg85cAvrQBh4PKxaLfqN9YsChC10D
	 yPsONAya4++Kljnkl2LKEIV3XX7EnhD31o/l6Rld1tapzYKnEhzFsu+ty5cdGUJtP7
	 pmQhmi1jAXP01dgMlY7Jfog+NgAvE+ciDcdQF03v6uc36HxQH9PjfTuRd2NeqvDaX7
	 adF8AJVGWsoNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984ACC369D5
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523139361.18716.15383997828158025239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c7c51fab579edf5d9ae3ff25ff06dfb0348ed0ecfbf05843c3027e92f01621
Date: Mon, 21 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745231393
