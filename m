Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0098215ECC5
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723157154; cv=none; b=Np2crT1iKk5EYc/JnHyWo8b2NYScXXkiH/1lFaFFQgbFlxYF5sb6XhR/oioFbXZlMJNUOqda0D0812gbentQEqwz3ZwPiYWgbo+6I5JLYVjum+UK3jm9H67kaAz25CbLxYRJYOMMyotByHTFGKG7S3uJ/q67zvpDn1mN98Axkw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723157154; c=relaxed/simple;
	bh=Y5DS5IF2O43NBENwuzuuia1jngp+dR+3e33mHxkMWTo=;
	h=To:Subject:From:Message-Id:Date; b=DJA7NzoiYSLRtxbcCN4Y40O8gPfaRe1fTgVr+3X7u8Ol1RJpMS29liQo8DU9EIpghaNWe5SqLk+6lQyjjeC+3cY72w/hlKbLGktt3ugjXR3XfVstGlqJuTZ4R2wrbTD/0HpOkXYJaPUZ+k0yzJBMfkBYopSCHF847kM2/o2UvPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rwz0XsPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rwz0XsPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9CC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723157153;
	bh=Y5DS5IF2O43NBENwuzuuia1jngp+dR+3e33mHxkMWTo=;
	h=To:Subject:From:Date:From;
	b=Rwz0XsPOx7O2ox1I1igbxhnZlspSp2RMAgymY/3sLVacxbIZY93el8vax6hb6Fo71
	 O57oyKpkV1rd6KFoQizpjiL9y8Muz7d+1/VeJ/s6Rjx5VlJFna4aNfvI7WjlJoRYNs
	 3tHrBvOYz52RQcjRm5wQHI2EI642aj3wBKXMqJe4cxvfzEuZBq5an8HbFnNtVEM7kA
	 e2StlfWNz6O8qTaGz2YvGlNCa1BjUzCGPzV+jCME+mMfEwQcNgFIV4TlCGDcgl+rqQ
	 U87UmNBuf8/CpMjciUYl7VFSOKTcvAfODwiNbpgMWSJV/1PjI2VY0S1HE5TO/3yTdB
	 d5X3RUK9Mvo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91526C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172315715358.21862.631511055465324535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1a7ed1a8dc4d8660d9056ef22e2eac00eddcbce8f42e1050ed62b85102f7b5
Date: Thu, 08 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723157153
