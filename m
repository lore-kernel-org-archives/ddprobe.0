Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259DB20DD66
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742307594; cv=none; b=npCS9RIs2+OCI6PjhdE9T6WeZIjWxnlf67A2kensDjKLv8TQF80gNaWWoeCUmb2dAQeByPryLzj6OInteovFC+casLtHl3a3WswcMx7OKNkuv4Wyj0m7gQ1QAg0FZrYzQWNAhJev2IXLIXBSet4UEoCStOXbZ8fxqM3kfEwGGA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742307594; c=relaxed/simple;
	bh=QO/Tjq3NDexLm1YEMH2ufNmJ0/6lL0Cs+MhVr5lDGIs=;
	h=To:Subject:From:Message-Id:Date; b=oYQkay2pbZb0QfF030hEBRvhB9aAm7imxcOUXB4fSaQetLK2EmWcdjJ6hqRsOXxpNZjjZg1iYWrwgDapsfRVBe7wdFAzvc2uKPYiFvJpsKIt7DUcyY2aRSQeixWz1iDhNZ0cfJw7aJXjK7EVrDSgqLl5kK3Gk65521YBjctqPgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ktscr+z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ktscr+z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF3C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742307593;
	bh=QO/Tjq3NDexLm1YEMH2ufNmJ0/6lL0Cs+MhVr5lDGIs=;
	h=To:Subject:From:Date:From;
	b=Ktscr+z+0CyCM3uJrUfq1w6th0ILciUt5oK4zrOkUMf5ChInPQ4uKcirpWyz83ZIq
	 mL+zHsGv/2t7QdBrWlIhuf+EDSdc5OyBJfRpqtjwnlagmN0/eHQO2X6LTbrwk2sLTi
	 LDPAV/uJowkIWlgWBGdfd4gT7HVjf/FSXBARCYe8XxZEiL8RWPOq9TfQubc093590K
	 CM6d7neNrORHn4MoCVQ8fdjIrlB4qx2Pm0S5OG3Elqj3/S7byoAVDdDvSxcAiFiNZp
	 F+J9nTT2Jk9wJahou7tIAW2ubXfGuxd0bXigWM7gm3YtHkhIeTBFVwEqAXnv7PhH6K
	 XcVdwjPLJyINA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE9C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230759361.1072.5690504994940594592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720af67b886bf84497342e7200ebaefd2d950c19f2f0e46737c4e2f580294923
Date: Tue, 18 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742307593
