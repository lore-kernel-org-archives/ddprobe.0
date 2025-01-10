Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF6F18787A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736507754; cv=none; b=KTy0p0ZwLfCS8qDwV8tgyX2+j1DzYk5yZ6P46+bItAEWt5mZ+hOyG0ARj1RVADEXePncc0pRiEXgEUnNMX+I3/nfh3yrZS3svoeh3KOSZ8JmNlReQDMJFScBwPWDC68UcDoHYJPrbiGhWhhGZE+2F2YxjhXpKDP3+BzIJblbViE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736507754; c=relaxed/simple;
	bh=YGJMcBpK5e/iUsN8ZL8oP78kTlpR3qkQlIWH+FPVFi8=;
	h=To:Subject:From:Message-Id:Date; b=aIb1YhM8/RxwA9ykXXvW8CB2/28AwnqfD8lSNHK8i/4BazZnClYdSPMbaGPEg0bDx4p5ImRIyKMJIFWVDeYxowKqWYxP4chSKOsnIIoYki4KTILSZGAazQeDnWARJEJrmET1CBkVhmfkdzkxikR3QQVpYl9RlKleKCv5Q6rGfAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGlBamnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGlBamnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE5C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736507753;
	bh=YGJMcBpK5e/iUsN8ZL8oP78kTlpR3qkQlIWH+FPVFi8=;
	h=To:Subject:From:Date:From;
	b=mGlBamnHT0fYrM3Cw11+5rnN52sgsMsbsUDUAGTqsD+bbiH2w6fSXRoN7gjfSnqo4
	 JmM8UtbUR/azAuLkvK2BooRNFtjRtSuqE/RZilPgE7O5w1Zyyogf9Z70UJaCuaXaqP
	 D1d0Xst7py8OR/OSl6dUEAD8o8ifGcKuDtvWf7/2v6n7CX2gRhXh4lROZWRcyESvkb
	 EmKDzvvRq8v8jDtgju8yhrQRB9s6xAHMZSfoYrEbf3tAqt0KoWCMYkxU3cqgMz9BBW
	 nrn91Lzc8D53UJvLy7tHS9TpChIBcmQZSGOjfw4tZXtMxSm8UDOJ213U95IV+mFlne
	 EVx9Za3NPDDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959AFE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650775360.6780.364488853743629743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94ec02c301e06f8e5ae281c17332f996133555bdde52bc171ef80676369e64c
Date: Fri, 10 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736507753
