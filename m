Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA240277008
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750183193; cv=none; b=ljGhcOkjUu9JwAjDWab+VXx904jtniEeIncV9bauozlkUUoC07C51T4kploeaGNFVnfcmP9iV/og+LulOmatwoLywEk8DEfXYROjgsjF6/vHpWCtQ57aDPDA6NbONZEwLWETh0YxssE1SL2d+lZn/SvzVgdELwjKyfZMjTKF528=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750183193; c=relaxed/simple;
	bh=5mtRjFPVA2ArF8JQ3jGltADkA0TOAVQaA3YuUD67xQw=;
	h=To:Subject:From:Message-Id:Date; b=ZCtS3h8T36UXF0wiyGVyhcLEoEIn5cNLCcK6JL8uRovg32DiUkj6a8XbDYf6SKgI02xIXSrA/mMd8faMh0hFu0JDPUIikrIrP3BIYx7lYfRCwUa8B2wz++7kl03cEOhBxqfn2hAmxNAL+7CRDYvGga+EGRYpTUyMAV9fhj+osIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggEYcWEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggEYcWEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750183193;
	bh=5mtRjFPVA2ArF8JQ3jGltADkA0TOAVQaA3YuUD67xQw=;
	h=To:Subject:From:Date:From;
	b=ggEYcWEQCZsAo2fp20PS3emGq6d89cbwbWYbHdkD89ii/70fNiV/WNaZXfdsIr0+a
	 x7uUJi5aW3mY+3O2X7pNcRxu5Yycbsavw9Wlzbp9CLaHkgtZxppQCea1lFjdIN7REZ
	 hkdsEFu0eNO9F3adFYrh98N84nhWwnTQL4Y9ACgqB2ktl3bGIpteZ1qaqMzuFZzd+3
	 oC30XSc+Iq+6G4cLQO0cP5nsDI5UlT+pDzL88LBfyPbd6FySDyMT06n/Cem1MVKX16
	 eTz/kMR7610sjxjvny9NmGObvaB/ep+o18HaAH7VTv4dG+N757BVa8ufIOCLLfRRDH
	 yQHceo6WHSZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFBC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018319357.29880.6164705785911125843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872281240b2d4e9abcf737dd0584e546a399ae6d2f4d3bcbbb17cc043f5994b3
Date: Tue, 17 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750183193
