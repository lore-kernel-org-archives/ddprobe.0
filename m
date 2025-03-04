Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF181F4720
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741075134; cv=none; b=F5FInNxiw4BNgLY8TgYTUffQZOughe/Av/tl6cN25DZTx2CKg/NhxJbPT4itGU18WTGodeQSn7AWTVS7wemamln4Z0O/D4mF6PuFtTgTpr7pQkXu2QZnDLIq7Z9d5j3upIRiQWaU6INne/DrxhZdMFuGtVCpm724OdPpV9BZwyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741075134; c=relaxed/simple;
	bh=ascgO+40GKBZTsHHrhEte89EcSdP72LwEEOwBVQHJ58=;
	h=To:Subject:From:Message-Id:Date; b=i+UnJBfWT35zq1BKYCuzB6p33eK4sQic0pHzpS+sZnshfdqPUZ6AevgOW5kTQiOyyZnfAc5tZCZVjfsGxkoAi511lihnfzJ/RCEJpduez3ZqEEfhdD7ZuW0w+fze3xvQbpqPmntxdo6BcGSNVnhz99l97SXIF2lyyHIuKl+W02U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YugzSLY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YugzSLY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DBDC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741075133;
	bh=ascgO+40GKBZTsHHrhEte89EcSdP72LwEEOwBVQHJ58=;
	h=To:Subject:From:Date:From;
	b=YugzSLY2+0YiiEyvq90ZkiWe61QootjacRUq58PFqGB9Rt3ZcfdhFw4s4VE+xMMOq
	 Ewo+C60v/LOtQ1oi2FWgYxfQ5BMdu1tF1NKdAxO/CqBgEFCB27o3C+L1rK75HACRa6
	 4jw3CnsdJ3mWfVOyp/WHx6udeQhBY9YARGxKNtVgatWg+vpcFk3SjblUgSuS5EWtG0
	 Yr6kPNw5lSlUWp9f/0Z4iWUlJhiJJKpaqGoxcakzhDwf0I86+34eePJtB6lIemQS9o
	 MGRdT3slcSIYzqiHk5WSGi/OP8sndX9mNyGJ0NlMjRK8m+1T0jDDAsKJFYLWVkrg5c
	 KD2VSEIR+VGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F583C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107513363.20506.10505571648034297750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e67fa4460b6fc7c776222eadd46e084a658ad0ff1e5d663391adafe4633a614
Date: Tue, 04 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741075133
