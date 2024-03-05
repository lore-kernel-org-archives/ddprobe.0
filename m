Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08854612E2
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709623697; cv=none; b=REIIn7tzOJ33yq588xMUL3GJwoLJ0inKye0saWKKTVQBOTW2eemjHBrsdrEB+Abu4ahxENaPrkCpG33/qaCh0dblHMxjcys9Gi/cMqcGx7tMzupAFECBZIiZXCj3GJ6/eHp8WNkc+g6ZGXGfGNUInQ8pq3JxJcNQd7wDmtoY8q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709623697; c=relaxed/simple;
	bh=mv4PPEndhlNuZQrL8JQlrGHxpLinq9AUzNO8BbZgZEg=;
	h=To:Subject:From:Message-Id:Date; b=suFavYEtoJGFsxaCZEQAmVaSJdJIDH1czyd2JMgp/TzASqrIZeXDBvvJy/yGFfoAfG5xFjbzc2K3v+tAREevgdKDx5+G4Zm4pzTrX1JyUMVOqQfXClabjWJS62u+MlcxA0ylI7uZpbZwWfOaRsC7Bjk+MfyXYOk5pGAS6aI4TH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1xaffM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1xaffM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADA8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709623696;
	bh=mv4PPEndhlNuZQrL8JQlrGHxpLinq9AUzNO8BbZgZEg=;
	h=To:Subject:From:Date:From;
	b=W1xaffM60ISV8Kkja1ZuNeXD1g8yYI/qAs+yHdSp+hNEH3Gax7ZfHc694soNGpr0b
	 AufA5PmlKLMBs2fwJ6paEUc2oz72uy45YOs6PG1u2Hhrk3QqI6xYnaiApLfmZsk6qw
	 U67vE/vS8vArIJrOrXeAsS3lSuAeiB0wFaL1cewmetka03Q7wDcUZs+tYGZhnd7K5F
	 FRukjdR2sfy7hqIkxtkWLhFs5VeQJSeS3bQeYB8KkfGM+zTAIhuygI0q1Z6WBDJJJC
	 k6daY7SWgd7bnafoVlXWgFbd+Lk1OokG0l+19sOdCzz79iflWzgYKlazZLyVvOoQSz
	 pNFNc41YiIadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604BEC5478C
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170962369638.17018.9441296123433775427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fb8e88f03a42733a3ccc20b629a719ee7a3ffd01b01c9f9c22fd8871fb2560
Date: Tue, 05 Mar 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709623696
