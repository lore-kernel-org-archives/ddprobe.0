Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B563CA6B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716924263; cv=none; b=JLVZhENCSFzYbZyr5znu7Su533OLyHSMpGy1kt08MZoN/u0ij9avoq683JtMz/d2dY8CwcXnA9AbFnt2LfIS2fD8W6fhxPnw/BYJhweqxkaHHMZylnWSgwKrPwom7+GVG77HhH4lGWH7h9f9XPSW8H7MAzKRWbFRDpkL/1SrHIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716924263; c=relaxed/simple;
	bh=y7e55osrm3vT94/x1qyBfTP0Nim6qWPmDSHsHTRvOXw=;
	h=To:Subject:From:Message-Id:Date; b=D7QtF2psBp/HN4oRbfuktTbEJ4tjRJzu98rEigX618F3bMBqZl4Be8QyeHkrpoCT0igu0mZdV+TjeL1q/NQwIRss6j2EXtLnk14ChdAH/KzVWM15QHEoYNdVxF6fQkpuJdDVlRTp/vjcqipY6gnP1X8oelld3L/uzfZ7TVZUsDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8591wBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8591wBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AB2C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716924262;
	bh=y7e55osrm3vT94/x1qyBfTP0Nim6qWPmDSHsHTRvOXw=;
	h=To:Subject:From:Date:From;
	b=W8591wBDUszgP/qksBFa+ia5twHlSf1o9HIirQhzv7E1YmIiqxjoc9c2wc31QgLEd
	 mMQ/NgqtirFwcE1xbnxxCr1X76RxsPo+rSWLcACoowJ6GdxK5D9lJ8q4/dGxqd/9x3
	 KEYKu8Ty62Xp4y38Lit23RZGUaV+5UoW83pmt//NgV9b4Qon+XhVGfZQ703hDyo04m
	 KAGe5OT2NeEhK1zjxZ7NQSbUk8Iozph341p0akwbGlDN5SmjKT6cU7RCj89zddkfTc
	 lFUEBBETW7/F6GHUAV9vPWn7ErKMfUj+jXq2GQHVkPWNbjCl6ZN3hIDUNn9EnXdaK5
	 gueuVAECQRjmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ADBC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692426276.18710.10174968665102067170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50ae1df1f9eedd9cb918cba2fab22d349c21ac0920a59cd005bf9aff72a51b3
Date: Tue, 28 May 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716924262
