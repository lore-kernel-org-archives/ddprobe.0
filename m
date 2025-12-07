Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCC51EDA03
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765097574; cv=none; b=RGgcESwArbbp1Okuqg9cDa0IwXpp9wKymhHIv+q4P1RsiXaqBz4fBRbjKUv/HrdrreR8nFyUfnBugP99dDd9e8xEIKTENz2lcFTwERYxGPOqXsstw1Kc5ojShYzApqSoUeogKLiivi0io4DS00wkO1EKWxd/8IRaDPcUrS/OOL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765097574; c=relaxed/simple;
	bh=OGVUv7QzdsnA5YMHFM2w6cDDVmjpXYgL/HPJVN0bLMA=;
	h=To:Subject:From:Message-Id:Date; b=MJc7GxpyjYAy4/Mo5ofvXfUoIonNmtgEt/Pt7Od7jb40sBeX53+Xtiraa8yXuPp96/elPeOweWdIH2kms32b2bp4IhC3kHxXOw+2BTh6kPK9G2IMJw/4DEsZFAEsielb4E29Wh6cCbjp42GVH3mQzWci+K4G/KaDuHNCC32PbhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQZPqj3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQZPqj3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC736C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765097573;
	bh=OGVUv7QzdsnA5YMHFM2w6cDDVmjpXYgL/HPJVN0bLMA=;
	h=To:Subject:From:Date:From;
	b=hQZPqj3hi57M8BIAz8vXUWwHJsUnXM4UcXIjScdM6a5vdBZquYOpEaTT3GK1lS/Bd
	 fV3OBFORZtrbjTRKZpiBU4ErN2A58aX+jQRuKJdR3DL27i3f7DOxnhczCc2/cvnU8i
	 RbMqQb0qPmFabQuHIPspOAr9nyHhOd997XGbsJ8hjXHIk0iOm/DHE5DlO7rMzXzNgV
	 zYwh1gIJIoVj2SzW61/SG3e7h9JdT8siHpDZFCTR4eehqLuKqNxuieSbVBB2rmsY0e
	 9rTYFjkMieOJef+AuEc2qk0jWYJ2yyegc9BCYAytGLHO363jlFZJvM2wzWxlsKjsqu
	 fFsnlRfKg5aRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96791D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509757359.19409.11936134069609993684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464bf52f25e1218afc8b31fe5e80f51b5ed057678712458cf1274e1d95a375a3
Date: Sun, 07 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765097573
