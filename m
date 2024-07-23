Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D6928E8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721774754; cv=none; b=Sa9kZ4Nff/+7LTSE51tJnfefNsU/Jp7eLo5vK0ydMi5DckOANkSDRMaSc0cWGQUqEbhTTBkblIz+LfFm+A1UU95D05+tyw+ajW20HnNT8aJFNcoDRyRjzaMSX4EmpD4u3t7JwAJ3T13J1edmUhT9/+MDKEejRHIk3zufWWofq4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721774754; c=relaxed/simple;
	bh=3/HE6gi522IGJBox0iBW7xFwasObHJJ6S23ddDnQe4Y=;
	h=To:Subject:From:Message-Id:Date; b=FPGoUupM+vT+L0kh3cwqru453kst+txUjSAbkwAAbTAi7HSc6n3ACEj6IegCENKxyHeMTr2OfnfLOOc3M5311MdtP0tqSXTZ+A4dC3y24CQjR6am2+HzB0SVBzJj7EQf2ic9G+Kx0tBlDfZEZNROvpmiJOv+lSZ1+m15WYTcyAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8vAfDf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8vAfDf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D35C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721774753;
	bh=3/HE6gi522IGJBox0iBW7xFwasObHJJ6S23ddDnQe4Y=;
	h=To:Subject:From:Date:From;
	b=P8vAfDf5/vUsWN/Df1CptmxunSCrT3pj3aKAGXHs0/R+t3EFwSHCZHOypRPBu1X4Z
	 LtWhgkub2t/95Vjqywm6vCDKHuRnjbxDuP/A1lSXyeMgYwimVfPvWeQ97mXgqhbbg0
	 /6Tw/XxhYTiA3nWhuf/iuRXOaGrGC3oJluR93woS/om6N3yLS04rlMzsTCpA3ehnJ7
	 xuBOv5/1JLoIxmvTr9/PH3u3+eBi7OoRWBvmMH/DAQBDx4TTV+WGRvgfd+qE73foQW
	 XpDYdUJH9PoLqwjcT7ALxNkwwpk4cWkahvhlmC9WmTccZIS5/9BH5QgwqvYnZJybjv
	 rnGlftIIjdR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F77C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177475359.21646.1464902172583300060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de18b558310acda37650d98c55064ae28201ded76bdb67c9f33c9e35b4d7aff7
Date: Tue, 23 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721774753
