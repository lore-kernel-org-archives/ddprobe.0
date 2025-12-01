Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2523B30DD03
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764588174; cv=none; b=inu2fnRmJm2be/zSnFvysD3fdXwgiXM7YTSD2c18KCTc+X4FISkWYRlmvNSPRQKe03lEhxWo9LMb4mtvTPyqDAlqk0cfQzjGkn6elHbj1bxTwcfi533TDkqC+PmqecD9PE3AujMWdhZnd+Kl+FRb7iT4MMbQYiBhzltN8oKLFj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764588174; c=relaxed/simple;
	bh=GTOp5yKy9W2U0U2NnZEJvQArp9c/KQaZlaq8X3Yq49Q=;
	h=To:Subject:From:Message-Id:Date; b=N5Y0fDS6/1qhZuuuRy545lwirMYBBhGuQJR555oEXNjbTMjdmRY9ehs4wgCIjlWdYp98oD95I4D7sHvh4W+QHwGBZRivJxM1THq562MHKaVt4bZdyufrDNZW/ZycgFYlIBiyWsAISRKY3G4E9pmuf+quQmXdP7CiCjnAdqpmGOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIJ44MDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIJ44MDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DEC113D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764588173;
	bh=GTOp5yKy9W2U0U2NnZEJvQArp9c/KQaZlaq8X3Yq49Q=;
	h=To:Subject:From:Date:From;
	b=CIJ44MDrQJ/bJAk54hZrDpUWDSSirlHvqBobJZ56vFZRRL0sSlBg5H5BsCIzCTGXS
	 TdZiJUQtQxrO3oHBz0kMUVotZdSXKemTspAoKQz2GTqeD8dZEQ4bnvX4hNJ4T1pxHc
	 9Zy1F8O9AAtd12/Xu2BWQAqIJnJq/MyTFkFi7XBFhrCYR2dRiQXH6VoSDkNeLvOqe6
	 8QidGm9o77HdGICATDjAC9skAjxhVUuSzZiaZV3Yehb9L+o6bvDOUUrxnReTSlYNbX
	 Rwq5p6N0B9CXpy8bIs+2TxopFjae5/3Brwg99fhIiIbT/7Gd7fvsUrq96j52nAVtzN
	 BkMLuZXpaqvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9683ED116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458817360.31936.14580543784083170636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d5fd92075b5644972de14ce71e10fcf4d327aabf29993cb54b957a31d5b3b9
Date: Mon, 01 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764588173
