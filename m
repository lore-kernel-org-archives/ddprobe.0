Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2D41C07D9
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741893534; cv=none; b=lMPbTseU4zIu53g5pK8AWegcYDqBiHhxjt0Mm0VUjybp4hZFM6iuHmQm0NW7cfA4MDtZlPwFNzZKHYvkxPYOZHMVGrbJzaM4WgLEEw80uCFCMpktKRxNMzqiUNPD0er2Jty/GGVnpYZApURmxQW4uUjIR9J28We4dSPvHb4QVq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741893534; c=relaxed/simple;
	bh=lAogCGbrsjJZxz4rqbpB0JT6nNAyxiYey1Lw1LETIN0=;
	h=To:Subject:From:Message-Id:Date; b=WVAISjDHQw7Ap4+1K4xftx25by/EIAqXY/kKM3EV+XTlRXN60XwAW4FzgyTkEFjaCRN/pU4RQdQRLPKNgvvcvHaDGvUR7zJIBu58jrpQBHXTf3jCjTJ+rv7kGA823Jfknv3rhgjmduxJMj7JAa7i0ARTVX/+VH569TfzWCFRa1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVtDc7cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVtDc7cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE711C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741893533;
	bh=lAogCGbrsjJZxz4rqbpB0JT6nNAyxiYey1Lw1LETIN0=;
	h=To:Subject:From:Date:From;
	b=KVtDc7cwvv+Y/IY7XOLs/KccfGhDtGphKU44kNYCSFnpIjh1lFTtGAZOHh//Gc2vY
	 aj+dRBru0gt7CYXAUpdY0N2Grg3LcisXRs/fiWSc4GQcA01pRc6RT5aBhH2dufNJ/9
	 6p/4xwDu0qhLVa4nkR9dM/axfl7gmARqSjv4ty2ivVUVxVHC2u9GJbHa/eQkiSo72E
	 trHTrUotH+wMK5zYvQL/TmdLv/I8Cvms8qTwVgjU6iu/ZRCbWBe4lvZmaPSHTTAaOM
	 aIwBRkGxr6HlR6NpJp4qG6iv+N5LUFsRcyUME9Ds/m1REzfpd1O1Z7OQqYm70OTQFG
	 ebsqrW9FWS6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B30C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189353360.12753.16016943508331781748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ed9acee9717d8f5008983e24f7f2ba99d11abc53fb3df9bd57c9e6e4249653
Date: Thu, 13 Mar 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741893533
