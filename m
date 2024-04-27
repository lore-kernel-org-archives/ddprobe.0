Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810BA817
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714230143; cv=none; b=M+vbkv2nsyoC/G0zrpJ+hH4tFobNU+iULSlu16QHP4dytL9Fwsqfa3JzFkNokuOa9hQ9bfVkUeBuLdoJUKFWKgIhgJDOrL+bapdL8/FmGwtkl9+JJeY5ggi3n/L5VE3juBkhIBA7jXW/NxKA7LZFtMBHJ8uZcNfzMKfGFfxp7Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714230143; c=relaxed/simple;
	bh=iIh8XmGNQUP+L0NPxSuT7pjTYO/LvCCaKbL77B3R/UI=;
	h=To:Subject:From:Message-Id:Date; b=IvkLbBhiC0QvQgfAm6QzxSvn+GEBeb0n0/oDgZLH0ynfeVmP4DyY0edKH/ljUymA9J7Uneai0RaJc10osrJ9KJ8fqfq/AeRyxufDqISeVUTKS7xX6zuwCwTS2eicKLtoO7+gOd7mzz1ua21aPJP0Fq8EXKN8Tv3sPMfTsfZ2kAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kd5mKaw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kd5mKaw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA53BC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714230142;
	bh=iIh8XmGNQUP+L0NPxSuT7pjTYO/LvCCaKbL77B3R/UI=;
	h=To:Subject:From:Date:From;
	b=kd5mKaw9tLmxFb/17R7TFIp63xpE6DVg+bK8FO5qLI+qHQlJrMHxm1gxSsX5nlDsc
	 dWzOjKYviyC9AEJ6SwZ1MnE73RqWG/woQhmLwyiBCiIB0EzzTu7t+75G9Rq/2bh+6J
	 hNjd+jtegwUkhMBDC2JYymS/wI9wzdarR6u/8mrOs7FV+KPBECF+JZHqGfOtT+Kt2u
	 ayhudEJs2ax3JOXwlnveC4Q30PbUQIgQnbIKqEfWH8fZbd1rUZp4e1soGGpaBfK8WO
	 OSFLvxXRh2gUa5uXYuK2gev9fUuFkLx+DNqJbBZ8LDSJBzNS3EFx+o+UazjClflLPN
	 DoKqqQXh+rPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C752AC10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423014280.5731.14928130289438839495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076225d49ec33b4d13103742d019c6c22cef7d19a450e7a22456c9a6d9cc3df1
Date: Sat, 27 Apr 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714230142
