Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB714644E
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723318554; cv=none; b=EvF3CPEVi1d0cUr5goE8Vpgq0xlUscneiiZidKhbBLsMEmzZVHS0pvxvxIMHDwwu+wSJLqGDpiFyoTNSD+RM5smAecCdZQ5U5q0iVUa261j9/iVPx/gUPfV0VqvTx/KDMf2lcu51WcX9DtBVW+wbRopkUkogHvgxrDgrEwgjEII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723318554; c=relaxed/simple;
	bh=SbDEJNrW+z/TWsxLhPbxJMO7QRvSPUP7k4GommYoukU=;
	h=To:Subject:From:Message-Id:Date; b=pAluD1sBB/0NMaVOIPcf1JdUhIW1PXydaVtTdSd+AV/unTwFaGJWQw+3sGe05xc72v8dADI7EKQV5IF2OtefACYFedYhMJtOgVrLwvgWIzaHkfCPEtnv3q+agkSX6+Yi34ib8Y/DotSvbl8Ej28lvTQQe7Aihctk4IxEhEiZmUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfeRoNDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfeRoNDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACE1C4AF0C
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723318553;
	bh=SbDEJNrW+z/TWsxLhPbxJMO7QRvSPUP7k4GommYoukU=;
	h=To:Subject:From:Date:From;
	b=QfeRoNDD1JmhM4cMBxuXGGeKBiH1EfBMhX76Rfy4iv0HRi0DLgoDKbeLiShh8mHc1
	 xo2K5a1dfnoEP3ljjGnm9Ty16jyBqIWr2ebAzoxMbaI1c+NyAc7QKALWIc0WXBvcHS
	 H6LrT+ZeI74zzDvwxqZ4VXCIyhJavH3BIXiLp/hIOOkKv90rb/mb3i46dhOJERR8tq
	 yLV3YqDoi/nuZzvTOapcW/dCUnEEzuUUrKlU82qLDWmuxoFkh4TAH5hxjTtVadGGHK
	 quPi366Argd2cDQULI6tRkPhHtji1bTZYVRo3JNTlWjnR2hsqZdNC7hhMEPg0NqqbZ
	 0HDafplKx2ZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94416C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331855359.5431.3840147955432152796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653d311ca8c76b3036d0a710b05e3bf55dae58ee6919128c407edc71cb304642
Date: Sat, 10 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723318553
