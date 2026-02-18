Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D56129B78D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771424094; cv=none; b=t2JQhkScQUgelgOhKocLRjj7E5vhC80LW5afKHfpx9/31hlp8a5zujSHmeAYuYB1KYFom/Ux5YNva3iqBA9RfEzSgrP8KF9HycT4xcS/Nq5D22JiHMlLYYH/ClPwMnnULIpB1TrNzbuoFTH5I3Bmx2OYVtAt+RaYD3Ji+mNHrOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771424094; c=relaxed/simple;
	bh=Z4syqI6Zc+C24q5+Ycnr0L/jw+lS47scnH8UwjSQFJA=;
	h=To:Subject:From:Message-Id:Date; b=e+063GwSHT9w433hiTpTzzyrtleWHs/d3fDNE1BzG7MchskL6i3nfsko9RykNxuJohqgiCSVdyjXcVrk58wjXOLd9fCu6KvOmxJ+rGQFovIBfBUC5qsQ5jDTe9WARsf5JGg4uoQQJG9SIqfd263Jzok/olVjZqxU0NpGkhvaGas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGBQmDVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGBQmDVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39C8C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771424093;
	bh=Z4syqI6Zc+C24q5+Ycnr0L/jw+lS47scnH8UwjSQFJA=;
	h=To:Subject:From:Date:From;
	b=EGBQmDVf/ec2c7xM4QaatanDJw9Iw5y4UoK2CLnWZlPiJWaQXNM9hzaNjG5Bl4FET
	 E8p81rD56hp0/0fmHY5RQdxOJdU4FjmZOcQcIm4hwOwYcsexQa+rq1IfUHAYrA+JXX
	 pnxFibwqYLdmjq1Ie3wqMdYlbR3oM2NtEGhnLHzrOZtDqATvTbsMAiaG5tXlHR2WEE
	 uBtVrXljC03DzsP8rFvKlevbrKXPHEZ1HZqYhOJFJCZZgs4X4ON6AEIYidz7CfgJGV
	 5RojUhlTU06oRsWbJeR+9Dh26XHmcNkdY4YLhpC0cOwEbFjUioPHFLABXSsn30SX6N
	 GBGuskN0QkciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0BE9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142409358.3594.13046856350995709535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ecbc241f310d5741c22d3dfb99b10c3177937b4ffee86c207de043fe9f41c9
Date: Wed, 18 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771424093
