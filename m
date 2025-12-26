Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193B723372C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766783034; cv=none; b=T+rCMlhE79aLm2kRFCMjfEzhgTRpTcDNu4ItQCo6bzhpnYw/yhQMjD+fJ+NqVn7zCQ1TQ/Z/AFBd5OIIVrgc98fNMoz2EiAgg/qk/z8jfNeO9uSZkZDkWufio77ZKCE6VLYRsrgo9F3JvUfUq/w1/oebrC191Z9kV3932FRIVnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766783034; c=relaxed/simple;
	bh=Taw8RJQbV78p08ICQGpphUykO3O/D143KUS1Lwl8FGs=;
	h=To:Subject:From:Message-Id:Date; b=Q1dpRLMkgBScGh11uoYBxFDGyUYECk58KBQ5gqvocnsWavZGl7pRdVNXSePmSV5vKTF3PI1ofU6jUx+riHfu6fKJOP8jbuJFP3pHVqotDiZYelXEcu5S7GT5lfuMUSx8Wi7mVPrC7rr8OI4w4oKXwA7bxFLb70b5eNYm6sipYlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqfRTRyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqfRTRyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20EDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766783033;
	bh=Taw8RJQbV78p08ICQGpphUykO3O/D143KUS1Lwl8FGs=;
	h=To:Subject:From:Date:From;
	b=RqfRTRyGCKYcccRXKDjlToWtqfrK7WPBYJ37xl2Q0p+fm6zu7e8FQ9KHpRPKAWCYm
	 UZFcZ1XQ1F7sCn5d6Ac5uqyifS2UjTY4vzYxfZKrD/RboCo3fiQVrDfeUJKf0iTOyw
	 suW++gtB5BfaSJA05SaumePA6YB1y4tSdP8VWaEzCXLrfRwfS+xuh1XqPW2zqf5lJ0
	 YHHxLDYEY/+EFVxw8igq19bJSoQABBBf0f/4JLQjOvHJVUEkA94ldapBxb0nD85aN3
	 34p/HvRcAV3eJNscVUzNWJC5mtajgqVzdJnicqDSKKhaVmqjL0Dj1TJ2GGXTZARHdj
	 Nv6oGOn0yvUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED25E8FDB9
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678303359.12024.13478902711703552676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8d7c79c9bc16fe350f08d5fb5cef0f4626f95d01e75fe4e7854706466f00a7
Date: Fri, 26 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766783033
