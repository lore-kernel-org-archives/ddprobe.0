Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16343286425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777133254; cv=none; b=alrK5WmldBWt0FuRynA4rdVYXyd/mIktZIzk8nlWJHBoFGUCodsUXJsa5mRGeTVO8HLbutScbSMgz76EZe2ypeYSpoRNCCNha/yBpYksoWmPQxosGRIAfQss6Pf6XwwvH9cENvQiVwKO/Wm5WH6haZbw1J4FcW3eR9G4jcy0oQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777133254; c=relaxed/simple;
	bh=UnrXi7K69UBTGbgln4D/osz5ATfghhsS09rez0MT124=;
	h=To:Subject:From:Message-Id:Date; b=Maj7AE8DB0iFGdXEygjzYDJ9uRc6IxnqZ3Y33sP4ySFDiLe7euldBbaY4CtEAN6BRl+NDPz9cjkAbXeF+wWLwahBo9a+zkddaTV7bNcOeFRTvCvTLdEJhnfnR5RgWNeDqjMWLdcG0CcDV4f+BUQXJkQI9r7TVoVQw0dGmoRlSq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyW/e0F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyW/e0F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6CBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777133253;
	bh=UnrXi7K69UBTGbgln4D/osz5ATfghhsS09rez0MT124=;
	h=To:Subject:From:Date:From;
	b=HyW/e0F0TYkFDwuzHKWa/NGH4PItiaM1jZvBbAW0iKh9dwpxEbwkxWgKCCaDZ7i0d
	 iWh11ynaEw7h9XRJ4qKh4+p0xpBdhnXXE3YBZiQLONGIIgqJuf0Drumg0f4SxGaDx5
	 pedQN8OC3oOHQG58JY/lYcLKSTBoJLRDbNuidpMc5KHBmftoojbWD8AIhFttcxfIuT
	 GFFFMGK5arAEalwEIyUj1PgpVaQbqu6eoIC+6SRqKdUQE5zAoUGRuNWr20HuyDQk8b
	 gIbajs/vG56FWz03vtr3i6vZ9NNMeTZN6TeBcx0W91xa/LQ8xchLxpPmL3gHC/Yjts
	 RkIjQOwpO33ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982EFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713325368.29445.972078598280784353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc774a5f1f8562d097e5af9d74da9b0713ffdff066385ee4a2b9abcf6a837f9
Date: Sat, 25 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777133253
