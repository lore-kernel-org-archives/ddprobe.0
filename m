Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36013F4F1
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728181554; cv=none; b=UQht0brDOEcnjmI7F9B3PnFVKTSs8nhHHXkdz1g9Rg0mSv4EX0eOG7pUWK/5hPaRUnR8Lp7R+RDVc+5HRO21KB+hz5/aVfV+0kjEDbDRYseviwBZ5WGWggdms3HAmnX5Ex2ckPQPgkVOB3ZOAg77W3FxgLQYkKU3fJyvhwqj3iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728181554; c=relaxed/simple;
	bh=K9clhUJbH7ZrW131mmhpWcaxwaKNxBLmo1tfB/SmZwM=;
	h=To:Subject:From:Message-Id:Date; b=euG95Phh1UQgy4McekP2AwwFDSmAVdKcrVWlSVEFnilewQkL/StwNEUU0BXOhaIAigxj0op7huiQpKPTL00fWyvRcNWjfoEgJgR+choZhE5tjiTaeZkR+rdWi+FjkQh0KFv3zXYPLH5zjRgukOwu7fPhW23ytY9VFapO2rTHHJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENF1vK0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENF1vK0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE09C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728181553;
	bh=K9clhUJbH7ZrW131mmhpWcaxwaKNxBLmo1tfB/SmZwM=;
	h=To:Subject:From:Date:From;
	b=ENF1vK0QgTDlbkOMe3MgsFk3rkF2QNSOD08QnFw4ySJJjAP3m5xPF48B0z3qGHYjl
	 AC4/1TJF4tISCfYPkVKN6gpxCpxqZLu2XkzVXL8fCz4Q7FqID/CRWGinrMuYywggm0
	 rvGdmUtUk9JTJqAwawxltgUCfnsp5THFOZ28HinH2OLzXsJltmrxkg4VMVql58iTos
	 ZwKISce2YWGHv7pdTD1Y9bUv/g3/YcRC8lKKB45C+TJ80GQUKcGg70oh6G7kkcPYMj
	 Cn+r0h+6HHHpsIySbrdejKsVC+VX0xFegqgTvkWiZIR+C6E25jkAXZ0zDfpYCmssRr
	 O7f+ZF2mOL+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6392CFB422
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172818155363.4742.14521683317486258485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81033cbb771fdc2ff8b92e65e578c0e74c3aa0d2c8b0ec802c5953b7040b6f5d
Date: Sun, 06 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728181553
