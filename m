Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274B821D3E4
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773624894; cv=none; b=pxIg+37uODuhmZuhsxLVOaMkvF4Mss+gZmON3hO/3V+xFuWatWQGnvustDBdxR2lg0ryD1xTHzqaXw7rPpPvZol+dCiH7v24uR9hMS24c9qIM4e2fxm2a8mXGpE78ph9SMvJdLvmMCdFcX/XzC+PC/ZE3KNEwho3gZVp2A4buoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773624894; c=relaxed/simple;
	bh=/Opp8GiIj3eUrMrcWa3IA1/2LztajfZLUottYJ05T3c=;
	h=To:Subject:From:Message-Id:Date; b=IMTRgYyKEMZ1Omw7udkgSx/p8CFU7SVKCZc4xB8QbS/QtE4FSmaAu5pRlhXDr5Z1dRMtXv+VHdCQlh4EiDMgghgDCuQLeuUlY7MlUMD7qFcCQkbXg4gvuXiHD92AzbUoI3OFQj/kp8h85lTiK5x9G97DPne78q9HiHHCYAp9FIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snNVrSMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snNVrSMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBBDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773624893;
	bh=/Opp8GiIj3eUrMrcWa3IA1/2LztajfZLUottYJ05T3c=;
	h=To:Subject:From:Date:From;
	b=snNVrSMA55wGeHQ97FPVamzfZWxrbMZrqVTNCuHD5J0DCrcNcUAXCJfeFnUXJQJNM
	 anuBoJkduQyeehXapI/0OUn55iKElcLkiNAGqABG2YO+3PgWHwAqmA6rXcIlgm8F5s
	 Flw1S7f6IsWR6U/waxw11Hoz9nGwxiyIVg8daiNPDnjUtoQ6S5w/4giMoEzyOWIdEM
	 FeWxgujlGqVihVPEthjTEas4bjgsF1BQ53m11qEfZ7ujU+HqQTNWAEpTTBKrf07EJK
	 L+pLlKum60bDRrO0KcwXltNoD22wEQC32yKRrI/Ez08Ua39qw5FNGcMTgXM+BQXZqt
	 SiunS14H7Or0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACF6F30296
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362489362.17908.14011150808386803417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f0b89c5ee66af30a3e282f5a0c4417cdd5f540ab873b39df0bacb0e524b100
Date: Mon, 16 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773624893
