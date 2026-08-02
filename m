Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC871DE4FB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785634234; cv=none; b=VuQLfob8C/LWmdbthi44U9+xJXe4WlOtBKhEur9HlgR3ju8ViwpN3bheDBwAXIxczBr7Y+LnLwTk4nIQGaZE/USs3bGxcM1UnOphSu1GxytVmR/uuwK1oONGLIagk2dB4uOOHyruXbnUp70XCKWp/l16v2jqcNFpJ0J2uQjxTPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785634234; c=relaxed/simple;
	bh=UQO+7KaDYtighWVxKGY3JjaYMPb0dK6d/TgFNDjwGes=;
	h=To:Subject:From:Message-Id:Date; b=PVUk93jyc0bJdi3G8pXUWg53wEm2I6agqwf5Amv6nkoWSzr5iqPfnnhGhBaLSEnnybAiVyke8Y/Fyi7mCRszKvQddL+kacwu3dkufqg+PzQBDV/wCaLQMbb1aVjygVJWHo5/P9qBaWBwlm2EGHflkO4vIEXIaanwBHDtehhO20g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkz/1m6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkz/1m6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB45C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785634233;
	bh=UQO+7KaDYtighWVxKGY3JjaYMPb0dK6d/TgFNDjwGes=;
	h=To:Subject:From:Date:From;
	b=qkz/1m6kuCxa/RJhIsPjuXYiJnxQkXiBWaRzWQilnY8wgsW5t+mHpZ4FdeqIIn0SU
	 CzmUIyA9lCH1JOwz8lrToTiQFrtMPELkX0oaw5AFdbDIPc8pahMKXdWpagLzXJBq56
	 Vb4oylmJAQ7l2dPU8AbOQ6LaBXTghfweNrHSr1ewk8iGx6/TqzZTNK9L9+I0GmIJou
	 wJgmqZpKTahSh1q9a/tgePem3h1xIHFvMujNdugOEoYO5pouGDO6eIUMb1Ivg2Dhzn
	 TTVdtG3xkHGIqT3OBmwdnAuFNbntQN+agiaW5vmif2Ro0oFuswWdKZnanvaDvVKDC0
	 F1ol0DOloEYEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9204C5516F
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563423368.26010.7596661538794495358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb2e8e0ee668d9c20a17946c338811db9c9a5cdf57ec6a0b32e61925e1ee38a
Date: Sun, 02 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785634233
