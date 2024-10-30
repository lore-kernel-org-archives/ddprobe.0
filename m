Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334491EB9EE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730295954; cv=none; b=cG3Y51yjqYipeD5A6OxbRo+xFTCOLpVwNq/t2q3oX0S4Te2akxcq2BYuh83mzmhIi6qQIpfyvxZsLVNU8Jvc8ZmTIDocsOZpmmXCpouOXsGdXjRfQAlvCcjKzJWQ2KEdLQ3lAvQH0LjH4xVbyTvYxhCh7EQJFRCkupftAncdJ08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730295954; c=relaxed/simple;
	bh=C1xd4lNKrBVG4uLD+u2L2arBmOXOMO4hcPj080QpAMw=;
	h=To:Subject:From:Message-Id:Date; b=Jqee5AuVBf9Q6lzAfR84IuqMSLlDYvTeNP1ZVqtEyaderKsVurcho5n5IL/COJcJkso4av+dKlMSL/X09GqFSAgrbkYL2N5pWh1bj5lDfgYo6IIlFE2Z2/BgoUxf6d7ml2kmlS473BIJX+z+qzA+oqc7lONSuI8lj2fTRAuabJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9wDqFzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9wDqFzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A41C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730295953;
	bh=C1xd4lNKrBVG4uLD+u2L2arBmOXOMO4hcPj080QpAMw=;
	h=To:Subject:From:Date:From;
	b=P9wDqFzv7OkM/v/Uzzwx18U7+l0zBsiJPm23YYct/v5Uit6nMD2D2D7YEMyOYY3rl
	 Yyhb+E+CTDk+IIMNM+KhI/JXA5MXDNuC3+kIavHGP2s1BtghSC36ZN9WM5FuQKS9cs
	 AXIdJTUamupA3xk4AcQMutcaOF3L8Uvc7lx1uBOQQu52jeLKccteV1IARXGNWTTvW0
	 r9o+sgWPT64GzSE2SpHC0/lEluKWgPml3vCsOqDx3bi1qOfSMFdI46kiaMtjpNCsnj
	 3EXoVNC0obOFyA0vk7jGgDpr9MSC3tvU6iMrxdRopM/e/moSCXC+z7k6SbBmGjbl/U
	 smW3GhlCGxwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D31D5CCB0
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173029595365.21435.15703368914761207586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f177828f47420ebcfea4f2858c45bf099c2704628b9439f6b2d25dc309aa9e06
Date: Wed, 30 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730295953
