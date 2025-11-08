Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CDE1E0DD9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762584594; cv=none; b=OOhr217abSQarsrEfUhnhEzKGZq+tQBteBwPTZt8Ut/rKo+3BPZED0uf/kuwfm2A9DdmsvtvA8BPOrmgyoomo0BY6tdRjeMb+cI/WuCR2QJ6oUANHDJxBhiwZc21HKfh15NRJOii9EZLD8Y+6FflQtQBc5yAoAquASXqEPRgv5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762584594; c=relaxed/simple;
	bh=RIfydAR0sCURrrxszdqC7TzVrSofhqIMuc8CKgM8BjE=;
	h=To:Subject:From:Message-Id:Date; b=IrTCPmyfeC8fFjwrK+11J7TNNY5Z4qpKeJPmWNg5fTpMqc9Xgr1eWaJS1y2+xBvil14l32DS4cEzTKb6SDyNB9XP/7bPhTP/gBhMO0KYUvGJvb0fKEswij6B6/MCuod0SZMxonLIr6Q4SFqA0qXsh+VBqUkQbSlbinRYqkLFqdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGUsHUKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGUsHUKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F61C19422
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762584593;
	bh=RIfydAR0sCURrrxszdqC7TzVrSofhqIMuc8CKgM8BjE=;
	h=To:Subject:From:Date:From;
	b=XGUsHUKJ2+LMsmFMUftoa2CrGxMNnEToXHNNqm7kh3JsFdVWTzdB+xIkptKVJXr7n
	 5X1VrIy6hcZC1DE/npoHGKWlhDLVVEnM5g4TWuOIP9mgqWLBTOjk5RIPgXMaHDMICs
	 8LC7cjDhbyluCczEC9Ytew1/TrtvoUAercikyqREB66AUUGS5Wo8hfrGWPAKvqw8PV
	 fzrdXrIgfgcA+bhACDr8XEdl/YBcMXWQIA7ZyIvZCmlZBoyN9z02QevI3caJoySH6a
	 cMUO61B8qEHRkeKO+YnMFNOaK27q2eV5qDVY7i57aAAFJH3nj4Q4QtIUsWKEYGYWzl
	 BvmaM+4g3OTYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B00CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258459358.30801.12784998718179852905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660abb7d17c0e85b595728f45f591d8e760cd55d0c256f08b7810e864e17d4ec
Date: Sat, 08 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762584593
