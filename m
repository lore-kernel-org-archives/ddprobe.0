Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B96411CBA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769301234; cv=none; b=P4AhJRBofCFUfZr83+YpKwzSXi/MjEUf+JNJNOFa4rgOb5RdecsQ7Vt3Q2IRJjkpdwhqXzsuPMGJgdSysCTzFo6xS71vuIZrZw8tKJyqb3XOOePgwcocx0Ib+2rJg0tuLsSuTYZKhDjea6vIyoN+XP/gbowAtgtxqch71YUCaDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769301234; c=relaxed/simple;
	bh=vgjkp2s+4rqYJW2WLb9zg72M+KD8C1DPRcc0WxbaKsE=;
	h=To:Subject:From:Message-Id:Date; b=q9eYH+ooKucwd72Jap9qimyCyiP8YOfop682mXrRQAWjxfdXk0tV3kI3/aM0qkt79PqnEWcsgeRq4wkxnfkKZolMRuZQeabVotpAAYws/qtYlFdV4+4dkV2JRT/uCb8JvCTl6aUsNUPqjY78UNM2jnp+xv64vRWbrxma7oOgfPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmh/4KwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmh/4KwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DFCC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769301233;
	bh=vgjkp2s+4rqYJW2WLb9zg72M+KD8C1DPRcc0WxbaKsE=;
	h=To:Subject:From:Date:From;
	b=tmh/4KwIoqxQHgZN9K3LOfahJhU66D0cV/Q+B7HBU5yJ06EK0xuSD1PguT8VlqFBS
	 Awczx9Kl9lqf7TUvFjJgMIgitp97wcCn5qH6S+Es7JFpmlqv9ZRKTuTSabzhCxI0tt
	 Fa73JF+o2G0uA40cE1YvoBJqCPAi8a4MsVTNFCdfJ5lPIpPjx5cAYp7d31ZRuftRAC
	 5blOCPKSSPggmesEbqPCM1BoIIml4RjQyHWUpBNrXL7S2sX1MGH7VS7VwhQnpeZZP1
	 0pydXHib/f06rfCxavvYqPorFs5hQjoa69PScLMKX1hZBvrKd6YirJ2LopFWkNS2Kl
	 Xn92MexUXnHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555FD715F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930123357.3648.79856447683022514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655f366d517d7c9af3e3b8bf1bc17146af8dfd336d161aaf349795f0d81342ab
Date: Sun, 25 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769301233
