Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB9C28C5B7
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753162194; cv=none; b=kbgdJ5cMR2xNQ1b8GMb2FhOp2GGgxN+10xu64wA+eh8sR1AURA0rTiXFPhK6Jd3l8/9ynz3uDuCMbQSnZg6NdQJZFTLVFyKTAGNlT3ReRSU9WQigMydMwfrY47EZJ1UX7thSksiN4yelKLehnXlOmaL8kqorxXc+r419M/HFZ6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753162194; c=relaxed/simple;
	bh=PiVYUAa0JcRGRuzmEFFOsBz5gChL3f4D24y/bRWIklc=;
	h=To:Subject:From:Message-Id:Date; b=AXXgwJa9iDh/eTSjvDOtBkxLehBe/EcB8UFNIPqOAlEIM1I2/RulsQHqtsWSxTh8Z1PQH3q2M/LaIWnDmi6uXdVBqn+q9RrIHcJX0VCQNscj6SnXas2h+4CQEdB60uoNFijcFNpLq6auKSgBa4KftCGIGY+0h2OaKOysko8smQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QACuClwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QACuClwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12C2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753162193;
	bh=PiVYUAa0JcRGRuzmEFFOsBz5gChL3f4D24y/bRWIklc=;
	h=To:Subject:From:Date:From;
	b=QACuClwvUosYoCJYW1Eg70D4OoJh6AfP77cnkMAMS4sve9f+KwDl5iKer3Cf1qQQi
	 p+5HOvrDUQvr4HRj7tKXRvDmkX6q1LkjpUDWZLoKN2CEctcnODl57vFpLIW8x/syh3
	 eNT9dwW2C77kIWb5OnXPBklDZ4r2JcvI1gTg2y6+0SHSkR+mYdac1R3QL1nq6fZdGF
	 SBnT7RJ5kDXcNthAtErNIVYzzTgKgLqHST8E6WCV6VRwVg8oG5iNbhMvTWTCkEazqb
	 NJxuZ0Ui60fQIDk/e7+8I9GXYI+53Xul+LnChH6pPWPeS2baQoG0Inp3V1BC9Px3pu
	 MSAL9z0H2mzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E72C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316219358.2238.12907994473902895940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de281cf06701fb455ef944ed6cae3fb2afb8d46e99302e30861059a903d30be1
Date: Tue, 22 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753162193
