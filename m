Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E27B26460D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749592194; cv=none; b=Au/BGRAo8Xf90SUe/xEhU4uUpEgwp+dnOz8YEgEN//QudafhYzordlQ+ttA3ZjtHH8uCaEF0kECgWuuS+ZN7OILAiGsrCb4YHLRqP4mNtUfFHOw1LBSg6x2o0yctxvD9IpisXd7NtVrfBeYdO7gy42d9FlHLzVyvy8oYYkf4T9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749592194; c=relaxed/simple;
	bh=8mkBPni1bs+i08HBfWb+zJ8Kj6LHDqQAo1EsBxF7tGQ=;
	h=To:Subject:From:Message-Id:Date; b=Mi+twnA0OabHlxRw3fT04aChTgI2aXd51K1uTDDfYr5ODZpRRVU5Lm1D72tlXhmD1P/ZzakbOcPTJQqUJc9bm6oJCwIlSxu8qhKSb+SMM1TFUN9gxDhl7kqaxcCCANzT3IBYK0g4Ys22a6q5/x91UrefOu8GRwuHvPmGTl4y7yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXe7Q5No; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXe7Q5No"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA72BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749592193;
	bh=8mkBPni1bs+i08HBfWb+zJ8Kj6LHDqQAo1EsBxF7tGQ=;
	h=To:Subject:From:Date:From;
	b=BXe7Q5NoGtIBk7ueEVlJwbzu8Dhf+ZOKTrdF5N66dDBzlgIGZCTqDuWF0sWj87Rn0
	 A7y1DEguj6JaR18YkHQpHj9Yl4IrRHD0/JVDk7pHy/vUM+5JKH8pf/ALdO9Litk7of
	 mtja8krTUC11PelsO5zaukqTeLEqbkUaKSTLh9E3u/PtI84PkvgAqIIqbbxuNtHSnL
	 hd1NsoHyJWSl/9PVwVL2ipB/jadYBxFYIJV0aNjFfHpjlPBy+UYTK0ASSmgiuWqZby
	 XMUzDjIc5L1vICkv3xLPdZwDkpcsVfeexwKQrr05GklAPTblzyN0NubEEAAWfnNN4e
	 NNPTwCUNRsnEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D6C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959219358.981.737918459003313195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29944d4da9222753877e5699247c0f3b76397285cec2c3202e4fda69cf6a7bf
Date: Tue, 10 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749592193
