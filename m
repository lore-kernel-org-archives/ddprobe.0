Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A182BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762105793; cv=none; b=bNsgJNzMcBEttPXV7XFaeWUZgKfHVEkm3TNH+qWYborJAe1dn+oj0MjIDO/GEhxbV1gguS2BOy4M3WwF2IuIM2zxassundvMumAAgu+OnZfaou0CxRNcPlvr4Jf250+kLlem9R13LvHxzqxAl0tvlI6f6nSULADVbWbgvMz80aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762105793; c=relaxed/simple;
	bh=fLtPjvBV253lRSYBD3jAqSGvEdrMx0FW7AhvGaC51RI=;
	h=To:Subject:From:Message-Id:Date; b=MPnAEvPH4Qj5pYSZHHsa/kV8AYFp6avW7I7gWmJ1W2LMN01OQg0ofOIjncPPmISBAwdx8YRhwuxU6jRWSo1ZMY/OiqUTdOPIsTswiwb0QFj38Sgt69vqphDktGq3V9Lu8k54npJ17GlugTqPpy4fVUGa6NDMF6dPKroOmcSMlXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBbVzk6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBbVzk6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9265C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762105793;
	bh=fLtPjvBV253lRSYBD3jAqSGvEdrMx0FW7AhvGaC51RI=;
	h=To:Subject:From:Date:From;
	b=SBbVzk6z1EJef0XBS/nNt28OmpcLNPD+7Yia4cMNL+rOweVuhcsktnMHn8pGhUE0u
	 spb5fZsK0B8NW0qC/KWVmhdme45ayuqsOWG27hwOKP3IBGr74GqULzBZoi2349PRqg
	 Zgi5LQPS2utcG8iMJIKFmJKOPwdw53A4PCXjvvzKOYy9fvajvDrLaue8uHWjiQtuaN
	 M5x3q8r5fAU428Yk4POhpGAaWIySgsxOdVhcDt3T04PzMvwYm6JHO3oY6w6WBSkdF6
	 jAzg6lJztRph0lawkIEGQYzZz9g57TuouwZ7VU/mTeLEM8sxOri8Y9FwgivY5pFCWg
	 uvE1DQHix+Rcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B0BCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210579358.17325.9305321019062086954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6ca72d72c7b5a4e4adf8d6ba1feec3f390f618ec92343736df68645e2ece7c
Date: Sun, 02 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762105793
