Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A333E4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748086795; cv=none; b=qSdsrlh4Cmj9vBPhv271dSWZldc67LdxNN8e1ifvKWSKStockhWRkJ+y0PAV4epiX7l6OsKDh/CeiAi20D7PjSHaKN/B5+hjC1xyElXx0rM8KDzt8lLggoW12mr8LbB+YimRN6L5IQbgAJ3vO7WQiKDo++IpaCye1ehaiHubUdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748086795; c=relaxed/simple;
	bh=cH2mPq4lgqIAT5kfhQ49eBKMtETqt+7M2nJtVAv26f4=;
	h=To:Subject:From:Message-Id:Date; b=Av4wVqBDeacaLtHz6CFlErMeRqevybaO+fOdrS63Fp4p5iHrC0H2j+pINSSbnC23wZOwnT9ApeNNAkaosuusuyChcGxi6TosMFHwpsWiIAUr4bG9xIY37V9by574LvZza7nRawirlECHyOIu56rHyHgU3Dzl/dmEgiLrD/9xhKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Av5ms4aL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Av5ms4aL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72CBC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748086793;
	bh=cH2mPq4lgqIAT5kfhQ49eBKMtETqt+7M2nJtVAv26f4=;
	h=To:Subject:From:Date:From;
	b=Av5ms4aL1NqaB+iZhCKiHM2ZEF3tvCoYP98k1pAMcPHRzV/tOuGFWwD17X9G0Zcaq
	 wKeqz/Zf3wIYinJ855/P+NEcWli4M6xBNaHq6GsMrESCeksjCFYET7Xj1A6zy10LJw
	 ZV1JRfDEucrbwdc7kEPci2CZSX6kPDonSRpFxAE0f6MxcHM/auy8Smeo+pc/fc8daw
	 dkExmj8btV6ty52muF0zukDGF48zjklw1DRvH8ogtEi8Q5915Neu1QO83vVXkGhYXx
	 tru+bm+Or8Sw0sFpVVK9CGjJ5m7n7p3taGLLwxBx4zxTGma7JJZ938370C41aDqZou
	 ywr7KfKaLtD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2DC54EDA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174808679358.16520.10407906465371639637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf974b563064217df97a517e9c06c2aa1e0e124ea12948d32aa568ab00a6896
Date: Sat, 24 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748086793
