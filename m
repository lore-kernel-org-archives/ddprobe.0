Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BBC2E2DF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768849434; cv=none; b=CCLA2/su1f/2R5mg05k+gThAmPGL4AFz+VKp5oUafW7VWF/UFpibAqTpErSrqR10WALZ07YozrlGdz+zBseLDUuELf6Otxrn0ithYpZh5EV4rRirGK5OHZ9TqYuxNVze7nqW3ewh+O2RfSQUXaIH8nQ4VbGHXfTzKWt+07CYjgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768849434; c=relaxed/simple;
	bh=bBd6AD3zsPszfK73vb/Y5VZjH9GGMIO0kP+R/ciCuU4=;
	h=To:Subject:From:Message-Id:Date; b=PPdJUlFjpwIDVMl5AKWjFvkPNrCP6ccAGo6LxuSPEe2S3XW+xXD2w62FP4TGDSx0vqOe/o3pLGSEwaIko6i6pMHcbBLoCRGBFSyJrOnZLP237KOYKdAc/8OBsIVCIazvBeqK+PVeQ1CWr9kSKBLrKXybgDp3by4rRGyxT2GT2UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+59enVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+59enVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE24C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768849433;
	bh=bBd6AD3zsPszfK73vb/Y5VZjH9GGMIO0kP+R/ciCuU4=;
	h=To:Subject:From:Date:From;
	b=O+59enVkOzmfkku1OTTBRainE3FEeA0FIPAWZeoNOVr7Lqg6kXnexXcDsUhCQU4PR
	 myVd4LgNYF38AAG0epjg2ZzyzlLQmmEGLECB+BqpSaeV7ExzWcI/dlodS46kbOv3r0
	 /hFt6SljghPgSeqY7ZePo27vGsQ5UN4XlHBIIAenxsgnPoY60xgUzFQlOyibZv2Z+a
	 HSRFV9UEBg84sfpyj9r3+2TieWePGotJ7m2s8mvPpOz6gd6SsmvBRSyf9WYIIIUI3G
	 Vu+HTlWh+UykFN4JKAYky55sx/ZS6QDyrDPU+Q7tz/ybBEmyjtTDRvJ6aJ3WXWCzbh
	 PcMsGBAtX6a4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9AD29C5D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884943358.8008.1037241075366790368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac70b2db5c08158695796834813692a68c1f32577c2d24b6d2f4243d44db417
Date: Mon, 19 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768849433
