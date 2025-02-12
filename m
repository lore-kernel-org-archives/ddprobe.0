Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5B1207DE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739360575; cv=none; b=D6qucc9/f93KtGI046pmQFNenXp7c3ox98mTOpdwZwlyy/CaPMmSWbelO1XXf6yD7X3c4kqzpsOp60X8xPCF2NCghDNCt7rM8dQQY3z+MG1S4ja+qdeGdL2v9y2+Ju7a3w5pl9Bs2Q1pzGaIMqK/IGDQn7QFsEcYUJljKdwod7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739360575; c=relaxed/simple;
	bh=CqlkoZyHsrhuAvy+5D6cEGunubV7z3uWYKcgNHxGQAw=;
	h=To:Subject:From:Message-Id:Date; b=D4WWehx9j+yryk9FVCUlSZf/GqknTv5DZPIewS8pCoYMMGhhtKzBdqihd0TXXAxh/qrrih9tqzcIRvtEpTsuYKSCn9SR6aGsGyPWEQu0s9auhICqrEB6GEezmIFw0L04jnic1Fu2QGamqwkrWjoEfFtI0Msk2SuXB/O9oqMz9cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvX39Xib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvX39Xib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799B4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739360574;
	bh=CqlkoZyHsrhuAvy+5D6cEGunubV7z3uWYKcgNHxGQAw=;
	h=To:Subject:From:Date:From;
	b=TvX39Xibff8/nzRCN1GgOv1s8k/w5LnQ5F6hwf+lwRQDZ+XzU/+i/cZNpQUVSCUfJ
	 eJp0Pj+R7xcZXbZDSS57SWlyaxmVnqGYVYYClF6J7Jhxx8WjL7h2FHhYzlpDaBGwkU
	 RBeenamqP0uvKngn2D5zV1KQzJedpccFVQBTWEeGuyfusdFxZRzZoxZEQiUfGU/2mW
	 8+yLY5N9gJCHahZGomP2ltqjA/jfe5KUr7hNUOoKkuzthN7j5Rn6ZQks7opZNmcaAU
	 5MFWQuAU5D3tImyQ8S+FbPIyJjzxuupKDhRf1FZdOHFDShINKJPaqwCVwabGjN94tW
	 9UQCV52JG+kHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD133C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173936057383.15018.16561715857190400348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed0dfa6b3f65b2d4196ef6e6e71145591d3c2ace755d236ef9cdc1cc71dd62f
Date: Wed, 12 Feb 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739360573
