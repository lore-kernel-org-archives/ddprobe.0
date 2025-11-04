Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48FC2DF138
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762286393; cv=none; b=mw5jvAnn25lT+CTeIIvo5msrqpWqLF2FSyHekrOd8joW7dH72UVB8KcUbemaupKRVjh9CPryTabDdqcTtv8QRHwx7f8/5P2leiM5NfsOP1A8cIRbNmREYgJcBtLNG/rKhI8Ei131blEaYWRb3MMJIfchwjaMlzZ2rrmD4lHwEsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762286393; c=relaxed/simple;
	bh=upA8kSgTCpfZ6Mj/CVpg+V5cOkVc9dICSxMnBvVC6W8=;
	h=To:Subject:From:Message-Id:Date; b=XtIHW+DnjtedY20v/jubPnoXQCMMsvVPOxRXcKA6kwe1JonoSdU+O+Ntq9ky/pyW3MWBh+H0qVRymDJJTv0JDmMt1Y9XMINij6F2SPL2BIb2cv32uGx4QVkp7/1uS4A1O7B1hsbjYSXPR5E/sqOYjOTFfoczltghGoN7MS7q2Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ3cYhdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ3cYhdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ADA1C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762286393;
	bh=upA8kSgTCpfZ6Mj/CVpg+V5cOkVc9dICSxMnBvVC6W8=;
	h=To:Subject:From:Date:From;
	b=MJ3cYhdRBoH14YCQ05LfzXqF7p2nmHtE4Hr87gKv+zX3vG0aa9xh6pPR1UMbSUbLm
	 vcff0IPJKISoYuU13WOLUwRuXqzI9MLvNZOP26j9EElMWykyZOfeWxw/ZEqy27yGmg
	 39egXzCVrepUrklMhNtjDvM7rkJsTbM380RjEneqHvwx2m0gf+LX2UgqdxJr9TtsnB
	 ZBArN40ZFG5zJ0W2Dp4HGVrx1YoAI522mO9NVeiK3O9CjV8VMlDu4+HSwfL+u05IGv
	 xa7mGz8nttZGw5lfUgpgPs77LqVPQ9a/70Bpl7Re635k24d3DGZkSMgD6NSNzcZCmp
	 RxejvDIlWIKZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69CCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228639357.21989.1457968801231509426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314c17c3d460bdd9f23da43c3c8d9187bfb399d2336e20310af1e5f5dc0bd546
Date: Tue, 04 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762286393
