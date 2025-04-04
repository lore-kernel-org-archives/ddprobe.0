Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C22166F1A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743760794; cv=none; b=Nu2mGVl0QV3sIXeGTQSIM1lLJKB8Leoq1C6DUtoR+xgqoAWOMumlqGucHRz68j+iO4nJfStmFQqply3381em5O+njWbvE0/3jK4ntpoijRsrKESjASKxvGf3NkqEtYwjDcXrtee2kyrNjfZeT6m+ASIi7VNJqzlYBXgmRl9Sox8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743760794; c=relaxed/simple;
	bh=4oslBVHuQr7pThWU72I6m44aqIExYV//5IGRfMWUHmg=;
	h=To:Subject:From:Message-Id:Date; b=mUB1cUYjpD/10FSIrDlUeg9gf+OVew2MnJzNiDax2+oz5zpT5aCVv+N4+4ZDEh0mDEE8UJnkC766cLOiP+6MvfqE0PyH6A/phK162Qf7EDbmuKMy2rwd8+e2mAhjsqE4jozfMWoR9Bl+KjYBiMDrXGXANshh6i1PZ2NofvjL/nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFd5sUDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFd5sUDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A19C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743760793;
	bh=4oslBVHuQr7pThWU72I6m44aqIExYV//5IGRfMWUHmg=;
	h=To:Subject:From:Date:From;
	b=SFd5sUDzTllelaI+9RE0UDB2WVyuW8Q2i7CfV/n0JN1CqcrX5nx8SIijY/vnL24Fy
	 Kba1WtV7VyTQvJTLkeNlYDwg8vPvbTs8guUaUbPFRy9Dq95zO7TtLWPtHM20EvEa5r
	 LzUrKemdojRZtg1YrZJ+CSlgCkmeOFKyyypQa3HkLHv4fAl1HgsH3zEyhbfoLO8TSj
	 gMVoNLxEtnOyb6Z1r/ZxYTleOdJbOOCiZbgicIJ1w7SpjScAn+ebxgceH5mB52B5X/
	 dWbGT9UEKAujpXPBINibACd36rebvmSyjgaRWHy24HQk9w3pH29RDOH+R7wRQ1K63E
	 buKstNB2g7ePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D57C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376079357.10518.10940882637907922994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68524d987509386e2a340cbe5c3c9f62801536d5f9733ef9e5f586f03e5278a3
Date: Fri, 04 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743760793
