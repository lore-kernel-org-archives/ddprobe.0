Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312762882C4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755214794; cv=none; b=Szc5V77JD8duivz8gnM61seumDhDuE8BnRiqlph9W9Ja0V6oQgnI+QeVvdH2AZfpHf7/H5cc2Frcv0/uuXY/HPl31euKSTkoNAsfCG3nGXOHSUPgmIHpVKjFKyjpUm/jf+DbKJvacOFBvrHKptRhE+C34p0upZ9XtiqlOEvt6eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755214794; c=relaxed/simple;
	bh=1pvHeSijLw1FGCUm3gOBHLSgzenEr5NDJYHTrIZxSgU=;
	h=To:Subject:From:Message-Id:Date; b=VRYryv+GjARFgnygcHW8PTq6zcSjHIidaKCgDUwNQKjtHSsPw0/9n2bWH31zN6qq6087vlErcdETH9ybetckSO0yYJmnTAluH0jCnOZwFqrIzReW3FpCKMXsINIgE/z0X6/9sJdcnGjvoeeMyDdIH7K5Y4U+1DmC61XgfizMbMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHznSHrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHznSHrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CFBC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755214793;
	bh=1pvHeSijLw1FGCUm3gOBHLSgzenEr5NDJYHTrIZxSgU=;
	h=To:Subject:From:Date:From;
	b=bHznSHrhKXQn7Ur+JX5ki8sWKE72t+AsVU0YZ09v6k4fvEfB6MPcCJK1AVA3Y6pYI
	 XE1Ykw3m4n1v4uW395fNKDZtDnYUbV51i8Fov7wKnJRRtJ7KpV74LoZYWhQU4WZbTi
	 jGf5l7HR/0UqcjfXQDDvrIJiHYE0qPewWXDRVWDc9jd08fTe5sH+JZGazCT0ol9W96
	 q4YwDOJjbfIGjKthT+GpwryWtpuCz83ZYOh0AaLq70MsSojSLEtro3WrWrpD7dahSg
	 ul1FXE7qo7kUQriN+ObXVbC7Tre6xGHbOg806Isf3sDwUCx3m5I0fw5GUATOThEtx4
	 fbYqx/2f5ucFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA73CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521479357.21205.13947053545183047366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c94d8f3d44b6c4a21096edcbf57523ee275ea191889495af5e99e0112b2d13
Date: Thu, 14 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755214793
