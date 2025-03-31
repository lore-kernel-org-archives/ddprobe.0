Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438DC26AE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743443994; cv=none; b=Wbc3fQzRDzYfjnlcyQx+fdX/vPUbci+JMcVhQzTW5u2xeEnfuSW9gHaL/tbKq/HLCAcn1QsjPMAr48fPi40WLeCL/D0eL0MJlX5XK4MljXr6qs8XBZGij3juEvf4FbkZ3GpiFGUepa/ejho7HDXuej0LUG2uiIaWrRmVl2zKOPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743443994; c=relaxed/simple;
	bh=4Euxqf7tJsEsjQ0FO1dZlUIEgePitkDPdQt5yJNKdLw=;
	h=To:Subject:From:Message-Id:Date; b=tfAIbrQsW0o1v0bhQIC3ZmHKfBKmTax5gp7gwMz+XT4iqwUNg+fYHHn6Ac5oHamIENsevEPLtKV5yapxZx40Kjyk6dEga14w/6ZgQxQhgXJ5PQwQE3gs3ClxK6S9oiF8viKEH3/cEi3rO3TW8WbZGeZKGGpKP2iQT/A9yTDs3TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjNBg0NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjNBg0NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41B3C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743443993;
	bh=4Euxqf7tJsEsjQ0FO1dZlUIEgePitkDPdQt5yJNKdLw=;
	h=To:Subject:From:Date:From;
	b=kjNBg0NVRIk/y8tNFm4fMICnmKGsqRONHcPg5jRUCSu0UciTh+a7U2/G43eRh8fhW
	 9sZD+eZsgAwzkpKP+a7w5kITkFCUE2sCwKqimhJM9jBSquFr2MrWfEN0k48Q8aOvxh
	 gwv2cnCsJOa0TwAZmt0atqdt4FLGj05ukldRZVsak3Iscopm7ThnCNME0pRUh2aNgB
	 twwQSxJ0RBjap8xwLq6Ri6OfTsNyOBnquvrsxkWU0OazT6eg/PnNBvqhNIt7VdepUH
	 Ycl+TFQNa1ttQFdwWblihezwHSd/mIZ/uhH703naPs5yfz0rRn2dvCgcKyOLNQRh0K
	 cu12RK7DPh0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D1C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344399358.7259.574119862206483075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc506133a617d114a7174204c5f31f2998f4e56fe6ca971c5e9e8948d5e2825
Date: Mon, 31 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743443993
