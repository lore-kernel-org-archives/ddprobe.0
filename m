Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300B129DB6C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757049594; cv=none; b=pyTdU9uaZDuzf6fNAiFVjrXjeuYy0ZwC64LXn6v0Au7OwAnO/vUAQFjm9525+LevZ0UGXMuNX07+opUtjELwerU+tjxM1YRavwfqZlano9Ya4JauT5iFr0vGf6nH8J2gLWPc2tOeLY9iELdoFcmV2AEgcbhhFIHGezxyykZTRdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757049594; c=relaxed/simple;
	bh=dkmwVKq6m6l5UoazKIO6iAEXBPIw3yMoH6eKqRc4qwk=;
	h=To:Subject:From:Message-Id:Date; b=nnFAKqKTIPakoBtXae1196+hVSuLhupcWmuH+C0xvPyDeCQzJa5tb0AkYBhtezkRpQlaUkrhizWpjy8Kl6GRCMKOh5XEKqZynVGo0NuR641wy7Laa3aWFhf35sGLSxN6jIG7dYEdXjiLnGStihMfBOd0Aw0v5aSH/CFv9iYpa8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZV8pdnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZV8pdnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0858C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757049593;
	bh=dkmwVKq6m6l5UoazKIO6iAEXBPIw3yMoH6eKqRc4qwk=;
	h=To:Subject:From:Date:From;
	b=rZV8pdnPiS/KoUYLnrR9fBmLufLVh0CMZH8qs1UQ8FlbdsleKqSmgiQtoNptbkMYq
	 sF5kErCLzu6OZQUwYYwHsFTeLZlxl8t54pU1P4oRGjWR0TnC/RBbXtq8KEegWArF76
	 cze07wllDy4wRUYhXIMVN/zzdIIXzSQgsVCGzY+lP3JS7WqFCiJtaiEnXSl7RUMzz3
	 4bA1L1USZeeCsveyGKnxF0Ww4b2V3aMCiOhIVmIK9cSaZPIyJFYi4KXmB5ERg+XmTP
	 +xwk/F6R29UT69HCXXFEQDvnvyQ78vREU6+aFcjq8pZCDtY+Wf1eurPZ55RLYhx+8d
	 WF8LCXqr1JeIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4FCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704959358.31337.17342883369076903560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55426962714e3cd60c615dc9b7681bf97288e0790ef4055f369b57b735e9e149
Date: Fri, 05 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757049593
