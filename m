Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178B6137930
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762820394; cv=none; b=CyJU3kRJyvh9/Ms5wyR01U7cQtzYaHz6vISq0TcvC+bS4fMtcs3Hb4zsklAo+RnpH/5hc1vz0cPd2cf/chJ+7DnbRKgmpb2HYLB31xzsRn4mt/jKnxYCI7GS9CT0y7GYIaO2z3cDI6OxcehkO5kzrk11XodGIaukTl2cbsPB3hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762820394; c=relaxed/simple;
	bh=YIXc665oGhBnbIhSgwVgCb+gVMYc50EZeMUYOSQoQYw=;
	h=To:Subject:From:Message-Id:Date; b=afPSOkhattlAyHkw+wN1/+4k2zxa6Bi0ZLqmUwA98cMh29tHk14729MgPNr4cf4Gpo3FLxh7ViRHCG8skrJt95qaua/9GmZWTI1ATFPWEs1EJfVT+3C4Z1aR0+kG1XSguCINE4l6qXwF04oTq4GmWKjjULfdQe5l7bshMRqtuUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQWrHnK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQWrHnK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A530FC19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762820393;
	bh=YIXc665oGhBnbIhSgwVgCb+gVMYc50EZeMUYOSQoQYw=;
	h=To:Subject:From:Date:From;
	b=ZQWrHnK3Uo1pofWnHFDYZkfI80N9LN91wczq5CLJzyeIf+jKrN+J6qO3MVDqPJr6S
	 23RJ9mPHiJJSB1pHn72Zizp+lUxCAIUCrYWeI7Y7HKI/z/I/ubThsP09a0iEC4JOsz
	 KaOHCNmSzitFZSMwfkixqMBv5f/OUHaMnQOnKWsjKxUvsJ9ygHEGhW8rLE0bU6kQSv
	 j+aiLfd2MTlJdPhmcEU/abakpHPxYcB9xjDdId+wYQ++1jZk+azre5pt3I+vwc7FwF
	 vfO2HoKjur/KcVVZp/4L1N0dvzoESoGKpBpXo54YGnJ+z6S30+OvbG514XA3qWdO5J
	 2OskSyfmUxC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94768CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282039358.11602.16164770371845292558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391a638a678fcc891a10367c007e6adbdc06c074aa9fcec8b693ef2df25d06d1
Date: Tue, 11 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762820393
