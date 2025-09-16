Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D4431E893
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758040794; cv=none; b=o+ohqKqBrnGHoo5dSzk5Y46Kxbv5VrWieU9opdnGipjg1jQ5vDedjTg8vPklXgZyiqOCM3smW45ki17LlIs4dwW7XMwEgC9pniXRwh92CO8+Srhz4g4j+GVWnpSYxOaas4DHavfLSA0LkEHLajzAg5dyO16VBMOWrY9uzC23ulo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758040794; c=relaxed/simple;
	bh=ePCus+RonuDqxfc847402aRxun2zygjqzI5G8zDeg1g=;
	h=To:Subject:From:Message-Id:Date; b=bS/t5VJApa92E/5y2zevuAlSZtH+nThxRn887vw4F7n9hR0OHG3QSxZJ2uEz0Es5iMn390DfugEir47SCuPjjIHvGMdorVB4S5ip4oENzZ67mlxZImjkBP1Axah7RhDZ4TCjjENAY0DPRkzn21L24odh4D6vOFGV2c3WsivwvGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bid8YD57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bid8YD57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF46C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758040793;
	bh=ePCus+RonuDqxfc847402aRxun2zygjqzI5G8zDeg1g=;
	h=To:Subject:From:Date:From;
	b=bid8YD57FxNsy48yquiqBfcALYghVgsvPMjc6liAoRxdCash80NK813XTrDBxJNg9
	 lWIiObpxJzMG5YKJ27KO7xNn4OcJw4e0ERgL5aCatAc1b5oFVUol5O6U6lYGy1nAtP
	 iDnpVahl4NLPwqLSTKHDjzfQyO+dyV5h2q3/7XyzqOBnSLSgsseOrBzV6Ra+0cyIXB
	 OUo0PDJWsKziCwWvMlEQtqOiEqErVewH6AV/CsodFfpjPs0V/d3qsDpqBWcNppfybq
	 YzBVIWeYQYi1FI1ODLVZA+1rZpbeuvr3YAOlNKjuSFfg3Nnp5IuKDLYI2ZYvLYwp5p
	 Nydz6QMq3LJ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A8CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804079358.28136.426619381645728884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c4d636937a0d1a50420bdd8ef0525d36e66d2846f95c4880a4412cf82e93b8
Date: Tue, 16 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758040793
