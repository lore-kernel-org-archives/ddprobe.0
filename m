Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337A01DAC8E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736161554; cv=none; b=jYzjlFwTOObFju2nqCGyW6uhnT/9r2lbivWDt8XpZREISRbUETZ8oky4nos2/xZwK+aChby/iCV65FwcKPYPT97V9LS3IJPqk5ARTPbVIJMDm8IeQ+FN0KpQNmyjcbRezG//7xXrnlmc4ieISLmRZ5ii9uKuGqDo7nRJ3yVi8Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736161554; c=relaxed/simple;
	bh=7mU2frcQED3UXlQtfKUTNsHfZ3c2gAN3NUjA64PME8s=;
	h=To:Subject:From:Message-Id:Date; b=hIShyUsxuGKzfGrNQZQqRwSLzhmIom6vieSwqh2Eqwzq90rmAhvy+m6SlOiOR52ybZYA7Jk6IOStKz8H978FbBxpzasPhRHqA1HVpgMGiAcDAnLe6UarahTv6OJKz0FElN/5tDijnTOxxzMUnFV6KZkpLJFVmOlRFBJgxj9Rp9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY17TCLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY17TCLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EECC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736161553;
	bh=7mU2frcQED3UXlQtfKUTNsHfZ3c2gAN3NUjA64PME8s=;
	h=To:Subject:From:Date:From;
	b=MY17TCLcg5YlkdjbFXNUHjoiwddKhBuQGNb3H+YYO0G8xNfND0oSCv4HLzVFUgtPV
	 czxY4uL4s4K3EzEC3PxOVdt+vOO9tJSGQP/puoYbBfsSXhLsWU+pTeM6huyLo8ACk2
	 3J/2AMwaaXOat9qGv/mCR2axntWkmI1i/zHG56rgqvdWXGi5qLlz0nuTGHdk4Fmi3W
	 VC9P+cwqmn3s6Wy1WL6givrH7JuMMdDKTTqtg5hXUc+BQmzXgAcn0Dyw+2mOIXwhgT
	 l7NULBxZbj5I0BO8wKa0mcjJzdFxxPg+vTcp7xkZECsSoZB5Kmqz71mJDpg/FPd1vd
	 MMLAkhG5ZhbfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB1E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616155358.25871.14921524201102231696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1684cb69d2664a0560701078af6d154d3c77fe793ca3a23e221601779e71fb51
Date: Mon, 06 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736161553
