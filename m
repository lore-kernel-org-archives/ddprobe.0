Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AC127FD7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745438394; cv=none; b=RxVisWg7HSw1zLXcKSYc7np1+gXp12taN/IEjiRhdGA56TJTyeIWv1ZEeiyzrW4Vk+M1eh1yAHW5V2C1xin1A+kFLzbFolTNEADXV3zx3WWeEGx2UYZsT7YB1SVlNaeUy4HEPxYqe9wgzANjXMNP/WoUj6YXT3F4TlVlEFMnngU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745438394; c=relaxed/simple;
	bh=bmAJ9KC7rhT0fpPQX6tWNeY1bJzl1gjXBC/2qpKfeRM=;
	h=To:Subject:From:Message-Id:Date; b=BBr5e34hOj5R3g2yB3WEYgWLcrSDj1bVnqUKjIBpCCiix+qSg0NDrgX9kDC7otpFJ6Bjm37f6KIotsZYV/e6ERd7vyaZBneHE/UylePRvsyVnI7OuS1Xe8qXFeb7Fab5GoERKP/4jPKvUvEP3nw2iSURESbdo978WwYd5hEQ+1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGWYaJNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGWYaJNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5547C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745438393;
	bh=bmAJ9KC7rhT0fpPQX6tWNeY1bJzl1gjXBC/2qpKfeRM=;
	h=To:Subject:From:Date:From;
	b=jGWYaJNcc5OT+AKd5z8Z1ouU3my3SJ7CN24njYi7v8KGeUKdScyq3cvXga6DAPCLO
	 rQNo9vKrN70q3GqKspXGvr9dNI9wIQPWLpxV0BaJARK+DhRm0HssH5ZbPX21H9lFkV
	 XscwNUe3o7mba+tIZ0sgBOjP5AeZP1HVnz4J+WaQHsna3S6LZHeeOtMuHku4bmRh9D
	 SIY+LmpjiFCWKJgqdMbmNIHa+mYHxS3zqnMy70Mh8GQNtJ4aPGC9n7Q/eiX8G2Ilod
	 0BZQyrEPWDhsHDR7gBbRurszYTgNUxo/RtlkwBaGMrzd8G5oj1r912BX6wnFC04ONI
	 P9yF2j1XIhSxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E30C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543839358.31822.6362800837903895453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ce1cc31080322f38bb3574a2661d192aee76c5bf73c80dcf2921597a3c5833
Date: Wed, 23 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745438393
