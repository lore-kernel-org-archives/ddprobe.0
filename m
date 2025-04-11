Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3601426F452
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744332594; cv=none; b=JQualTQuqFnBeIQMUwtArNsfWxmXzrGeoMknZuK9sAa6yw37CXUCyz4A0gqUsi9I3nrtbQz8rMQUNzK5c3DUKKO4uVMRcuX79tmteI1LF5ihbg6T/XzzVTuHpB/kruFlU3XD4FMUvpe/mirFDo5RaN2C1tGgf9YhvOwbENQWdZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744332594; c=relaxed/simple;
	bh=wDUx1R9eDIWbZfdobbbUYsPomhvUMP8nnfXJMJzOzxo=;
	h=To:Subject:From:Message-Id:Date; b=iY1v35Fa3coGhB82rwGHantouklZewGfDfhus1ABNx/8H8iZuUmudBw53Q776JKbm2/U3oQLkqSt1kWgIszWPQnyU8cMba9qBKXqQFSJzAd4Wy4UTwLttZ+t/ayoB09RKFVjqbg3H0uz4uXlLC6q1q0YWUs1+O7/CLw5jwIy5p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlcLR6ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlcLR6ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C042FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744332593;
	bh=wDUx1R9eDIWbZfdobbbUYsPomhvUMP8nnfXJMJzOzxo=;
	h=To:Subject:From:Date:From;
	b=TlcLR6psxb4zWZ+X/gwaYNUqVq3/eL1JrWwWJNs/6IEk5NfJiNhMGBreWOH0wgS8K
	 61E+bYgj+AvpDfExf2RhbkS8j70EfuOkYImE6O7zyu/Ylemns/1NgpFMypjkXLjqXz
	 qhclcKen/j2G4+AeTGkhoUM9RzdbzmjPQ02buWUuD6I+Xcy1pCmnrgK//3eaNHNd1K
	 N+HMwGLcw3BZ5INsulWT36gq66chE9cXv3DA0OWqxBcfL4FwbZUZFXYCmXbNYFuhRx
	 B3+b7YFh4a62JoHL1W7qlfNWC+sPk8kK3IBJKbM29BdJSCfdb51zJaH3ACb6U32Cz0
	 hY3WTTx8wJMlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C8AC3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433259367.8048.11814323849660085940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a11493d797ed052f753fee88d10f13416852ab31d4db0b70de0cee9a30a323
Date: Fri, 11 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744332593
