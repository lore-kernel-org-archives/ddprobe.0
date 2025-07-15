Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2644927381A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752566994; cv=none; b=bT/uiEplsN6z0ZfuvybDMuR7PQD4kz42ZW4BNGG7I0vTfvGfnM5AYpD6jvDNfVawxuHQRsd+Oo7EVIlJitpkferP4UTMZ56BtMrudCAMkxGLlm/5/tRa9m9C8FDnJ1loVrdsOTsYvN4tTzsxObAnIpYo7l5+jlwR/ITyPCJYUXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752566994; c=relaxed/simple;
	bh=m2q/V3Si2d6tQvvXnAA8WlqsXDsY8R5rugRegd1hlGc=;
	h=To:Subject:From:Message-Id:Date; b=c8HQ5NprUcBMECZsgMVkfMxAUD0DHPeOt4c4AyXS2jsk+7+dJRVprSVgNYtaoenwl0G8OKdE5igauwCa+R7Gvn3/S+nmeNMq9Ep7sVOe031R7hrfTUYvLfxWw8sI5FeP+I2pv3+slNcBq2MWueMhmhEyT2IihUv3ROsvuarUt48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FL2cMGcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FL2cMGcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752566993;
	bh=m2q/V3Si2d6tQvvXnAA8WlqsXDsY8R5rugRegd1hlGc=;
	h=To:Subject:From:Date:From;
	b=FL2cMGcN5/rVrE3zd328HwcwEB81wktShzGvzqRq/UlZHKI6NCmTEPZmLbCmpkKzm
	 N7EqJq9m4McSwguVa61OODyYrDwOnYxOUWscLpF/c5IUc1QfQ6laM4mRYv7roXnekS
	 fbg22wmw7iD6qie+NsnO1ZRCqPRRMjbWtN9aQbvEEEbX0OfPFmprZ63J2oHAK/ZRzs
	 i/28Bf4X8TrEzZPVaghUJ5wSt/g0VekQuMWekOdy2jN2AF9r5ilPnnOHOV70YwXnC0
	 pCQ6n+8wBswLZu43bCbSrbfuUYeejVQQJ9A9cxdaPuxv7rmRv9S0ZcseYc/yIw1ORO
	 KXvG9sMCyckTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94542C83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256699359.32471.17619898272243810571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36998c2b27cafa7d0317869bc3679549c2825c16009c39f416a1fd565a3b16a0
Date: Tue, 15 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752566993
