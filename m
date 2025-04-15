Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390AD255238
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744750794; cv=none; b=Fbkwd2sUAro6iUQ9WGVHzWUs6HHk1iAQoivAjkFFg9tgDdUGZP3f8gB2g0bkLIcV1oLmHomdTfRWZ3+KjXkt7yFRaZhUHENBPg79PJaTmaGW4eKMXiPiJqyyTvkfsubaNWhfu6hVGCvZP9jSJp+7rdsMr30wwQVVYSpYnhucO2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744750794; c=relaxed/simple;
	bh=T6PriiPSlgeN3cswrsYf1pJmrogxI4DTEIlhssIInjM=;
	h=To:Subject:From:Message-Id:Date; b=QOAaghesStQQEZ8qCGxZqWyeZiJ7yqelycQR/kt4pjS8Gn/8onXkWjADfj7Y4ht99777I3HCeudqou3pOuT7EETYGVI7tg5kXCONWycfyi7Ppzgt9GVNxXv5eAuMbtM4XJoHQhUOAWPqnsZarEo6R4bwcBfYQeqludbsptuNcZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw/VXp8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw/VXp8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACF2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744750793;
	bh=T6PriiPSlgeN3cswrsYf1pJmrogxI4DTEIlhssIInjM=;
	h=To:Subject:From:Date:From;
	b=kw/VXp8Ag8Tq3j7VNshAhiUx8q9UvtiLdWB7blSfctUgGAOoqcK4exkIeP4fwuTET
	 E/E8dBWaJwj1436HoaK0dAlYkan5nD+pb8b6qzfb9jq9lqXMJwkpidvPxvERYU5uKQ
	 4XSgukR0wqVvcbvT6jFYUBpsE/jY2UjmJYKeIOzHO9HZX4E2+ijTvqLr0qaxPrBaY8
	 0Ii6NaqGYrNmbWXFOh/PES7rSXydOhvj2FFhUMhSmVS8QKLl5QodL1x/6Vec+a8YCg
	 np23bAVRbNoescQiPf/oTfH1qp0n5QoJu9VsXL/NDxdXxkPFSZ3YP5NrSUrOsT+jSO
	 7ciBpJcqIt+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B5C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475079360.4757.3302597046147099073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9edaafd79e2e4ef76bb1785ff3b880c07302ebbb66b5ff0ba013ec406de924c
Date: Tue, 15 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744750793
