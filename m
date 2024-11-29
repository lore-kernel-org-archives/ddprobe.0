Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421EE4C9D
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732889754; cv=none; b=gOjixW8IwGhQ8HrkYetR+1rcoqlvJACQU91llOgDm93TNE/pqkb1cIFiQ68KR7awsC+D/PfdKj1EPOu3hWswDTYLXsABy52qfcNqIwcNe0hXTg6SUNhuO/H9Qn9FePsilh8HBssSG9TOOGZpcDKLSciH99OUU/5M3pM4p+6Eyeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732889754; c=relaxed/simple;
	bh=OD3vQ4FWTLPWJKiJ4GyJQVhSgfZ1xGXlA5r16rGJgI8=;
	h=To:Subject:From:Message-Id:Date; b=YPYQoYE/PaABWnY4fmGUFQl/jseXM9cV1GKhwA/P3Vhdrs5v+M37jW5q5ofUuVrONJ59bLPx9MU1/EL/r6JXriO9xhb9y7LKmpEdp0ciXsALdtKXcUcd2zS4/jK6N5edWFXFgTQZRVpnA6bLPSqnPvMdy7emk0uSl6alzdCUoFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fw0OAWQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fw0OAWQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD160C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732889753;
	bh=OD3vQ4FWTLPWJKiJ4GyJQVhSgfZ1xGXlA5r16rGJgI8=;
	h=To:Subject:From:Date:From;
	b=Fw0OAWQCgP3mPBp76W9TV0xBREIXhL+a7BFJCxFgVjTUeJz/Bdn0dOlyJcrHSjXMZ
	 L/VXo9VDY9frQEhJmqkLV4UBHRU7FQKHW4A3Q6kZw4jrC3DSbdXTmSq6jrCs3Wmeiz
	 F4gJsO3FK0W0H7zu/fGk5/fHW31k7DP0o12mGLiKeVa+ebwFeWzkB/1/khTK8zJpqD
	 pyzQKzatWaibHNy8nFGdvqvODDEdemk/cy3zreE9fs2/hkp+WKcRpTaQbm5oc2bPpM
	 EEnx/HrJDqqfvo5YfaPAVJIvosNrc37n+9wh70oTMxFzI9NcwG6uOb/OE1mPtxL3JE
	 PRrslH2zQOT2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC63D6EC13
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288975366.2682.13055744679914022421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152695f93df31a91bc720193657729fb30a9939a4e4475a58ee2a08ecd5b05d0
Date: Fri, 29 Nov 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732889753
