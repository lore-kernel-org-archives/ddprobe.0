Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B77618C2C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771225494; cv=none; b=e3Ff+eZWueIzWLz18RQgyBSkq/jZL3187LJ6904oGfgxcQBANjwmC5BUs+pAXSDrjtDLtXgqspQh4IaQVU298/spt0jWjX5T6B6nMV5GIp342j9on+Xksh6TyJAV0VLnAozbZouDRKBuJqc3ebiNZdZH5FrEhcRbf+DeSA+TB0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771225494; c=relaxed/simple;
	bh=0p6N9GV2zdpmWcVJRozqdrQlnFHk37E27Tb13/iSU8Q=;
	h=To:Subject:From:Message-Id:Date; b=m5VVdYqii/casJlQ6XJzd5duqErRXxrd3lOho1EHsSdpqvcarXLNCm5j7BU8Oy5eH5MvaJfb+/h8rhJQ7102FOK2N3BlJiqVn3nEx5DKv6ERSBlvATqzYD6k2MdiFr0/0qTq2Lw1+ptGV+RU5kR86j8K1lwbRjftondo26wGTNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wms9U2Rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wms9U2Rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81B3C19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771225493;
	bh=0p6N9GV2zdpmWcVJRozqdrQlnFHk37E27Tb13/iSU8Q=;
	h=To:Subject:From:Date:From;
	b=Wms9U2RvOxrE8TcR4DdP1ODcQPoCZefOTOZJuuaQIbvdObo/QvUCSXc0c1i3KK72W
	 3ME9nhE8yUKatYwO6iOrodVtz9cXi9z5JdYD8FTTY7gF1ft43FOpUuq+o8P50wK6Xs
	 N0qJm4o435E4tOM5wQY9McPK24aBUFdTr7X4FSKPsX1efTxd0Pcn2bSpNkwNNR1CHZ
	 psCcgs/zGK2wWUC0L4yB60PAg8iUq3QEDMN8zG2xCJ/gYsxCvvaC2Vgjix8AvoGcHK
	 mqZ7z7BKJgNBfOK7U5PeepWn4xddnFd2+58IkfrHbULJLc/H4vxd2rNXTxQ8scLscm
	 bzrUxW66HynGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC40E63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122549361.15952.13198580019613295654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0f17abe05422a0b4060b668f8f84c8a41ac98e63955552f388ac7840b4fb0f
Date: Mon, 16 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771225493
