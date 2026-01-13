Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1B0355036
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768347834; cv=none; b=rjm+wjS89HN8M+9IvvOeL4u+5dSrj1WICgqsC3xrofHbsbd8FsZtv5iL5HqofwWnlMv4wADg4XOp6v4oSu4buY9zZBo/V0USXJpKOb4Z14D1SPymHj+hmqNOs0LMGtIfKKmiGauPzMCh1hE3yiQuJsJr1Re98Aq2dPzk2hFeNzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768347834; c=relaxed/simple;
	bh=zW0oWrGmxEHNq4+JDVvP2FJFtLrbgoVaPkeTAOch7ec=;
	h=To:Subject:From:Message-Id:Date; b=bwd6F/gNxGKOCZ4+Kruj5Ae5wzOnxfapKBpmJ+oaPRuaTUsNMRPTYGKFQh7f0+hmy8IDOqzTma6gGYY9TMdj9aIXwZ2BXUGCgJb6GnpUEybKN32ogLKro8RWeBycoJ7SAC7jOxkhqDWBQnKiPNDj8FyJyu6V35BkAl0OtZmVuuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqMkZId7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqMkZId7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768347833;
	bh=zW0oWrGmxEHNq4+JDVvP2FJFtLrbgoVaPkeTAOch7ec=;
	h=To:Subject:From:Date:From;
	b=TqMkZId72clP8WTyfuXEuAyq9aghw6avoccjtVPXhdq4HPdzE7YV8AhQxfh1RjI6T
	 2NG5zYft99Asa2M0dsHR8mywvtGzopCG7btoHzzzH4Y5XsBhPBFn7TcY2tPZGlvfCI
	 QJsGmYT3UOE1bz2qvsOXwRMy+DWRZoreH0FanykrWgJIPOYNY+7RrL+NXt5bETsd7S
	 r6IEtu2kKwxTdU3Epm7v+DaL1gteReAb/rHyODCZPTFU4kCw5bSxweNPU2UNJJXweI
	 /eH2WIHzCFr8Z2vbdUMe+e9qv4PYEUXOvngyZ2nXlgJovK8t7UODiGkZ5MnsmYlRCA
	 Q3++uwHWOiqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A3D30CDB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834783358.28241.6893120729427065091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b930971ad1a7e3a639e00ceeb78771a6af02a30e2f07426060583131e45d930a
Date: Tue, 13 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768347833
