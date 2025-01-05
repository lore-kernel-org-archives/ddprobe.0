Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F77E8C07
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736045754; cv=none; b=e0lKK8phU5YHGLd2PycVhsCK+uKsjIowElQJ91qHQoi5awOEEjTRsAAdFuQxUds/paRt59aSxTEOsm6Q3GLKUjwm4NxW6TRGEhumerwt/n14NeXlh8+/nQU5zKJkII1DMOCkWo4UXCEhyDn2+dQkWgC6+G+oyAcskuGm4F6y8EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736045754; c=relaxed/simple;
	bh=Am9C87a9m6Hf6owebVp3LgrP89zCbp4OERk8Mk4xrpk=;
	h=To:Subject:From:Message-Id:Date; b=B6Jczq81r+On8YsOAMOx2PRQ1Ve0z/jbiHszpj3i5hcUDGM9yrF01XodQAK7bLKRuA44ohhrjZt+jFeRrdMIIYNCbzEQ8ku2wCPOw5Qb8fvSxrhKEIOpCyM2xxRRvKKK5TLsjy0S3GgyknW8SqYgvbcCZ01th/jII6kp2eyY+Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3oWo1Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3oWo1Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCB0C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736045753;
	bh=Am9C87a9m6Hf6owebVp3LgrP89zCbp4OERk8Mk4xrpk=;
	h=To:Subject:From:Date:From;
	b=Q3oWo1Jpmoi5HCeeYapyLjteZfe0cMBO/rfuP53b89MtfCg+vJC/jZlzuRr38/Fpu
	 iy0Ufys8e+gYKf4md8yV5FDr6gPl0NRjNT4rQJ33vVl77qwkQGb8i/eWFR3LCqC5GN
	 hzrN6AIU/2BJtom/lkM3yjLO9tXE1e3i1P4ONH3G04/RULgVSDq3/5CiEm7GYH1Nky
	 Tzjr7Di+B2O/HZyId/J2uMHwgGgfYmzqgYuQmHkJKVSmhXfUYBBqedwculKia7hAJE
	 RqKb/InT/e5EFPCa+FHk8euVEoA/ZTL1Xj5rJDIK6GtPDU1EF/QLWwdpvBHPDMurYf
	 NxTmjEqRazKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A794AE77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604575365.32030.8542424940909789975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519a28e50d2670f8f5ef6beae9b37d9b0b9ce86bbe1aa9be6e8560826cd1074c
Date: Sun, 05 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736045753
