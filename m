Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B7914A91
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767853434; cv=none; b=B9zfBQfiPuhIXxDRfaa/IbSnWUgHrWD9zZCy/c2PFaTzRmU8EkClVw/isruMfNefYLPsP9wy4heiPp2FNT3mXd+gMYuI5r7o6hh+vfVLyaeq7duUIaKGUdxOiRgymwWwlwJYI3HTzVIAY1YIDu5Xs6jIv1XEpV/6S+UHQXSCJX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767853434; c=relaxed/simple;
	bh=RJK2LCvg1vAHvbfC99Xm8WJg+tXEjvAYR9jD9kwu5/8=;
	h=To:Subject:From:Message-Id:Date; b=Xs7NlK8x1RqGhOEL14QSdiqnk9BnqLMnp6Q1GgOHyL1valD1sFn9x/N+QxG08wmPCZ2POnHbnyfphAt5RdJC1t7Im+EgojyT2cevdXAqhZLxE6P6kMrRxmftDR5icOvuGusG6lhqS1TH9/PHkf6L9+tbkKlk0kfZALnHPCgFvy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfM4r1UJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfM4r1UJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4DFC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767853433;
	bh=RJK2LCvg1vAHvbfC99Xm8WJg+tXEjvAYR9jD9kwu5/8=;
	h=To:Subject:From:Date:From;
	b=XfM4r1UJKFb60EDqcTYbC6g+8VoS0IJIhZfp7QCQEldaEYARwJ0VZMbrXR1BlzLYg
	 LNy2/ra7IXMzKjdzkXfZ0rfzUVpULfcMS1yIZ0BvTrFWHn5/T2dlSSGlY0rz2T+FVZ
	 shoMq4xu2lLVJIjllK0iGuD9wC1CRobaiULertBF1+6T4Xa+exfxHAtn0DH6uU0vaH
	 soHSSpxv9EasTSXEczm4Y/QFpy7/c2TrMRHgHjQjP2EJFVV1lsiC/e6ouEMBHSPdGa
	 OzlVAZqjq1BQWP05aWO+JQumXDhLuuV5icR7Udk5ua7r6BXVjkM0fbm2k8P6jW1NHd
	 xhetAZLcIMZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFA4D1489D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785343357.28129.12255244684985956641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7e2eaadc3b5096380d5e0da09220add5626bc4268ddddfd04040139d5e5f78
Date: Thu, 08 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767853433
