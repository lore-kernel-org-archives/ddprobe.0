Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424AB36C9D5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781291194; cv=none; b=BlT83zQLb13UyX+fKzw8JBppvlUhbfhn6pZh4EOCkNjbhBiJhLMm+kmLLAxp/pxDmc36CnY+7CoSCO9obdX76sC5i3pfsvVFSxdFB/sFoS6NPlX7RAkWadGx81KjcGESIzGh0sB+Ehz4twZbFCPoo1C73jLCC1sMV+Bf4XZLyUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781291194; c=relaxed/simple;
	bh=ypYLDNOHQc/DhqVj2jQ9H7CkKsdl3rYQe8BwXjBC0u0=;
	h=To:Subject:From:Message-Id:Date; b=h+iwtDDM3MJIW51tGEJOq5YiOBC4Sszle1mbTYUvMw0f9Bzmy1/PYJggXvF3FcXF25hhgkVcWFJ9JHlR30LLW33Z10vo//ytSxjO++Tz3DGCSRvQYqablViweU38zRHzBXkVXaVFdhmviU/EnOh+c3bS7Y7jeRPTtujiu+dih2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjhjilKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjhjilKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3153C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781291193;
	bh=ypYLDNOHQc/DhqVj2jQ9H7CkKsdl3rYQe8BwXjBC0u0=;
	h=To:Subject:From:Date:From;
	b=gjhjilKMON/nAt4s+MYfFJ6BCSIzVGBinl6q87GRhPOl4N+MJD5nDmndZXW6jJtBl
	 8zL+fiQsCMhKAG6+ddfmZnkqp33Z5pb+I3zk7GaSHywFQVjW7xQcMMNMAxuWw5YuzT
	 bq4hY4SPXNtCJKy1/+RoOzaU3eTsdF8qVZ9/doAHLugBlxGklHk7oUCMa6HJerTe65
	 J+IliPR6GU/fUHzbfCckDd5mD5x3pxIDY1ESRzYV624lo800fSUqUNaGfNehrw7waR
	 1BP23mv7mX6plCjdoH1OvlJ2aAd92OnHWUAjZ5qX4JKKflx8Bpl+TtOjWcO7NofCCr
	 It3LiuooIYoIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9AACD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129119369.20233.1680980416687345813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a021a5ed3aaf9f0a3ff44987248fb7f15c34912c5ba9892e6e5c0464e1f623
Date: Fri, 12 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781291193
