Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777C721CFE0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778332654; cv=none; b=h6PNE8l+/BC6ZNtd8sCWFQ+KycCcP9e1o/ieiQIuH07HTSv6gJIALKSidvbHx5InFWHeZt71CGlV0RViBEPMDeebDGGE9Bakvniqd5UCRnKo1oGcthfrMhDgnkykQ5Jlmo6tnpcJ+WkUFnSFcMzmyJApZGImsofXZyKsIy4v/3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778332654; c=relaxed/simple;
	bh=euk5GtxaxKXyq9x/5uJUdGse2EIPZYKGafkkeXOb7nQ=;
	h=To:Subject:From:Message-Id:Date; b=BCeEnUF0zZIDasvF6YBGuotFugNF1T9JEqzk/4bbknG1ZNIWV9jw2AJrdMZlP19ynxzgCIHlCT1M7iK0PIWHRLhXkZVM2L9nO11a/sej9cky1GZ5cRHHXDC+k4oxlaPdCeg3pPIObilcKJY2eAm/gCEjNYtJI2EhcfaUt2LJaUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJtJKXwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJtJKXwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3BA4FC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778332654;
	bh=euk5GtxaxKXyq9x/5uJUdGse2EIPZYKGafkkeXOb7nQ=;
	h=To:Subject:From:Date:From;
	b=nJtJKXwbxyhRA6O4iOEdkz3NtLlDea9YFky4rnIXgP35K7rxaN9X08yqEOuVOusv5
	 lz0rKEagyeDg5nH2VozEDemglQzSSrZjOKdAfay/LFBA/j1Y7yFfHSSLh7kfV8NSoz
	 zBA3EN2Hq5hzKspto0o3sNdR8qfxb3XFchp5kp+a2+fzNMfMuwpb2WEOzydeIyYvdj
	 Bb1X/NFsUzaO4gN44wAsmKm+G1bRXuYMLeMRywfQFaNFnRtliyB5aCH4LQy2ZwX+C2
	 IMHM1h9zOozNqOWYNaKJGhPquSB6cV40XlcoTp+NBAPqnbqqvYEaMLNJMzWQALPZoB
	 cHrsZXIOyZEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02FBDCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833265386.13127.12108150752345302822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9f4bc8205b3ad4cc8d7e2f14fc33908782057e5c8d5172923f2a0c67fd5a2f
Date: Sat, 09 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778332653
