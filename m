Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C15225A29
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763316714; cv=none; b=n28wRs0bZnUWSs+3gEf9aIeWSw8YYXPAe0rODOZCfcBweBgvfDDcwEZouqQ5DoZAtua74P+vrSI5O4l+n3xo3OarqINEH9k4kOLA+D8yWdSE+094aA9jIouNk9UkrK74WbKYDSnfmwFj4NvIUznEsc2bN1ovh+Pt0VRNx9jI6aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763316714; c=relaxed/simple;
	bh=D1ERNJJT7m7zldMDHbxtPqTuCohvqQsGQ+mdgsAul+c=;
	h=To:Subject:From:Message-Id:Date; b=JLklfNxoEd2zaxJiutf0EH9s6CZBTPCFYv6alT0y60uZlSsEbFqM/ahf2TJ4Cs+3t+GyLxmbo0brsNZQRD0vcmmK5e7v/9tFcGK461jbsC9BLmlsSvs3nzeoBI5Tp+m9ZjNqIAS80Z3q+hQzppeN4cnxd27npXbMZxLWyl1Wx9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2mKPa5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2mKPa5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA950C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763316713;
	bh=D1ERNJJT7m7zldMDHbxtPqTuCohvqQsGQ+mdgsAul+c=;
	h=To:Subject:From:Date:From;
	b=C2mKPa5JhzMOeLkevROqFOWccPNOx4asZW8L++27bumjlYqxOfBvtepyVFku7sh9N
	 EpK98iXxq8kMwX/rjB0cYeCMh5yJJhZfEdvxMyKA2C7ZhDo67Rcgdu8kiAiyLlYSDT
	 PGyyYr98X8GB/EHeShLwjTXf+ny0i7W0695nv/tkZ1BoaWWiIp6wSHmABvdz5a43EN
	 V0u18GzFyb9tMn8oMoX9UNH3GGJFPLdJpT85xxKs+4hT/2P5tqUrie6GwTWfRgyZ1E
	 x16RqzS69Js9BhjQK4FOusOljaPieTMegnHPESLxCS4uuCI7U9Gcq+CihBA38a6QxM
	 2pVG2IPz+ZIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97ECD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331671358.5028.17868874725919277391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6971c5f0f212b308c24d9dbc7263646da6cde5014e0f2630f69e11c1b40d01
Date: Sun, 16 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763316713
