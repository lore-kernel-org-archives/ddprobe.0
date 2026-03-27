Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171932848B2
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774650894; cv=none; b=V2KJj0/6RRYOmb82oe1Q0pGYGdBw9I96NhqEmsvZppjGR1csu76aNCufM9rABD4pZcRSeACBVhOrO7OUWnUTMxZWbcqspxM+oY5fJ817v3FJEEYsmF+Al4dQJ+I8IEiosrqvv1gaARIagtPzOhNSgZvnmM/FzQ+qU+Gk+Jr4LlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774650894; c=relaxed/simple;
	bh=2SgJa9ThuTvJb2O90g7WQwgPbllD2Sbp4vxlntI5Occ=;
	h=To:Subject:From:Message-Id:Date; b=RcAHHgkeJF8VDIUFCzlzMy9nnROYdjpBViCsAJ2o5dHsgu5PKHYAs5UHCEOyxlsFbRR9Uc/NR+dq799QVXd4oT7Y5549vPzFzSnvC/lAJhr1YQBSTQ+91Q/aOXda7fYEcDu9KwcepPShBG+GNWcM3bk5Fvl7Xw4w77Oj4/BcfIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5id8EKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5id8EKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9109C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774650893;
	bh=2SgJa9ThuTvJb2O90g7WQwgPbllD2Sbp4vxlntI5Occ=;
	h=To:Subject:From:Date:From;
	b=j5id8EKyXaHkLxxNQYwy5YDmm9DcGKC0QPWUv1O6t6SgVWljKcPX4VvKIX3Y0yJou
	 i/ccYGZ/OAonHfBLcBMbTc3JExyF6V8myQL6JM4Z8dVhT8ew755NOywmIxlnRD8Vc4
	 6jze6AoKXnSDulODNJB1Wz1uFj9AZoEDhVylRNnSF9Cx1MfRt6YPokcB21U3VVMByy
	 lakb6+Pw/8Qd3+HqvCLSWFgV2VrDkRcAMsH3EhAoiKlj9iRJo6LUNO/tpXbsJ40Lky
	 DmLUbPWjFkZ2Eb5jak0tPVOJuh8vPROlk8fndA7ECDkMExVQKdT5jL0rmDJud018W9
	 PEJ/ystGi9tIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A6F10F2871
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465089359.25374.10038061619430669394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3114e5e4ee1faefebf127bcf0a13a98694725dcade7068c3c13aa9d766950a75
Date: Fri, 27 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774650893
