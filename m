Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00137377EDA
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773753294; cv=none; b=j+p0OzWVItb/M6Lv8Yoaky5bsGQwvHKmFmc5bkTV3aJoEaBBnWCEgiCTLEWEK2QfLOw+Y/ulCQGzSgTVeTDNJzfM97rYh1zu0uKRBFXCmG6wUhml/MsFRDaQbF4yYgkAGebI6PnELGFY5K51g64ihXejJ/xmMXU7tWu8V//QJ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773753294; c=relaxed/simple;
	bh=4Di5OLheO107E9arT7LqlSCZ0nxBzBKoCvh+IiT+48o=;
	h=To:Subject:From:Message-Id:Date; b=TepjGg3PezQ9gUnRPqSSCpVRuJ3mzyFbldexWB60XvXXn/yugBf4qdz9xR6CRXQMdSPW87z07mTIkkLpcXpzuCIhaV0kNcxSJIqhxrR1yBhpy8hJHlN7+4RHG7khEXToPXjI1g7Yoz7RjiX3jKEVAS45JjmNvPCESMD+5RV00jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyrcMJ8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyrcMJ8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D02EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773753293;
	bh=4Di5OLheO107E9arT7LqlSCZ0nxBzBKoCvh+IiT+48o=;
	h=To:Subject:From:Date:From;
	b=SyrcMJ8A5TzwKINJ0UXGyvWW3ZmtHx2NCEf6bgH/9U4fFOxL+6I1G8Ny1q/CMIPGV
	 PQHH7UGl4VAVPbHByI42DNiCGfvuM1d793j05Gsl6oDT0K8ZX9ji1bAm8UpojTTcys
	 CYdth1SqWbG8s+CWYsQHaY8aE5/uNBFxb0c12m3D63aVO4+2pruW3AezwkuUvV/e37
	 BtR+9YnkAwOAc/46L9QQmhhl/y3BH6NjRZYIXYsdb1WC1fbXA8Nat8/W75JMuJ7T0i
	 oEErp7awlWZIYaMpvFkca9Ao/txlXSYr8gZEkYkWScTISF2AMq77riihorZ358uONq
	 weURBF/efhTOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED42FD8768
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375329357.1321.12103176645108894494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58beee32f59de186d0fab5e9d0867a954e406440a752037ba57dd63e7a914b47
Date: Tue, 17 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773753293
