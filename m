Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8042701AE
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745728195; cv=none; b=lxbE7LN7ilPLYHySMnUIE4BZW+Bn5oQbSlPRmNjCPHfKesn2Snz9s8ViDxZoIv2q/pvrJXDcueh2YB/76ZXQhySxZ6BbhYHszOV5wakFdm5oa4rBMkfDOvXyWnaBKBNUFKYehX24MJ793bEy5TycgVhjmHJcaEDhp4aLV2iIDj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745728195; c=relaxed/simple;
	bh=JZicw7O8hdADG/3fjxt5SgxrboAxRxZ1gwD4MuWX1KY=;
	h=To:Subject:From:Message-Id:Date; b=PjQSX3RJi6ESwbwAHGVs5ALCnDPE+rjYOhVAcwqiV9dE5v+TkBrK0AZi+wB0AQHbDjxujK+CwfXG/UD7RJ7RX/GY0ZTIyc762RbAdNSCIwp6nIaNRBIFI6DcM5TZWvHYmlNnaUQ3yvFAth7NBvBM1laDOFcK+SqkegdJJaBOL3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gExL9U8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gExL9U8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA61C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745728193;
	bh=JZicw7O8hdADG/3fjxt5SgxrboAxRxZ1gwD4MuWX1KY=;
	h=To:Subject:From:Date:From;
	b=gExL9U8BXk9JnZTg/huCPk+b2aIEmvSzQ6Hhbr4wLiqX8GmOZQq1prlNmQmce+DJH
	 KaDIyQ47HKNetjgcoFqL5U67DqXU6Bi+9vX2sEg0ZBfRRboog8a4Gx3Rhc1TznwEqI
	 ZhKojnrmhds9g/PMKvGJ2nYEN2DJORHj9RpcHA7rSoTCyTPmfi071rEx6DsiEldzbQ
	 NMAyeArkHKvLuxHuJTlaRhkdIXZHWceTii3HhzBB6cmZiPaydwjsavsvsbl2NJ2je1
	 FHFhxQVAAGCafFO8aG5d9zXaXJNpJJX4PkKMlhG5p+ZbEMAuc4CnSdQz0OAdfbWHWz
	 w/N0AgjVrP+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A51C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572819358.13885.13908633412536101213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4e8d5cc3d53d7786be320b9e2de30e1355aa999ce399bc71e6045196f3b0cf
Date: Sun, 27 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745728193
