Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210EA18E25
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756660795; cv=none; b=rP3A+2//80GkEPgA/emWrxTkXOJmPJl4DGaGCYYSdmzfQU9mQz9NUJQcWdT5S86rIp0sI+ekBRdXtSiwx5MNk18+sClJVbplBW0kbPuJMj7Lrnj3QPhJauq3O4fNH8MJal/f4mchC1VaMuwzYRsfDu2mpJA2i0Fy3B4SuB1Z1nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756660795; c=relaxed/simple;
	bh=0+BGu/mVKDxAovDT+zc8DqKPlwCvBxtCrKTUZ3cdvKI=;
	h=To:Subject:From:Message-Id:Date; b=lKXW4DVikmGCIWmxmGJ8igPmlR1AIV99hIsb1HpQPwWLUTXk+oPqIoiU621O0W9mcSGDDKdI48ev7FbmGsGSujIJuS2t/R7Tb+8GWLKiRs71HRcSY3W91TR1s17viMN9n9myNsubPNy/gBLnWf957pXTgN8MvAVpMlsYf8HzN40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sub2OAMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sub2OAMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A044DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756660793;
	bh=0+BGu/mVKDxAovDT+zc8DqKPlwCvBxtCrKTUZ3cdvKI=;
	h=To:Subject:From:Date:From;
	b=Sub2OAMq7CgA2S4JOupAXPxcOczVNbg7RfqiKSIUbEX+rdf2/4wJdMuMWvDmIsbga
	 TPzjMmdRTwexnzbUiE0Fsol10YmNX31cLq5p7T9JmXU4tluVKRs1/nz3CCHn4PSZLs
	 w/nLV11mjBBnYyKKQT8d7oRe0oiEPVfE5oF97+dc9nwh8fmLfewr2q74aNiXdt8Nhv
	 UqOQ2pbv0wvk2CwBMd6TWUlCOHcud/U/IRqzF2WLlFtp5JEZacHMm7WdUL+A7Fl3jV
	 H7Hq265IjTUOkSF/j/94KcCJDoAWrinfJzepJzaEcQK+NUc3yf34xYvdZfiYPOnaug
	 801iOAdCP8k/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2BCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666079357.22637.11745087195633217871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7042b98240176fe67693d71425d9b732bb652bd338c8fa583399ee00594ee33e
Date: Sun, 31 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756660793
