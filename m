Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604963D9DBA
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789673434; cv=none; b=nyiAgjOPqFcf0qk8BFbzHBSWKvrFfALdu/s8vlpIhDgvAkEPfQOL1hnlS16WWohf4t9wzx841XUCfhZy1Q3CWn/9kNc3kgiQaKbHAjcBG4W6dnud2cbH5mC2bxvYrJqcFKi6MK7A9uZfzB+rI6EzgqIdI3QTqvsPTIhhe25V2O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789673434; c=relaxed/simple;
	bh=IaKiQqPdsoIl9FDe+c+yMXHxhXRUozT7VDjiVJ9Mpps=;
	h=To:Subject:From:Message-Id:Date; b=EcAR+74l6Zs/IaiouB7TkoeEQuSP+34AttqMN0lXQVz6MrAPCrGbQQZuohMid9weA6b3Z70w9OQBDYia+0Ni+iNvQwcg9n82wjy3TfLYgjWB+x4jEPbm21w5lu38Rnl5OCEcrJ1jjPXDVpQUQz0uNON2/l6XfIsNohTbciO7RKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gL8nOVMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gL8nOVMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56B1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789673433;
	bh=IaKiQqPdsoIl9FDe+c+yMXHxhXRUozT7VDjiVJ9Mpps=;
	h=To:Subject:From:Date:From;
	b=gL8nOVMALWM9y0Vk9syiicseAUvP709P7nFXvahA4ClBWswO/Ciy9L7mbl4vLq9Sn
	 PEe+9VTCZmWTiPcKRcF5OwaxkIYiTfMPuZwWyB6yzs40RMGo1+r4CCJlZuFs32G7Pk
	 okXTsye2a7OK64xd705wi4FIC5pqOZ15K8eWthZmQp7CGDGqXUnOZgyZVBAfYoIyMY
	 IVWXinalU5STFrLAy6nV5kvp5PQjWCPk6EkQIP+6FUroJlkTNPEUFvUodPYVFp5SOI
	 RyQMalMOYMioJnA0Xgi0gQDZwcSckfR1ihKDADuM2uTxIGBsgS6Vm1lFvcmFtRjC8m
	 7mEndbi8bd+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF098C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967343370.29033.4154283030884488820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b671c98b4c557ea9d2140d834363294c4383836360545ef24a00300de28f7ab5
Date: Thu, 17 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789673433
