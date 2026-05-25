Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE9A42048
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779725554; cv=none; b=B6wnPwelXVfdqNmT05gXhSQVCs3R7vTg0RW/eQ74v9pdbnuToXrhmlkFjA2N1/dEUOSAVDXnldWOBK6ijOuqRHE/oPGax/IRtUkQy7IzAAVC0MmIew0naQJ+Y6EyZGKJU+XEf8OFCyqBPqpGyTBZ11Xq62vImeFLP5jXzO51B5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779725554; c=relaxed/simple;
	bh=k1OPjB1wRx+bz8A+EhJYHbHYa4/Gac498Z/KMKTIhEk=;
	h=To:Subject:From:Message-Id:Date; b=KfopiumIQtL+ca3KDXDqk853IFyHmzn/Tv7oeFV2q2M5EV65FUTp/E7KXoERLrt2R6Da/zu+z2SW+M52S/vmdJn3NT0hLS34OsaxrH1tSRTws+EhRaRTNqTHjvhwypjPMpEbg7VoLTrX05I5d7aCdJ/p46/s2iYazaS3IGtECi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E70vI4xM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E70vI4xM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4236C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779725553;
	bh=k1OPjB1wRx+bz8A+EhJYHbHYa4/Gac498Z/KMKTIhEk=;
	h=To:Subject:From:Date:From;
	b=E70vI4xM9JVtE5N4R7QY61CY43apmNUyspJLEcDbRmxVzf068SODP48nnzL0uhgtD
	 icLuOp+ZrUrI7zQJLWT7Dl1ct/J93t8MH8YBZihs9rcUtWVRgwfXhwha+eNLg5msGv
	 OUXbR2TSiAyxUInAngm2twbJIyH2yNd7mHHzVnk1mv5XxPRcYLFa+BzAFbXrODi7fA
	 +TCPl2RohF9Cn6pxvsjgPTArvZ+gZVH+DLhnwcNkPSmr8X5d5iO7jFZ3m5Eo4pBFKY
	 FQWOWiurp6HvrBQxl5U/pJgqfd6ylUJBsAfEcszfgu0CbLpPpqscjsV5qmazjA/JXa
	 jahsv9nfAngJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9320CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972555368.14312.5100846946299570263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c100765846b1e9d0d7db0bfc8b3b51c46cc7c0f578c89932657d766c8babc19
Date: Mon, 25 May 2026 16:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779725553
