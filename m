Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710033515E9
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787372434; cv=none; b=SRKg6XiVPz0u1m9HCGscXTmKGAqYM4ln+PJQu6A39BVB/tcfjAApOfXXnGFqz1yNp8Cgr7BDA2/Z80v7X9bHEb5uaMmC+CNda5SlOvbyg6feoiCMFjki2pojHqIRQcZMrWsMdNs1mTGPCJ7EALFYtI7bzuaEpmt019EPOqV5wwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787372434; c=relaxed/simple;
	bh=R8bzu7bWGSLmpDE7qS3+wCvSccjTKYfZ4XJ4MtZ+tiY=;
	h=To:Subject:From:Message-Id:Date; b=I/xsEcItuLCCzDoevs+cz883hDyKHyQt/g0jGMnrLRc/5J2BfCn03bR+voa6IBJhD13vG2rpUH6i6blANm5IiTeGd2CS5bwot6quiIuzt71csIlm3/6ytJzuGD1EvdkbOueAw/0cuS3V0cODv4waz7LrdzTesrRO+P8liQ7gTbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuksRnxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuksRnxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBD1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787372433;
	bh=R8bzu7bWGSLmpDE7qS3+wCvSccjTKYfZ4XJ4MtZ+tiY=;
	h=To:Subject:From:Date:From;
	b=FuksRnxWBJ3Cm03ZbWw4ScKAhNe8ls2jgj+B7ymoVoDbPTtW2NI2gebztM9uhsefb
	 1nKQSxZ3u3mHdTZzW995kJhwoq+TkUmAWn8ahf47ekTa3nC9i1daM/y4GFm6bJV0nB
	 /Y1irbDYRbkSPE/WvZOXSYxkR5pKMbHDUMj0YXeB+JXlNHtBjL9Flm05/H6zfkGAwC
	 L7AeHBkCZxO69h2mZJM6uImkCHC1rGL0Gr+YyFY8DO+6ynD469WgB5E6hUghKYGCKj
	 H2/o4IX9+S6oHmt6EpNk/ulavq/iQbdheVSdNexkaiLkg5TaTZxYcfQrhCj8DUr/dY
	 JK0Cu9z2OLDGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22FCC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737243371.9459.1557563732598152497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945405b0075464d202438d9b5d39ec04b48368b66a0e2e5a478ac9c0f85612e2
Date: Sat, 22 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787372433
