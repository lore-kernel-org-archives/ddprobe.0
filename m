Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9F41CFA0
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712208497; cv=none; b=WJpDJ2kNabQUaPZ6BHx9NuoNqWQeG7lop0YilU1uR/tHRWL0H800IiAQCcwwik9pDmiPdD7hX4e3AMWC001S2EqIRJHAx22ePOviBPdVnhPpMwbuRO8shIeaXTzkzoLPC3P+5Csyl01mTk1M1xvNgQjjamk+I4ZdMfxGZMxx82A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712208497; c=relaxed/simple;
	bh=EZsC5IlusOgLDhoAefZCXdJa3HK9VWN71M/adphMQpY=;
	h=To:Subject:From:Message-Id:Date; b=YBkn5uW8S2fYMGyWCIbOpkOk25Qap4AQA/AvcTEK0xiRgko2HDo/JVZfI6yzlcYZeB8LzioWwQs0zd3Rzm3dppc8AAMx854hyhKxGS/Rw8F4JJo+xlJXIST9mU80VW/s3v3VgO8+pgRtEzzmSzAaIAVbMIOdG6hnWk4pecN8gfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXiP0Qy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXiP0Qy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A29BC43390
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712208496;
	bh=EZsC5IlusOgLDhoAefZCXdJa3HK9VWN71M/adphMQpY=;
	h=To:Subject:From:Date:From;
	b=jXiP0Qy/Euzf3ztjRBXYTZji/E3S9lfVJrrtl4Zw3lofzmIFpGcnavLHbBQ3IYLwl
	 THjZ0iNk+uc3MmmHAIfSduPwexCsZWHz4oLF6tCYmuU60dKImeFKf6t84xUQT1lQfL
	 WTIfZPX9ogpyZdCHIoZY5BoOeQ5hzdGru+/Ag50g4zYt3VoOLyEC/F1Y8cdSXKai3o
	 +J3P4CrwaudLDvh/Oy/KOm1gtr6xUbex4d8wlcmtOp825aftMkk6EpP3N+cF/6LYOD
	 vhHTsBT1N0MAUANnKlu6vQFRfVrOB0QwLToEMtUCkTAmHVC8hjbh0T+qTccwP+tnY5
	 vH05hJRA1MoiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69393CD1288
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171220849640.23203.6684300045800360825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f24b5497021c7f341b1ed0223b80b6b99d21823c0aea34840cc3ac514c604a
Date: Thu, 04 Apr 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712208496
