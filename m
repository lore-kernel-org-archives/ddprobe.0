Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117883090C2
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776530254; cv=none; b=SE4rgk+55hzHkNvQ/dV+lCcn377g3DFKs8ai+rD4rhv2obg1Rg6FtHONgYLKGLYoY46bnA3f2yiW3I1vlUVm4TB5z23yDAIhulx5Lo1f5B7yCEFxTnPRxv4tr6U3uouoeyPwAuJUFsZxJ3Eox+COqjQR96eh7sytOPRtzIHOFSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776530254; c=relaxed/simple;
	bh=pfL0v+PgYta4WzgLhRPNkwxzH+B3ORH8vK3+JOt0VzY=;
	h=To:Subject:From:Message-Id:Date; b=Oxlsa2/ZAnvkXt24C+I6fAmOrnw45H0PSt+E5r21Bb28KXgYGSQVGtuub+1yhRZ20rBDvcwZ27Mnfe8vZetgYrpccojJYgwJeovSv9e6U7Mvry7JV0kWEPh0ai1JMaBmKIKrAVDqDu1H0difdf+4GJMGq2xvv2ZPEeqm5l5BBBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAAgJLX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAAgJLX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB860C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776530253;
	bh=pfL0v+PgYta4WzgLhRPNkwxzH+B3ORH8vK3+JOt0VzY=;
	h=To:Subject:From:Date:From;
	b=OAAgJLX2uxxkht2fFNh4Z45sdMCITkGzUYarlZFk1VwFjgllJisjflCl0UeDxb/7s
	 5inPqNm3UHkqHahFPPVLgHF+QaZrK0vAzJO1l8K5Txfnjwcug0zBquzkHHtsL5hUhu
	 SoSQXRaaSQyLh7C18vscD8azwGhXavNpL6EJAm4bbRfKpWQoftpbdZRJCeZuMZderQ
	 C++zyQYlgWGvfGOyHYRDIHqqX2/yiOj5Qtn7VTz3mXkoAEm00t4zprnL1aL03iOdaQ
	 7Sh1VXXbr741DaFHG6VWS/aA3QjdDW8YjqtXK7A0HJsPfbjwaAPkCAmZb7PRiqR5pG
	 6Mz63rpFsGgUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A991CF99C8C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653025368.32396.2581761851522105141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb030200edea9a2f2cebe066b8aeb3ca79b34e2fa79cfe74f4ea0b71d263a63
Date: Sat, 18 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776530253
