Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C2849E15E
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789089634; cv=none; b=jnyLnUvSfWKk0IjKOHDk2hVrYN58FvHC10MfZLwdd2waT1xrQn2eIrYQPGPXrGhB9kxS4Db2+1YUe/+w79sy4p6STz6qTTa0c5KBbZJxE+2AfA58hAbuvps+mTrZq/ebVU48BGB1wpTWW6apoLx8JwcpezlNgxIL0JuZVhYXOlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789089634; c=relaxed/simple;
	bh=ovVsE0HDYJbj54NK/niK78ijXbY/Eh9yJpGHH1yjrII=;
	h=To:Subject:From:Message-Id:Date; b=lqTtjCmxpeExPsKv4VO6RSBQSezNbkhqRH5cIvYJ6eWlzxuCBvX8hzhmsGfLlYEyysEDS65x8YeqyxdBUuDPZQUJiUA3aIO6NoREwKWo13N0xNXySkZOcuRyy3SQSJoLVku6/+/blQ2mwKgggoTov5f88jKAytQn/JRA2zW3iTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQsx5XAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQsx5XAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87F6C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789089633;
	bh=ovVsE0HDYJbj54NK/niK78ijXbY/Eh9yJpGHH1yjrII=;
	h=To:Subject:From:Date:From;
	b=cQsx5XAHofspX96BbpujUcnS8z7EO7WSu//LhaO9O4P8mpoYLVHFUvdleUzubIvTw
	 KXGnaKmX29c+KQe+MO3RPBBDKocTITDk4zSDAblMLk2WfHWQj9tNlSyOnhNsrAZpGw
	 vH+TK6mMIekmEEeWeFl3rd65qDRlehreEPhwT+aDJBQb0KSTuN5xoH5csIbAdqI1dx
	 kmtoLc+rrpYPRjNzEA+tubHPsZvr9jQ3UUjE+nb0TVLNbCgf4sRXPs6KMdeCcZMNJU
	 6I3UiUDd6a9Aq6khIGJnUYrL5cqOxorlO2tzsfeX2t+kIwG8lDO/krcG5ApvuG7hTc
	 nKBiIczLa/nSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE7BC88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908963368.14385.14132303884135012793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c216f8a8a71105423779d59b1cc6e439a89ae6fb35ca4dcdd34deac38db402
Date: Fri, 11 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789089633
