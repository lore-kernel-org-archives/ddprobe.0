Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AEA265296
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762127994; cv=none; b=OUkyFTR/f4+tYxA1OF/oTbwKwxuJIdky5pNkOfoYhJwG11M1zYp8wjfUoZ6jPZv0vYf6wsbL7oBTdfm8FhAngB6M3f0Lg9FykDFDjychJP3nQUV7iAZFir1ZZYmQ3zAQbXLKJrzxlLUPozRTDTnlmLzQqgY882BezR5O2N6JMn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762127994; c=relaxed/simple;
	bh=6t1JQzfARUTR4LlFn0grjKYYIBSU7WWdEYPFI676eBg=;
	h=To:Subject:From:Message-Id:Date; b=sAK3+UyEaBqlzG5PLgh8KPfv0k8jH+YviUP0MPqK+qDVCiMbMAwl0EmpoKsslufxztuwKuxm1AEL3zICoHfBnFdWOTvsBLO0PL4DAEvgh/04qF63NuWkpqoDmVSN7GIIMOe6MEsvE7OhHoAYTaa0jS/B3UPaYeE77yTRHjEmbdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKA9h7nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKA9h7nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD83CC116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762127993;
	bh=6t1JQzfARUTR4LlFn0grjKYYIBSU7WWdEYPFI676eBg=;
	h=To:Subject:From:Date:From;
	b=cKA9h7nV7Kivqm8XMjZ8Nv4ZH1YUDhNQClUDzj2bqVJNzWoJiQIp6fN1mSx3aGyWd
	 T3F16DbTrwrd+RHlWq7/kQY5UktfxBX0by8rzUG0J3b/WpBNQew0KWSAZSB/Q2JUyZ
	 DHWNbw7J+DUK8KSGECxgqMx15nPzVQ3cFqJqZ9xZSUORXRTsbMXG3CrNP6YGpvw4sr
	 GInAoTngxVZOllB3C6iwxWes3mlmYTWP99TSKDWazuqntT29FB8qTYNVvAiZYggHa4
	 3Z/GBOYx4B3H2ljGZMhbRPwOa4hzxqOs/+jboQrnekbAygoNhwXWMiW3YsAjW2EU2G
	 iNecTH21vPXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7FCCCFA0C
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212799365.1584.10303885286886487239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fa18dad71da8738b59ef44f5e86d4fbfb07798c0a01f70ed63ac6955098101
Date: Sun, 02 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762127993
