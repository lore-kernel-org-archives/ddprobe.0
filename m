Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425A31E98F8
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747870194; cv=none; b=bCpLf135zum/aKG/E5L5eKbxlWTRrh1mbPb6I6FWzBE4lI7onTGzkZZiJ0DYIEZqCQFsHLRTbrLF54E5nqudyi3fC5/2u0gBoPoIh1Tku05F/zmI8fE3cqZOQhMQh1jWyPAWQ8k5DmciVdUOi/wpd4QiFFFPR9xplf/Y2P0XZpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747870194; c=relaxed/simple;
	bh=IiRrOoD1w5t5y8fQmUiPwQiFQU+y6JZBSAGyMU/4W+Q=;
	h=To:Subject:From:Message-Id:Date; b=ralssqvCWWLil9m2K126zTYdLOYtc5V7gV6tJ7v9ipzWxT7e4tnIOMHm0pwEccz5CTKbEkrzEIUBva3ZjklP8h6W3mTty2dDhFeFY0u1USV5+ntpZeZhtG7X2BQHRb5QHQaqhQ1I6ZBkR6pU0aG9gBkn2ALjIyVFHGlvgsJ+uoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/Tp6o/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/Tp6o/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB689C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747870193;
	bh=IiRrOoD1w5t5y8fQmUiPwQiFQU+y6JZBSAGyMU/4W+Q=;
	h=To:Subject:From:Date:From;
	b=m/Tp6o/M/iYmMs7RMYfYReJ2xyy/ap9dm91Sspx48/CsHmlDVEt6TmmXzgLdLifD9
	 GJnmTNrDqi85FPBf0t0fPS+hLUco/OqYATeMwGfyBq2uwjNLfR30jUzuG6dOkNIVVH
	 LglRo/bkX8GDNGk1gdiBNa5IYYZ0KSllupFJPuvsnOX9q+tu7tBrPdATl82cUy1e3k
	 WjB7pdQeWvbO9tutLSq+HkkaDLsg+fesI82mj02y2YXx+Ovk+vMaMt1PTi/2YOuD2a
	 M7HErFqkaSolILaZJyEnRRd9rDLXNcfYdyHwoKw6ZgqUFAocD7D8qGjR7JrGfRt7Al
	 XE+eLdhFMUZMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E1C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787019358.24198.1243972996619842486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67512a6c06784685939f3d5bf10dcb997c0f0b0c7c8de5e437ebf7755c15836
Date: Wed, 21 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747870193
