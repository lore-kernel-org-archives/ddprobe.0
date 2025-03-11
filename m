Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7721DF755
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741712934; cv=none; b=uB7uHzJ5rlCpWd45nEunfa3WKWu703r384Y0jAlW0buAWPFOy8RDeGUYG+1kwpgJtbPPNpchgBAEpXp5K8+6mqLWu6sj0AaFcpn2CVSdNI+8mGQxwGJbhxdjZLH+MtV9KakJxshvH7uvIuDjHHYS3QscqbCa+eyKeS3BaEebsp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741712934; c=relaxed/simple;
	bh=YPczlTF49uyErmTjzPqjie49BNqZgHAeHkts5tk9TvU=;
	h=To:Subject:From:Message-Id:Date; b=ZF51YxXZr4TiIdL+209+gn3UFLSy9nqbBH4XzK/4ufSnzO6K1QPRBcjdv8PIzLFFcHV3DIwGhtYNwtPNijYOsPnhHQdKF0U41cYtlVxJ3Ue7D09RyUZ0Tyxb3THx4wDBwTq6VWZZXO6A6A54KbTToPeCUlrXWrH7TCwzG8Ctjkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLCL+xmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLCL+xmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6478C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741712933;
	bh=YPczlTF49uyErmTjzPqjie49BNqZgHAeHkts5tk9TvU=;
	h=To:Subject:From:Date:From;
	b=cLCL+xmrHLVcYokMb6GNmovNgIW09CQahXfwXjMlSWUuD2v+lGYWGqa2oXUnIDL1w
	 9dWgsTqiBrjK9cYj/dNa6860dQg8nGnepbr2PP6NqzmxnQZM8j3j7y7MinVr5BoUWC
	 Tt9trI7K4+TGq7feoOud2hj0kJW7zLIoC8XDDb+cwqyWRmzfRnIi7aAkFQ9ICFtHVq
	 WueS1YCy2MGGoREOuG6okA3813MQtujvakA0N+E8aKW1eOEVyTldztD0gmcn7Jgk4E
	 um2KLo+J72xCZBtDXfcseIakbIEcydKU2Oc4w7rC0iOYkoA/z91OtbffAxB0lSus+/
	 BjNTYdKHvAx9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171293358.25002.13210796721808271234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7c7632a4f9f6941280c47976ceb56d801161e7d88aa2cdbd6e3aaa4e0a9d3a
Date: Tue, 11 Mar 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741712933
