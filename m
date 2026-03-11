Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529C8372EDF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773213894; cv=none; b=TCrnf9vZob1sdxd0NYKC5v2qRMo3cxAcOyyan8AANL8VxP+iAyRt4FQ5XNMAHnMinpqvHBSIDwFQPeTY4Q4GTDGcHRjJ4UiVfXk/CIiyrNGZszpiA/Y7gN4lllKKzi8rtAZR+N+zYU+g2/BWhziQPKW+i9KMDnujoNb4yoUBNak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773213894; c=relaxed/simple;
	bh=5aLyjj5zEOps249quid9ueupfvtqFLEsWuY6QwTH3jk=;
	h=To:Subject:From:Message-Id:Date; b=UTYAEmUaLHnQuMC8v8E8gWWwBIp9e/wl4P8Yu9U6dh+XjcsBJchjrHAovUO9fSrCGtCucoeHIdiFkHgy/GiIqY1oNxSKR2dzaM7F5++5r7se0s7MrNxYWkhyp1td8M/E9yMKtZmFR5ShpI2Vm7dDftsd2gJ+hB73ti6gCnUzpjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzhXLSSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzhXLSSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69EDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773213893;
	bh=5aLyjj5zEOps249quid9ueupfvtqFLEsWuY6QwTH3jk=;
	h=To:Subject:From:Date:From;
	b=AzhXLSSqGJjvXJcIwXGx8evWvvid/7i/+D2VtuF05fIggXLlGSgCoTG/Fx/hg8d92
	 9DasMsDAQmKOzQHDkGNOivLsal4RkzqvK4tfQv09I3e38pGMxdvZAvA7L5QvBNu6jE
	 a2SmYTTFh/kG/WVLHh6YMlLR245uh9+gnLr26PnPuTvOJNOcgbcwGyGcx2pAlwd+8F
	 /0fS7AyDAkN8FJszAfnrX7Q4/S7PA9bN0Ou0rlFuRTfQFN0vLcjuRez9qV8MB3tnGy
	 RgDzlPhUt7g8xyKbp8rNXxAAE+RwA8euArIhX5fZFFyDwMonjsSaQDM6UFBeTTdGRy
	 6sXaf+ibaXfPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D7FD0644
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321389357.6891.6174055513201359595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263674106d580cb2e6af8e22b116975dc702da916c4aaaa00af21e8b06b617d2
Date: Wed, 11 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773213893
