Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3384C17BD9
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748776194; cv=none; b=bd1I01182nveMyroSTWHaRH6JG9LH9JuEAfGZBwpz00dhQ9xvRrotlHGgH8g2zbi7XDIJu3CAeGJt6QYDUXi2yuQLQ04Z/fOPhrXTS/M0CQVc6NWINq3wSMn8ip0ES+yqDiBenvgYpJKan40QCXNJph2D7TNzrVw+peQdxkgo5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748776194; c=relaxed/simple;
	bh=UUNtw+eqSqPB/DBsqZjPELDdveEYZ3iak6lDzkd3IS0=;
	h=To:Subject:From:Message-Id:Date; b=H/eD2ZY8z94t+Z7M8lYcxhJ90pD+rwiU0NxLulId0Zi2QG6H/CNJ09njuw5eNbE9C8yWp7DQVgJFQhOkUgJzgy6Uo51dnb6Kqxl0cwnGmzGeihCLzK8hVRxiymCN67vSd731b9ZHulzIfFaIXo2yUrk7eNSc3Fw9kiaqRTNOL9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNfal+P7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNfal+P7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB72EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748776193;
	bh=UUNtw+eqSqPB/DBsqZjPELDdveEYZ3iak6lDzkd3IS0=;
	h=To:Subject:From:Date:From;
	b=bNfal+P7AUCj/pT3YX8xm5TTISUgf5VnXzdq1pe9mxWU7wLt6twX4hwzLegKQL0N5
	 LbR8PXwIW8yny9gaRYBsm7IgZuxcnCfXzERkkCct06EHmaF4rODuonCdEr/bIomjVF
	 ypn91JQXy5AsfK7gZ4+hpWGCnj1/U6fWKdGAXiurD1y0FKfXhvNKdya4jh402Kwjwu
	 yPdQdlfza8p9h9lNrOcO3LZ6Mg2zYfUuzkS/sgPsvu+vJ8MmHcxwtDhzGDIITjcmt/
	 s11W9K3jmbJXgh2YV2HcIPMr6KNJ/D7/WxGYoI36XvsvdPWLZwJ+YVYEtDtrj8bLTK
	 BZ5XIWjuoAfkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A166C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877619362.31409.14000620473552181434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62732c779ac0945fce9cb811288bcbd4ed341997a32ec9a2fbce8d973fe5fa6
Date: Sun, 01 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748776193
