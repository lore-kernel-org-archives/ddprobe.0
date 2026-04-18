Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F931F09A5
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776514054; cv=none; b=U1CRAmWdkFPMa4nSiY6Ryiei9A8PLFViW+MerWN7xfPhuFF41/V+H0OFUvY7KvQZPF5Dk43yUyRvOWINbt7EH6VViIN5J2TZTi5t0I76pYrAPwip6fngUuHOQSLD5rlekUfnVtY+V2pXB3ij+qNWByCqxc+fDXqaA+iQajysrkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776514054; c=relaxed/simple;
	bh=XASO/r/p8hjPHPN14NhfuEt+rLyX1FQ8jjPfo1jc0o8=;
	h=To:Subject:From:Message-Id:Date; b=Ls1wAt4m1RbdkyFZ99YoqaiX5vIX/rOMfy5MawwHXjWi5/YNuPJww8brekumPT+WIsxR2cEhfdyPkFw251m3T1GDih6Shi0vyjWv96Zspv/+orkz/MbaUKTg8RB6qoALSAbwlu6+ugw5Z/VBoTGxOhmI5DVrxAgHEU/72jWHFoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aae50pCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aae50pCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0686C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776514053;
	bh=XASO/r/p8hjPHPN14NhfuEt+rLyX1FQ8jjPfo1jc0o8=;
	h=To:Subject:From:Date:From;
	b=Aae50pCRZrM5Z4SVAC2RojXV4KT6wahjZwXukxfvx1zLmrwQdKolgQ7E/WT3AwrzJ
	 KobY9TBoeiOQPdDKrcP7OuXWWBhtR8ocTvsFrEoAXJ3hZDhmF/MhxxMr37YJEwC++O
	 YZIVkCLYM4Vog6LbTtRvU3cQiTSS0VVWcmg8Ghx7YioKAl5erlo/jwqxiFN54kgSPb
	 yDc4921LKFa9kn5wb7PHgVv6epNSoIXqSokyXC7wLitTV+Ab7wWjjIXiyuwqc7+wxQ
	 YYy6aU05GraXCA15c+k82NInml4B/JqfJeFdSEvyWew7mULSbu2jmRpk9IMJ1o9kuU
	 +dWJLSx8ZgqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4BEF99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651405368.25369.18075413433700363206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2979fd1d5fba95b3528ace98e921f25d1dbbf7814edf7999ddca6312cee78f00
Date: Sat, 18 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776514053
