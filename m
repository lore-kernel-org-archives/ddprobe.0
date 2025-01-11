Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AA31114
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736554554; cv=none; b=Te255Gf6NAdNuw0YYbfoT9pITImU6JmIKFeXztfn8v5BRa+IsLtgTg7e9ZDaJmkY9kIEzQSSXgmwmA7KU12h9SCVTurCW3KaPTw6U14mmzBY4OpkXnATy1elyGktjzrzFwb2I7TxZtny4pHv1P6bVBBlKtEMkZ0Je3gouZRRA4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736554554; c=relaxed/simple;
	bh=kJIm3ZLrZTgJXy5LXsnMuRQNVs7xwwzuSVd5osO1b+c=;
	h=To:Subject:From:Message-Id:Date; b=ux4StYAa+J+1G9LYS8hGd5S/jFyCvlFZWz03+9g9bDt0oUA9dVFtMWcg35r1t3Dr+OHWUCuQONoGbfVlkmCWumvb1loWRgQEMnWF2O6hbhLU+uhAVtqObxLnLj2dA8NhjxFrOlExmRVnjig672/Da2O27TTHcLKe/qjugZttmp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYtgwqx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYtgwqx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D5EC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736554553;
	bh=kJIm3ZLrZTgJXy5LXsnMuRQNVs7xwwzuSVd5osO1b+c=;
	h=To:Subject:From:Date:From;
	b=SYtgwqx7Z/U2BiFe0nAFrOotD88a/OEdSg7bYs3WZ3tFdJw7VpXb++oWP4aCzwJyW
	 oIxVpgh394DBuF84amsRqBXfDTdJpQYbYe4T9m1JRdycpz9SVwSSbr7Nbw4JeAmSKO
	 SCiD+c/fJ08lifHa5/WnNS++v3RqPUL9YoKFv34mojL7Lm3E/0sKjoEn/lbj4AkaGm
	 4BhKkCU804k+A4S14owiguOeCXpsBKGoO3e5801NIDVpcyANI19Jy4snnoZtRm5Jaq
	 tdiFy47PgmFCh90/NNnponbe//6jd7cam0sp/7swDNJKlErITwyJ6KchUCOgcOEByp
	 cGAhzJq/zlKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB1E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655455358.32670.7143233667936620550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5e7cc98b47aa5417ec3efc3f4e894dd2d0f548f7c416575b6e9918b1fc2512
Date: Sat, 11 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736554553
