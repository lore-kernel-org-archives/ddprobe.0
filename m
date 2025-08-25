Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C27274FFC
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756142394; cv=none; b=jEfUl4THRknEPoAwVNGqu/EqgP0TapisnYODmDVEGSqQFgjBuUOFpDfQX4Ny1UUOThrjKpjcM4Sb6i08yXEfwb1UTM+GVtBPqcdZcE+eXk40pBNZUpUr5Ti2+LfOd6o93pAObgPp9qvXhh14t08mKQL68/3TtxUxFoaj2nB0Z8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756142394; c=relaxed/simple;
	bh=3SQyVnIkiBKO0J2kknCnrnNIXJXCMN3w+NmefOFKXyk=;
	h=To:Subject:From:Message-Id:Date; b=Z0qt04xX46U/3SkwznGa656uaj81dfNeu5tIokF50qLinrFqp4UNIg2D41eClpp1cP/dqCJSXT9aDh97AZ/+zCjPM6BDN8zRGTgot4O15j+iqApY1n37kSnT9LaejJEb/9pxs+99sq7bCrEsesGi7eF+v1xA3ETDT64407B+W9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ud+KdSYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ud+KdSYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D35AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756142393;
	bh=3SQyVnIkiBKO0J2kknCnrnNIXJXCMN3w+NmefOFKXyk=;
	h=To:Subject:From:Date:From;
	b=ud+KdSYa2aYrLWQ2po5zZTmnLDwzsQ/Fwy3fn9ALgt1G9yV7/COxCfwSNQ0EfWSZZ
	 Qpydb9+UuNMakP6Ca21SeeA75gkKOUbJBkeG9l8B3ckBhp5IWpZKA7bGRuX96ZKquv
	 OPxtEOfl6YOvn2xdfqaw3isFQLqsXFeJ0Ya313nevpIEDtqZS6o15EsVJEqH+Ryqvs
	 nOpYQ4Uje4MEJYC+abCHiWG5uZdrS1GoorRNdYLbdcbt2xTcjUudm0zc59YaBTqd+D
	 6ZnftF+yK3F7g4nqKA2pqbLL/72zclVH3IvmFNAT3Hnhst6YSG9C5Ndv/zaVZ2Fs3Q
	 XEY4z6XrF5gsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9FCA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614239357.18816.15080759402162936530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0819ba89883da09b3eaa10249bcb48b8fed5fb98cbdc58ddfd183b93a8760d
Date: Mon, 25 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756142393
