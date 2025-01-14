Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143763DABE8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736848554; cv=none; b=LZ7xUT3Q1qHTLyBKzQY1MesuLL6A+jvw7danOm+uMQHW3v7VoDh76lSqSY1ROrpvH2Ur0FmUq/1DKmvcvoW2C53utCyvsT4nrpYUj8F3YAwyzC6MdhT1kZHp3AshLlgunIDsANc3/Co8edl2Deq72n7XiD7f2ZeZg3D5v+eFfjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736848554; c=relaxed/simple;
	bh=76QMosAk3A1wMD5jBeWaysnN/+a3GAnTKX5oUoPPzsA=;
	h=To:Subject:From:Message-Id:Date; b=Fq5jceldNApClZW/rVJyeqkkUea0G0GVO3m+txFEEA2IiXoub1Q822aje4m/vW+yDtyKaL6tXFrPj+uUovJjheIjyDQQCkWJGL+gqVVl6NjYhNXsSoVnMLfDg3hZoqsBxl0UF4r8leLhBTJz1GZRxk/9XNOxmsSVgR4/dRLyiBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHYMqFEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHYMqFEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C8C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736848553;
	bh=76QMosAk3A1wMD5jBeWaysnN/+a3GAnTKX5oUoPPzsA=;
	h=To:Subject:From:Date:From;
	b=gHYMqFECyWdMyECJlQWpSaIewVpzYB6jcKOW2qsSTaV4GHb8JNlwOizkm1k2RhDtO
	 /BejUlRtKM780CiKDBzikOuFW5STgLbNiNlYyzUujalaOcdiaWn+v9aLT4iNX3V3s1
	 xkxIxFZuEN58Tvz+rde8/l7manSgncbxAe295/FkiV+aXnLdAne02IQ7eKVTQhw4yp
	 Ra/l4r9coXV+ORk2fWbwam/pYPtj1nYvqdYL8FyJp009DXL8Nw38/Hk5dYmYYe3Dgc
	 ed0G6JdKRh/96ajEkXbUAGML4qpEeoJg/a703HIpi4eVecAzu2i2sviKc2leBpYsa+
	 RPvhoCNwBnxWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7DC02184
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684855358.31471.12966413889094648387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ba7cde90b919fe363e97fbfa18b27c39fa9d0cecc61c95e3e33d0431c5c2f7
Date: Tue, 14 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736848553
