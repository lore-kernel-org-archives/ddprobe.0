Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C747C8C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721588154; cv=none; b=J/nS8yJe4/5mnKMeUkE41uxGbYlIp2J86YNK38K0XxiHpZOk/RLsSaFJfCvcbraAhu1E3Tbgds4QR2Ly79a5zuUEinavDJI/FRpivs5sd3mVNabioragPD5NQsmWYlx5kGMMbZighUVcohveH3jWdewMVnJZ3+DkFmIKmjVT0vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721588154; c=relaxed/simple;
	bh=rFimevfqXru+YIK7KpDeA634mskZuhhbCySaQOaPYhI=;
	h=To:Subject:From:Message-Id:Date; b=Hf5PlngtMvFlPO3/LJ49CfprbIaXzODCtjlLYGDr1d6MsnvdJTijiEGY4Y53df1vw6XSTAoVBeAMbRbUP8bv99WQLZ9QBw5BPi3+oceOssU8LGecwp4Nz/MP3M5UpXxW5xyr43uDIw+i1h91pNqIUiv97Ep+zNU7v668S5o8HH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ptbr2Tc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ptbr2Tc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1262C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721588153;
	bh=rFimevfqXru+YIK7KpDeA634mskZuhhbCySaQOaPYhI=;
	h=To:Subject:From:Date:From;
	b=Ptbr2Tc/UL4ywD7BDAyZoirj/r1eT/rW7zdpmgN7vkE7W9YUjz3KQY42/0L4eZwqq
	 xve3BrhHPyWiWNjkJGenbNFyeoR5JVBOnh44U9R9+1JHzVPl64hYf50c0a/iciMtCX
	 2vKKzc5mdrERRZSjwD4O4VF/YlOK3gyZa+W2jyjMOit4hVA3c7szmkRvVpVB8IJo5T
	 cOEAvCBL7Ch/twO/rEkACQFGTFiR52EqYAg/LjIlHqp+Wpb3WmtkHo1kB/a2JI6wcw
	 4/2381sXveZqgsj9qPX4TxOcAzJJSum9CjGWHSM1fLTWuY6nqAQ9aHV+vYt+J6G2Fp
	 reNzfIiZbhp7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E56C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158815358.25237.15111086641363106255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62906c40a46246dbf10b7bcb491c548fdbaeed76c463100fe96db14df8dd36f
Date: Sun, 21 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721588153
