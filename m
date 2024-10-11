Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A4733F7
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728630954; cv=none; b=BW2s59eykXGDbO/2sRsK3DGoU2oP200hlawlzxAB5LrLPtdF7HZqcLesipqCRrj6AhZXiEqChg6AbkP2P6Km31aodd5oiz5t5zJYuTCTZSvcODky6YbYVviRrzcGVWYUOCSEcIcZk2rtnie5wNliJs+oxkoV5YfMuk/p4bs5AZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728630954; c=relaxed/simple;
	bh=JXzBfZm79zVIw0Ym9Pt+Db7jT48ez7HIxoiRQ0FvuwM=;
	h=To:Subject:From:Message-Id:Date; b=GeDpVrpqTbeG6LzL7jeh/qOaQzrkINj2OORQAJp/zYLIvGroY4eR9PTRlD3dF2cwmsW3ksJb0ZUKOr9+XLgIGEokvY5CXmh6R64g/HSqmoOt2YlPnWpruVfsucuMma5q/xTb0IKEvEt9yAWb5Yj738NX+pB3AN3RKzO1w2YbDjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFlfs6/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFlfs6/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6234C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728630953;
	bh=JXzBfZm79zVIw0Ym9Pt+Db7jT48ez7HIxoiRQ0FvuwM=;
	h=To:Subject:From:Date:From;
	b=rFlfs6/k9L+IV1HreNb5BlBoz4YrWyuQQbzXDFdjx9dEeDN5duaZ8wUM5VyrALsEe
	 SQc7bvDA8bSGTUce/cWMaXTq7RocJED6AfZ/SziGOf1vj6EUBy4SNq1le4e+mw+8Wj
	 jvfRMlpsrOdNarhyqCUhBcm1D8rFbUPUs1hMcqTcPM7ZSrf50Q+sH5Rmqlm0IPmqnL
	 TEhOAmptWkicp9H9Rs/ombobqDWEtjLsBE1SkzpAdxkHsi4zyCcS2VDU+28dhnb9s/
	 V2DsugiwRL4vxUo6ToqeYkXv52b0AJ0BH2oaCq33hhgPV9/FseYjIQOj2Un9Yqj69a
	 pKTe3EzYp0EsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323CCF043A
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863095359.16283.14684036318926091615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93c03052c10b30201c71395473fda376036f38aca5b589825148f345507160a
Date: Fri, 11 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728630953
