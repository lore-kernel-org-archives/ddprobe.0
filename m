Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1163135975
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755740994; cv=none; b=Iz0NS+vGaRC+n+TUqL9kmG60JW0Sex1QO30z9yVn+omLZMISUywKPOFurdN0ewXxDDMmSIcczflGidx+8XJF9TOQi+Rzr4JmE3illb/2UQqczxq7GLnRy2T3kx0cNxA468dObQcgrqTm+sfsZSP18r2CienaSAzUvsPU8c88Rfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755740994; c=relaxed/simple;
	bh=KtUGVnn7hvpU66HfqHyXYarfcUSfFlOFSY3FkwI9LIw=;
	h=To:Subject:From:Message-Id:Date; b=a4ysQXffbBuPu/tDIiOvah7oUm/+eEFMlIQYyjel9bZ6Tfhm5PHkQ6fhblClyHWnGShT2aFlf4PWnR+DwuHLuZdbZbFhaThDV89Wwaqa/ZsHiDEUH7DQWRfDd5sdETLyMTv1R06RcaWtBIO/QsOn5wMvZevB6BwNTc4kQro/bJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0buK0CM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0buK0CM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755740993;
	bh=KtUGVnn7hvpU66HfqHyXYarfcUSfFlOFSY3FkwI9LIw=;
	h=To:Subject:From:Date:From;
	b=P0buK0CMovugYB+T4XaGU+XZ3OROKOcE9tpVG44ze3xqxLrI38RrOqaE1izIBz/Wz
	 WOsrs8z7AiyJ0ml+K5VpFtnG9owIYnBp6z5jU/lOF7bLchuZ9DbcOK8JJc/P5woimC
	 3qLZoecY8ncNGlvFnJa5MrfxirEJFmrXceUXKWw5Vz/EBPewlS4o7QoCQKPVG2/sT7
	 cPLWuwYYrlbTbpp6tligkFKwXpefPzIpRCwUC/4MN9MlhsokvZk7IvqCTlUO7gmD6r
	 BZMjtzKYgBYOKvKqVYRGmdt8iIiVlZzDlm+ZFcVzk7cDHuK8yQcVuORSgbTwM+DvlG
	 4771VBZAYH0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9BCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574099357.29023.12685562447564736827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce4cd9acfff5b53954d4aa83f1f5ffc78f6061268b772d94b749c3d97d6924a
Date: Thu, 21 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755740993
