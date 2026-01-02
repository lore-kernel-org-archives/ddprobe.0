Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8108186284
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767353633; cv=none; b=LDUSocuBpp7qdCsuzyBj8ZJCKcumt7CeQB9cY/URc/PbgbcOul71Y90Zh6QGVKUPzqd7CXfi+ba4wKcCF8gdlrUzQFItrt6tc3hnOhP2wHQMuBKmxHa1QTWua+c5XBLu7x0s8RV+aG5zMGQDJzGTSDDDAxHTCKRmfSGUKDjD1MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767353633; c=relaxed/simple;
	bh=pANjBZHCxg8r1yONEb7/KWZDTTiK2DjiN8Dsa3Xl2fk=;
	h=To:Subject:From:Message-Id:Date; b=jdgKeCMwIbn3pygyT4ULLv1rqSt603rWvAocuWO/pEENmPizwv8d3yz+sAefLF4zVxpHSqIqoJg/3fYJOs/nv6Iq3SfCp3kJ+pzH2u4ANSRJ/XLS/M+kenDDfSUIQFmItaP2hX6RdN2SEKB8OmlWUkhzghCxTQCX+2vMPS3LqtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCy/hPoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCy/hPoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FE2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767353633;
	bh=pANjBZHCxg8r1yONEb7/KWZDTTiK2DjiN8Dsa3Xl2fk=;
	h=To:Subject:From:Date:From;
	b=dCy/hPoRgA1oA2DcxQg/DkyvZ7HlOpmCDcveoIfUbZnaG325XxlafgPIIQNaWVmCC
	 c45LfQBccPEoSvarz+dNERqnY87a/H5RmVWXu9Vz43PqvhAQcJ6oa0TO/DA6KRzeF/
	 bsioQEDt/Zg9y50Lb/Gb+9UqLm8DHVLdIHwiOEGFhFrmKQur5ih3h6FrrApjjTLuvi
	 7cw5Oq1s2p2S/XZX5Wh6sel8hmw+WE98IwJvIWFcBRZeRgHYYwR9oDMxGVCvZGbNpd
	 Nz59R1b0qyNKAfWEZE8ej2SkdLKWHGFyMuzvNJrUiHunT7bb2aUnslMPLXZ8bsip7p
	 42oXKQKwM+Gew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C8FEEE25C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735363360.27928.9923592874792913574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760d43d1ede96f15e4be7d5b5a91fa956e19dfe3244c5b93c4ea00366d861ed0
Date: Fri, 02 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767353633
