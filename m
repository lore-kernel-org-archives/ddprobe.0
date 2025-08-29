Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E15347B4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756475994; cv=none; b=tp8ie0xuMB478/KVZGHPpS/uR4sc64WFxzgIZNYbOXi9On8+ABlW8TYJuSoISv5kp7Rf4WZWw9HRjfianxm6YCfZ4przHyqb3ckXqjObCN0m89w7XCmnIF2+VOOZCj2DdrXKPHw/2+5qoTNKbbt0N91dy/EwXJgJV2cDprrVr/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756475994; c=relaxed/simple;
	bh=buBHpjuchmGrNUstTiwRuzzqMkLTXKpLJbBfHbpieoA=;
	h=To:Subject:From:Message-Id:Date; b=h3Si2jNfh7kl3dv9a9puP2KrIp08/ZvpMcLzHvg7jUH+tU/YLS7SSIi63+mq2KNw+KSg7fcHX/YZ7DZTucYFMJM0kRxqyEqbUxuaVzo7EWKLsB0oDL4MrfBgGWL5ENnvejaJYuvD4P6l6DLRyUwTQlv6ASPQ8QOZwM7+8zqy7CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWukBI8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWukBI8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC1DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756475993;
	bh=buBHpjuchmGrNUstTiwRuzzqMkLTXKpLJbBfHbpieoA=;
	h=To:Subject:From:Date:From;
	b=AWukBI8lKJBssueBA3zVrnvBAnMI10gaSDTUpfr6hXQtpYEGAilICrP2+EWarHycf
	 kqkdPwvLekPQgmf00JIbnYsyFAIYO6nYHrK6xlRfssmEriJe9uGrm+wWBuUWKxMgkF
	 Pb/6McN00hcct4ihfmqKqLT2CJ6YpeNwdv/AtalGMYoxNREzXqV2SLFIRPj9oPL5MR
	 04kH8K4biRe5HH2lDXLXef+o8AeuYU+wNQW6fuTuXH9Xj+665mVm0VubujL1DSPO/N
	 TdvJ0n2C5SDUQQy2G1Il/JFrIC+AKB+1/bw6j8d10FLHQf+Yx5Lj+itg/ziEhGGkHb
	 6VwAMpFsRvknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E444CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647599357.19099.14987325177525153875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2997c79d61956322a50755ae3494927150afd2c2052fdd193332ce3b5e1c97bf
Date: Fri, 29 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756475993
