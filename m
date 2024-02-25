Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135BA10F4
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708824497; cv=none; b=j18ZT6VvfcXctGR9jXqt4ibXhMObISvyxoPgyN4XxsrGM1gggmq/gxxGF3xkWpSASx8ymfsmG4gxWZ0YigE9Bn2HQRVkOecOycXwmCNY/ITrLgaaCkFcuOLBMgw6eilaVdLXieRJtYlWebdweEmEmdsv20kEAT7DhgLfizD4awI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708824497; c=relaxed/simple;
	bh=1xIySDRyWVzz5FcpmhsGYc+m+UshvyNYrC04T2QbYqg=;
	h=To:Subject:From:Message-Id:Date; b=Vep6GiJNRMmZ7WHyxkB1VN/0lNRujDL7+F1vYWiiM/FTCcngQHRc3gcpyhOZnJa1Lx71dc4vM9DPkkxpsy6YsWb1IqbO7yGoJ+lVY+QerwF9v5pZTVm02fSvfVgSHmyd5wY2SySQkxxCGdLdDidP5UmIlSjBXTzZI9BOQqVUNhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dc6iyAtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dc6iyAtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837E7C433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708824496;
	bh=1xIySDRyWVzz5FcpmhsGYc+m+UshvyNYrC04T2QbYqg=;
	h=To:Subject:From:Date:From;
	b=dc6iyAtZpofTvRG6eN9MpKpi8bVS0a1zjEPZ0zAmnv5X0oFCGtCNBIZSCvt+thTr+
	 aDgqKYrESmT18ajge2Jerza1gwf8mLT2Uz71AqHGSazRHVbEb/cN45TVsFkIQpYgPc
	 wMuzdqlCNn0qV6AdcuKbofu7gE8qVLz/e0d0H1fJCIp7g51zHB7hp8in3cBYLwtOKn
	 t9nFG8gXp4W5jl61qzMZLX1WBR9FO3uxWxsU+oHOAZyzdWAyHrF0RCJro6HfsF+zog
	 c/xMPI0n+Uu/ebnton2CICNO9GI12gQz3LRxlI/8Y7a6AcbMHvHBvxl0wk9sTqvVbq
	 MwAfitpXlLD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644FEC48BF6
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170882449639.8099.12373773976440322024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b82d7ba5b3716acd4572d548c2aa9a745584583efe9ef2755111cf032344b7
Date: Sun, 25 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708824496
