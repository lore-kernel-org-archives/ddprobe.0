Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26922221DA0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734603954; cv=none; b=oIr9iRYNmFjVGZosIhlR3qepxUWFvR9P0REPFqB7kcvTuD39fqnozCiTMps98tVQzsjC1D4l9I/MKH9q8Af6cj1bYwweARkM9CsMUUTwWN215UiYJMF87pmnDDF03cC2mOWYmHZv7lIc/8kBO6Q29nedkUhbOga31P6CWtrfyec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734603954; c=relaxed/simple;
	bh=U1aAk4RH4Ny3T63mqjH/74auhsvHDwbZXhvqnZ6jtY0=;
	h=To:Subject:From:Message-Id:Date; b=NxChHNlX/oEH+KD9BHnuWEhxZgWOJcqbHYn1YAY7M9AEg9N3BziuiP3UAEKqfLV4pwSp7vie8uUJTDovg1XwzGTW0Ciz7D3jE3ugDoFW1OWMDuEsMCvs+Igr/z3hDwgfLi1NkWIhKGsW367Ug5YXw9A1sOl8h9iAV8q5qYku2YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnOOmFqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnOOmFqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A15C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734603953;
	bh=U1aAk4RH4Ny3T63mqjH/74auhsvHDwbZXhvqnZ6jtY0=;
	h=To:Subject:From:Date:From;
	b=cnOOmFqFHhOOrWtYwfTBsUlERKISk2Iq0n/X3+sJEmaJE2OJJ+8kIaNC120gQ3ZDI
	 k7SsJ5e9F2+mhQV1rTtubruz+PZLRI2zq9cU1CiE2NO9A1Rw4hDPTa901QCynXgneF
	 1YlIeOxtED9aSwRGVPcV8Pl6z6eszQXRcpRHoX4IGb4CvCXE2EUFTLH+wnD4c0CGe8
	 bFEarp9ZhsMH27dwbolhLmZp4Nkv76PnPtYMgED1ipiR7N/P7hritaMtyA1u8puFlU
	 HwIUdyEyLsr/fTriW6clVq/4DH1c6kDdaTt+2R7UvDEvQnLH6Gll+X8IgyyGoRRmrY
	 Dr1rveEDdsBrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A257FE7718A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173460395363.30827.1009061399670278119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96bfc3fe4dfc694551eafeaebee76f3b3727d8d3ab3cc9c16916be7b3cf672af
Date: Thu, 19 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734603953
