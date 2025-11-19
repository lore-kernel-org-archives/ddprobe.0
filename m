Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5382F290E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763541114; cv=none; b=nbU40GYMWDtgnQR6xTWnThtSQER/efY4wvxgNhN3D7ftY7JS5SN8fOz9+fPx8ZBeOxunwpBUoKg9wjBPng4didhYP295plLf+4xdcvNad3hiuiYUK2wYkgqP6O8uu3mxTXCb4ISyfv7U08d68kZQlIj219lPg38vrLSltn6N5ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763541114; c=relaxed/simple;
	bh=orcP6WNI8XorVW/44n0aRJqRtlfOGPkecPOV45Y5y8U=;
	h=To:Subject:From:Message-Id:Date; b=pFGXjDwiVMfCtSY1AqQa+DOb/A/HIE5StO55VBES74lJ4GQBDpDz9Fp2EnWzWUO1fe8w10ABoeetk3oQT9MlFDeTJQsVCxrJGRY5GC4V10d9ib90+uqUVZTkj5Re5OD/61OhlFE2gR/RHAEskp4rtM5roAj2HZe4FP8AtzYTE3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrPg8gkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrPg8gkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7BFC19421
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763541113;
	bh=orcP6WNI8XorVW/44n0aRJqRtlfOGPkecPOV45Y5y8U=;
	h=To:Subject:From:Date:From;
	b=VrPg8gkLK6dieuUyT90zuY446atZLlQ7fxugKhBkVcffa3NA5KHtzBSw5WX3ziCgG
	 ZzZ5WNTQguEew1LVs57DUG7SuN4JID0bOLU3rik9fPH380ap8j15aZnv0jIlzl0erW
	 qBd0okv/xH//p3VKmFbWyS18X/Q/FzsiQcuIqano1twBKTl5NHvrui4p1R8YY1xCwu
	 ttPwUH8zYW8r1lY7F0Pgr0kC4YJ68zqXAZw6VNTLUGJMDzxPuvOHBLPlZbsbr9HJOP
	 WyJIQY6k+J8prGgPqEEvtEwyWtcPOGI6A3Re8dm3/ct4Hb5oqnxK1Bk5Vj+YeRtnfQ
	 +EF1I4ZRSXX0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9183CCF258C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354111358.8330.8011682938106959557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faac1d4c8a0f2175747a67396e8db03570ed121c817395f5f7b1d38f668c92ed
Date: Wed, 19 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763541113
