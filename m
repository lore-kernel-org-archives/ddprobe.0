Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E682BB641
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705552697; cv=none; b=JDpdl5Udw+IN4XMI8A87twVqMHjX6N8bTi6ekhYkHqrMyIvuLR3yGhbioiU2dXLVKrahxMAUcLjkAJY5ZfdVd5JTbsv56uzGWsJfQan4SLnq82LQmwH06hz05K1kmDk0Fy8Pj79WTb9QX8mHZYKIhy+EHrkKDwZze75jaZ/ri4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705552697; c=relaxed/simple;
	bh=txRokCvVkmcgR8F5SpASOtjQKKi/liUpY0hCrHL71DQ=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=uPOY/GlRrurzHek0gcU1rTXE4TIvGGbkqMCnLwKXSc56EyFD7Rh6OjfjwO7N6/6pUBCJFi70RWMBRmJxHur45aOMDYZnBW6C+Q3OY29lORJrhL4Ar8rkn0uUfvFV3oBa8+3BXIPmELicawXAAAtyG7CBeicWKNWdkdRRK9bnRHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0WotCiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0WotCiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEEDC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705552696;
	bh=txRokCvVkmcgR8F5SpASOtjQKKi/liUpY0hCrHL71DQ=;
	h=To:Subject:From:Date:From;
	b=m0WotCiNiRxibRDJzvTw7FFqIJhsT+s9zeld+ck1PjhrXjbrdQkb+k7M7VEWZcwTi
	 tmolMxdNBBlGkj1dZH9+2IBOVRX8fwcXvvNZZ7G+I/EOHYE8vClGYt+SfXqGIgRvzD
	 DQiKkCj1EbDUHl0fokoyFxgo+4u6ogHbGvXj9ZWphYY2DP/g+SxshH21mwLdXlJMyp
	 tSpqDmua0ZT7xSbcHjU6cZp2j+P3eHW1NEDvN9zFY2VbRWMHShRf7RwuSJGrNMDdx5
	 d+cFYcrWGjlYXTsMaMYMP1v75d91Zcj6mS2LPKnXM2KPlt6MWO3WvTLfECceiXQFqC
	 CIJbhzOY2kJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630D2C47077
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555269637.4363.9802766230904638306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2b84756b42a5d479cad145e720ae2ff9a499381fbc391c5d1b5527ea7f8921
Date: Thu, 18 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705552696
