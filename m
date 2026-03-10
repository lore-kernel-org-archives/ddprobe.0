Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35D83164DF
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173693; cv=none; b=CmVWNNL1MosifBb9zbtRE7K3dN3fmnTyQTinptilB08OE10Qb0TzLds54fGvz5MVJVB5lZ21hHStoYGOWyx/UAB8VzjPSc2TjnUGHvAym8ndatPO9rPz5cdAGwhkIKKBcii2wmFGU3Sk4nFd5Cw8QmaIp/ByOs8wMD+i/yhkevk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173693; c=relaxed/simple;
	bh=RLQf32B+9keceEm6YgGwb6yCyijcKla+bT8iUzJ0dsE=;
	h=To:Subject:From:Message-Id:Date; b=ZYu9XH3eQIDKkJFjzuPZZcN7rgJtvo4chNyarZAR+uKmhQSaGYLpCkZ7lrY1Yr8ZW1G7jrXtZap65GORm1X0Vs9qPWM5RH3gfO5ogURNKfa2tGT4a/l9EuIavtD7lR8tDD2dZg7yvxF7SDc92IeucKcJhIUO78PMN6Dc3pqhYfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAzfowGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAzfowGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6950C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773173693;
	bh=RLQf32B+9keceEm6YgGwb6yCyijcKla+bT8iUzJ0dsE=;
	h=To:Subject:From:Date:From;
	b=QAzfowGkWYAeRUQLEprZrV56s/GsOYOTuAv24L/uxmmVThPzon7t1+KvhS2xKvrVY
	 Blqcs9aIY7K9eb04HOKT/eX9oX42NYj0OoBmTOz2WILRUJ/L9IPfV6Y1CkWwNqFlQu
	 ZB7h6HFDexkHn1GvZ042d90Kl7yOke1ng3TUL5HiP/0rgLrPmCHExULKYWwgah/uO2
	 Oupy9XJYPqLLb++Me+o+g8bWt1I6AMGKvD038Jhc/tc5xNY2uwzDU46CIEGV/qfLBK
	 GwRKATIXkabK2ECFXnttaQWGGenZU9MTFidxsXjXgEX73sjkobAOitHwFH+7uNF6bT
	 vYRH1nMhF4sVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA1FD4F2A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317369360.4365.1981259356712433214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba724f4b0b4084cc64a2419afd2d7f88bfc0ef98b66a8449069a7fc1bfcfd3c
Date: Tue, 10 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773173693
