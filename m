Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E27717736
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754272194; cv=none; b=KcTrH+48BTmppQD/gb7mwFvNs8cZx0rGJC7wasdowhtBHgCsjlM3J95tYMOs7TrklyDtr1a0BoyhmX0RAheAtbyNX9XPg+nQr6lpRkIdNDJdTplqwF0XTJUj4Oaov01llopeV3YJh/ArY+nHCgffdcT3PzZbLSv4k6NAya41rQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754272194; c=relaxed/simple;
	bh=tj4crzkJEDsQ+3s/B2TOLolnGWjg89aQX+lAJRBWrjA=;
	h=To:Subject:From:Message-Id:Date; b=Gbk+iTOIHiETaqoy/TVctheEXcx1Eswpa2r47I2Hlmv6dojKRUYIJbhDK0lQIHZOh206koDKubN3dKtubb5l82vZWylTH0HEhFTT24OIj8S1X2P5Lnz7e7V9FdZdmOfaZe8zvQfP1lpo3Oh/x2W7aBAeBRixpoUqaWAszeqbWZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciKmqFp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciKmqFp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A139AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754272193;
	bh=tj4crzkJEDsQ+3s/B2TOLolnGWjg89aQX+lAJRBWrjA=;
	h=To:Subject:From:Date:From;
	b=ciKmqFp52WlEKSlxS/K0LMFsMBkIauq6R5c//Pl4jvOr3GW7ONoMRoTKNGy3qOScM
	 50yx6K2dcYjnF4APq/nT0IEp4nESQH9QmLrBH3NttT+RAkxQ97rYhMauyzTPiDBiII
	 wnmBasQk3ilGo1ja6iOgnfSKiZoeJR6FrnYuSVzga1eLTqr5owABultIEygt5+ghPY
	 BPETMDAAUbeXPcKtqs0Es/5PTzas+GMDBh+9MpQ8Wj0gVKij6H53xGhw4rM/m3R8B+
	 Bh5jgCW3wastR6ugea3617K34fjuAUamzWL9Tja02BdzWrUxZ6UnigvzIya9RTixhX
	 ZAs5GX00tRS4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7AFC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427219357.21378.11648540097074244882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4d56e92d58910bbf6d730906e798418e673f5e6edeb2c03ca266a6fc302d5e
Date: Mon, 04 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754272193
