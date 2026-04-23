Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278A83E3C5D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776937054; cv=none; b=e0DJsaj96n+913vHVWGOdArZnr+maUNKjmuLmRF6bi8dOQGXcjLi1kIZU7vlWXHF87PesYcszzYpVbFUnGQA5IyhUrqckmAzbk+TsOy87HM0ZfBO5hrnk2TufAYmbeRFbN5Z1QgTRIh9wZ0f+roRR0eBd5bCiiau2mgVuTV9qK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776937054; c=relaxed/simple;
	bh=3q/KM6RocVzEpb98j72g5Nz+Wk4E3QBO82nkOQlAXYs=;
	h=To:Subject:From:Message-Id:Date; b=GYEcqxO8vceq9pBrvwXvPsgGZTZ7A1mKmModCGZTvUwBRB5w988ElE6S0Bjcbjpokh7lTbbdfCb9u8qXRlPWHX3uHiO6tFQF/XUUvbuckO2ShW/vkgx5O9OkkEkivPk6Rq79FwCm3U4Iv/TaLIVlvgxSvQytlA35QLyRybvUxx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haCxWxcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haCxWxcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA95C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776937053;
	bh=3q/KM6RocVzEpb98j72g5Nz+Wk4E3QBO82nkOQlAXYs=;
	h=To:Subject:From:Date:From;
	b=haCxWxcXWHzKNdW0WjYISY9vv7UFdGUpq+O2aoqbKjA3lXGSSbNvoHQFhJhmBaXRQ
	 z1c9QAEaA//3e9/8/H2fsHh89f6XB2tF1Hy1fcU0KtZ6pO2NOktM8+Njfn9VlyDRAJ
	 1NllGvMITnJYSWa4gsCdD4OTYYo0J67U8mEVrJpIHEZewY790mDniq28EWQaAnWubE
	 FbOm5dovFMakjs2DrSNCeqRwY80UI99kpm+EwYHdyjbiSoQb6ZbbDTgHfP9XBdaWN0
	 4+ymQA1s20T1P6PCcWuTGBxnwl94mz9lzk+kuh9ExCi3cjt485/SUTDWEXiUDmCdhE
	 OqETPZZnA0MpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC8F99360
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693705368.32645.15000954857391812245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c78d62d09039b49d7026a0604a1e4135f4610cd16aa7dc97bee62cfc933b29
Date: Thu, 23 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776937053
