Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B159225409
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752239994; cv=none; b=eoQ97/ctZxLam+yxw9PBm+nD8ieqYDTvzaoDYyFIKC4LxAHchEop+/szWvCyEmJ5pwDgQT27JgMCxL/veKhpIHKEatQhUfwBtsjhF7M8LXL1AsPnDK0V+fSKTJEQ2WyWsTZolOBRA7jSRcgrk+D3SUrBaELqJPNzPiXMoflq0PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752239994; c=relaxed/simple;
	bh=66+5/v42rh7cW8Jc/bXYGrKvoM0c4YobBTx6xD+RAc4=;
	h=To:Subject:From:Message-Id:Date; b=DflntRAHrf9iSu3b5BeXx1bOWVKhU6Bsr3EmXKz63sUYRUt4RQHASJ0SUYTjC+OzsEHNRqGqdPNb2Qm8lDCd/W6l+dCQO1NVy5feT0kHHaGWgNNMzhr/1RigD/jKw0zYrNmCfw9l9YWCkMnsT+8tXSrSbrJBOxQWV35UoyD46HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfXhbSgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfXhbSgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4163C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752239993;
	bh=66+5/v42rh7cW8Jc/bXYGrKvoM0c4YobBTx6xD+RAc4=;
	h=To:Subject:From:Date:From;
	b=gfXhbSgSL5H03/wSZu//qt3w+w9QLS6yK+wVClwTQ0G90KyfwOKRmrz36QaMtyD6C
	 XNXxCsxKGbc0+9ppEwOpjZZrBRwt5QVuYRTH63ouPkRSQlkyJL5XqfjvW72FQ4UtFs
	 2FmwF22rVI4hqVQzuDRMI7ENNJvLEECpimut+BlNxwl0wfDzl8QKMhLyfwOlbCNaNM
	 3Ly3MAkpMlVFJi73QTOsWjRFo87ghLxr1O/wA8Ikl7R4xjqPG5c/R6pvcvx/vc9FUq
	 iE/iBJb2Czx3m6yl0iFTWYcMxBdk1Ibcsn6PTtVvlhTJ816AqN+2PBOWo7UvGtg0iQ
	 KC9rENiB4pqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D73C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223999357.1463.9687015244332183893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77dbce6c442817d5b26256abef010c081a7dd7b630df10f0dbecbb3be2188660
Date: Fri, 11 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752239993
