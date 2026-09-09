Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C1E3AC0C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788980434; cv=none; b=oF/N85FcB3eFHozAoWi5ZDmFoK5HHcpDmRKppz9RX5vzbU1ON6yLonBNCtLoOj5ABln7yuPHFW7qHJJMJgLYPbaRrto93LVFCkoDQ8Fl5tuv1hMH89brW2z55D+3m0MGq3bopVMpP1pP0aQ3+65mSPFzXGX418+UVjFxdzeLqPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788980434; c=relaxed/simple;
	bh=pLkkTa1QijYmL9znXEq7q9Ug/BGRpI2ZbDzPQfDKEE0=;
	h=To:Subject:From:Message-Id:Date; b=loxcLBkTUuteaDBcwWFpYGNjZbDltqUry9RXCy8C2k7xeEN+I+6YeiNrsGiNDSSMz4BAd+rSIojWT2lSvyvoa/eKxBlj65utqWw9CQ8lM6Qvy8jlCyrd/rhJSikUjPDwzeYKIjE8F5fbmLEn9g4VF7OrA+jcqp46Ts565bzizqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHTb0/0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHTb0/0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE84AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788980433;
	bh=pLkkTa1QijYmL9znXEq7q9Ug/BGRpI2ZbDzPQfDKEE0=;
	h=To:Subject:From:Date:From;
	b=iHTb0/0TzK8oqMiOJaAs3Y+P0AwX8na5lIblqdrmCyacKdf4gKzJw5F6TRTzqBDo1
	 NgtoXfx+EMC7eQb937FUmKoSgoGAGWBv7dClWB65TwHIUiNrH7VJEGUYCLxRJ1j3lL
	 AGJc7n4EiqqJ3t6ok9IBYz2oLBeA+Acmouv75nn/UGwJFGl11P3xwMi/KkVUKPoa7w
	 yUwz61GL2UKjN9MoAXZLCrVLFdlQ7+ZzmSCVdCwN9cgwISAoVvmhqMh7ciMow/LpXP
	 4rJNatrA3etNNzg5HY8k6o5JF9uIBF57VZzrBSxNtFm/0p0uo9K8FON7JkWXU0kH7y
	 HC4yfiub/knFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B8AC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898043371.19653.6494439763331002307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58276f972c123a493ffef17ef6122cb72b101d0426a7c3a1dd2a70bc200323ea
Date: Wed, 09 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788980433
