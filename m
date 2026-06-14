Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22827279DC8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781458594; cv=none; b=qn1mrut2u9TW9ka0LwY0SkQK8d4yZOywT6vZCj/r8eEdBHFuzrlK/n77DXZeJJkVaL2T8ps8JpuJ8uyHA0aPvTsxzjfUkg6zETCKPuaycPscd1xMRTh6lUfrcWDgCLq+/1siHP4pZnPiMmbUwn8FAnMcMcc3pOWWjhRylkm+SDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781458594; c=relaxed/simple;
	bh=2wcK6O5VXE4AlKjxiTFnYHj8LLVGVBp3wraE3A9igHI=;
	h=To:Subject:From:Message-Id:Date; b=GrXU6p7VWGTZ3+SltTqhiHFcihX+jDyGNvZPDLWJE+wLPsokOngaVd+glNFVU9z/GBdF5T1sBORsX7yT1JAUkiRpxuyDvt39r+mYbknsQa8Mzj7Y3M9tTEASlXXXJLbYcGXdD1X64pTczw1CSefjNTbw9eRfPzR7JdO8VnwWxbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYgqipj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYgqipj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFDCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781458593;
	bh=2wcK6O5VXE4AlKjxiTFnYHj8LLVGVBp3wraE3A9igHI=;
	h=To:Subject:From:Date:From;
	b=gYgqipj42beu4+tmnfWCjyprT4owMbGo3mWVC/PDDJyDVJvhBnvWblDg7ByoGUrBj
	 SNygkGsqyuj6pyk+Xw5E+ZuPI95ZawNpKdcNzmndBhR+Wd/PDoGSO+6b05cNuemuOq
	 lLyEfAs7aNjrD706Nm64LztHIqMTjmYsu0U3EmR1G0I6tJNQotSKlPyrhsBNHMwsvi
	 HJqIKToDDaKitumGsS9XZ0GknHEfxnUb1Ej9vZ1PA8AqazWcVUCgqXVUkLouA0xoTz
	 TShVTW6alE01DI8m/7rQKn0QP1DulYHYB73i14ly3anEBLDOnJMErywLhC4lN4oOVO
	 WOe48hx0UZUoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0993CD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145859371.26018.14880407090300571375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e01f066813bb79f61e6704cbc0ec8b230332d671965ecf1ac5bb9d7226d6244
Date: Sun, 14 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781458593
