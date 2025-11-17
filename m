Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436D432A3FB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763377314; cv=none; b=DgL5af8fds7ltyeGAsrXMUVL0mtkKT8Edeau3iWYW/ykaUTJdcOSYm05XXUAfglVhji8fgxRaoZl9TWM1/65YzgbohF0IwtAWMGz4YYxxtUEx46ahOYH+iFMPoJ83uHteQA/IB1B/cMMb17gmCT9cyQvX0QXnajpDxv6Ahoe1sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763377314; c=relaxed/simple;
	bh=QysN9xxyqWZCXAJg1zbjx85XNGkHUUa2V0erKvl62dQ=;
	h=To:Subject:From:Message-Id:Date; b=DKfcuaQGBv5/2RxEH+ICKktwf0Ofw+51JfHq8yRAiw4AuW9bNnnzrXvB1TviGwA9aH90smwy0mwENdGKDRHH+R62d2Y1HE/9RG1F6XvykqWpZWA4Z9hhY0Qy0GIjHM2tiWBpx9BppvhRPFWKxK0PwCHORSVNWW7Sz0t/A3xF+rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbbYg4Ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbbYg4Ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE62C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763377313;
	bh=QysN9xxyqWZCXAJg1zbjx85XNGkHUUa2V0erKvl62dQ=;
	h=To:Subject:From:Date:From;
	b=HbbYg4NykhEP19v6NPyWLHWYvSp2eTQ4GZRuSz71wAwVWCm2loWtnhP8U1hetPcDz
	 NaEAnebSekKhNkze/gS09PmxgS7DI1q8EZJA46LnuMjqZCyN8SE9H2irucqZ0dCu4D
	 MiLlUTyLgdFF0F5qdD92kPJZxnn9GtMT0tLiWAbPDpTOk0S6Ed4OnEop/TZboLcv85
	 lCVUZuXp9457im9NDSRaNcL7Q9ng+mS9wqhMj083qMgWkFn86unTqZRFwk1+NV704i
	 YukDbo3Sa8iyr5LUqv07mc+1q3Oj3GRn7B4r4tAFcE3NnJ1P7iIfV4oi98Y9mdaJc7
	 aVi1KW3vEptog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E05CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337731359.17132.8816687930355969420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6203eb21c8b9f313f58bb4a6b07423572f2e3087b39502efb25e964b80b05448
Date: Mon, 17 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763377313
