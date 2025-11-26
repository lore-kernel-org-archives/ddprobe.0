Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4AB283FD4
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764180774; cv=none; b=Ufe3RumIViTrOidloQg7D8hfaubkNoax46OgeQl6F0AfeXg+SPA78p8peFoXFYxsh0Xy054+FetcJMHVvJ6hpG0EGoDq9pHCrY1ye+MafK8M55LF+VF3Y4vE8WBkAoJvVwUkVyk1fFbINNPhvonrSKRBFQQKHHwhgh/HUzU/vyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764180774; c=relaxed/simple;
	bh=vwUFd/kEjim0ZcKYxOu/C5GTadXO759J7duRGSyV6Us=;
	h=To:Subject:From:Message-Id:Date; b=qesq3bhRmciUiyESLJY1IUQYjTF0M2y1qcITco9kSF/yvEK6eFjqE46SWNwYgUGVqgsIBmTA+R9F6qwQvnDNzqsm+p0sXFdcLiPFTVn/c2b4o1dP/GAh0oHFCenVjmF/Rejk7TtcBdDxD1tlQ7Yw9mCS4ig6xz/JSQH0/5qbAXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPGoor/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPGoor/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD48C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764180773;
	bh=vwUFd/kEjim0ZcKYxOu/C5GTadXO759J7duRGSyV6Us=;
	h=To:Subject:From:Date:From;
	b=WPGoor/gRO5NMnBlQeRkGiJJF0v4RrApeH5cKcL55EeqfkAnOYPpmWCQ5A9xJ588w
	 Rp4hPH5bH28oOM/Yr2Ypv6csp4jRk7+DCI0aBs2IeeC+JxwOKYIeYWrXDe3H17yAAx
	 646nffAsOqajU7XUhtaDxYexya9lJUf0ZFY9D/KxsJFYe9LPDwjUzVKrQdtStZWyPt
	 hoXuX+CsCN6OYBFj4b/WiBFGp0rKJrG4zlHpkwb8xOF3q+LLIsId3xz1fGUtXJySOQ
	 ZdN7TIX6mukf3QnZ0EPyG60gyrLaesI5HV2McRqYyPMvh+aYJiJiq2dh9DLSb7R86p
	 RO2osVk/RdwDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93267D1118E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418077359.3831.5723584189450028432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ebe41c150e4eed6e508ac482b857174633dbe5d55161627ac6d437b8bd007b
Date: Wed, 26 Nov 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764180773
