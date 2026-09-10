Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C414CC29A
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789069234; cv=none; b=nj3p3w/TBPExRIYCwGfJcRchyOnjluioFYbRnI60OkoXZQvUWPeY9Q3JW4YJS07G2sbIq5HiTW3dJGQxJkdsAdDMkmeztDi1MnJe2p8lVuZRlKEN6JeBTeqMYclm3ZE9vSKYnlBeESgFA/Icc0A0TLp7Exc8O0dWyz+WeL/NBV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789069234; c=relaxed/simple;
	bh=nFvstjFiw+0xyVgxbXPTdr3YEF0OsRh1iS7eJ+lBJaM=;
	h=To:Subject:From:Message-Id:Date; b=mQQmKPwfPZWD5JvBzGzGZVa8JW46zh7GN7Rikwz633NocAz91mxCOiE4i8BnsUv2OjXMEWcUCkxXdV4PJXoMMm/zBtyocCL1Wk8IPZNAGWuO4k6OapCD75H6a4QtB2Fwz8SjfhqTKbXoet6c/oLtvRGB0tpC9SusYaXByAxL40c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZviiaNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZviiaNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB63C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789069233;
	bh=nFvstjFiw+0xyVgxbXPTdr3YEF0OsRh1iS7eJ+lBJaM=;
	h=To:Subject:From:Date:From;
	b=AZviiaNT85cZDmknNx/SRa5QKcAd9gMgscYvbYx/CPHaUf5cq0JOArNXKestXIaMf
	 3FIrjF0ZOLoR/cdHd9EgZws4jlptdeG8t3DGv4Fs+2aqMb0iKUw5IdUlYk/+1eruK+
	 GG4JkVn0jRq3m8IES3T/D4JKbBqPD8nJpK8ZDMLsZouP7BzBVue7frpQevdQUZxuDV
	 Cdy0JL/8XF4Muo4W5W2B69/rJ/O/4ubCweMaJyYRRzbba/n1q27sWE6oRGHWGrlnQ9
	 v+YPaiHys/urMwBKU8LoMflZJWNPHlLOUTB+PnFtrGB0CCjHGWVhDCtPz/eIrCp4O+
	 S5smiNL5SNTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F77C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906923368.16521.6864676579019252757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faadf8adc780ddb6d83b39d659f6430d9cabcc5ef2e1fd7d21617282a5900ac1
Date: Thu, 10 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789069233
