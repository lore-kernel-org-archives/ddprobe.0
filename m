Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4234A1DE880
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742280594; cv=none; b=JSmYbbGyO+x4PsxJzsL8beZu4z5e6jDR4p53fNHzEy93Eggbe4GxXs2McRKOF2q/XK0dXXhuaff3vgKB/t7ZPUuEag9HyQmoP6YnobKLVJehYXkHW+ZiF+lf0ptp9sLjVCV0JYd1epW1D9bTenU5aW7h1E72es65jSJc1rv3OaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742280594; c=relaxed/simple;
	bh=7ZPCPkPfyR8llIDvH0pfpqwHYUyloDJkWScwrys+2FU=;
	h=To:Subject:From:Message-Id:Date; b=t2yRHeHkPtfQwBuobChsShV+Te1ri4yuNZpGWTXffNupYnQZpafBzwiuegmUZZQzPmM3720qmbTneMYdggwB8X614aJ8pEEmCNURnTBxxjT6mkx/vfcWt8vTMf/UuuNfmkWzEYlLicMwhqxgqC50pBreeA/PNsufJn9+GnE65cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRsuXxgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRsuXxgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCD2C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742280593;
	bh=7ZPCPkPfyR8llIDvH0pfpqwHYUyloDJkWScwrys+2FU=;
	h=To:Subject:From:Date:From;
	b=mRsuXxgpEbxVF971snxL5wyibs5ZQBbIKL/CzThk0MnrXzk+Q2XJO8Ze4UH1kNoF0
	 KUG7bFuzT4dQ8gx/7uxpewQcVsf7EufrhygTwWUPLm/4xhFtXFoVzTZzzULLkWkTKy
	 BLUQCOb2BwEU3hd7Jet8nTUcKQeOlJ1I/O9uXKlXfSgX4iArMv5m2pGvzI8OFPi8dE
	 W18EchjZWW4Em5m18tAi+ZEDuV0abtVbwFVJyI6hjrhbjN/XAMwy3WOz4+WOk2Ppo1
	 syWh7F38+16E24/wUpTsvywW4lbNmYJS7h7CjD8YlBXfPPMUdRB5x7t7mXSKfHkvgp
	 MhXblgyauYOtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E95C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228059361.15420.14178879004312322392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e856deef043a6024b97f9a495299575e4bfbd43381698659a621a0ade432f13
Date: Tue, 18 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742280593
