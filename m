Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3758B61FCE
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759180195; cv=none; b=MqJNdCrvv5kHv05Q3eqBr8pBYOfj8V3jYoUx7LGhA/D667reH+MM2ZB1UFMMCYKlRT2UWERrcTzXVLa9prIxmlKiPly2LGPUpwOjfwDFW3u0WnrAI7B6chr4fEiB3jNpI0EQ46bA1d11w6JNKZ9X8YMQSZ2wyhza6mcGTch4638=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759180195; c=relaxed/simple;
	bh=0OTUFk3ORwD2yjLfpBbJxz2rG2QeBeD8jAQMywbnjSQ=;
	h=To:Subject:From:Message-Id:Date; b=Qix8fLNTrIhtt0OvCD7BWl+uXjo46TGEBwt1Cpb1JBDAbkFkn/oC4teEzWA9VJn5IIUcHMlBfTBzkCP9lCpYUk41oEZ3xFs9zq5heqZ/zRqjpnGss9KGQuSgbkMHKTI+rG2w0zas2BTk5ZZgkK6F4fg5xBaEVBkofkvoIQWoGzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDnmZif9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDnmZif9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B007AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759180193;
	bh=0OTUFk3ORwD2yjLfpBbJxz2rG2QeBeD8jAQMywbnjSQ=;
	h=To:Subject:From:Date:From;
	b=YDnmZif99OY/sPO78Hltl5dDDyyuSNwVku/p5jIYmGNApwplXWP7hnumsXvlThi75
	 1jK1jmD9cUURPokiyycPo3BI6P49LtWtCwKK6G3VgT0OZS4tH3iocx87T1SX+sYqDY
	 0D4jSKAwbm6ehmdQe5AMmDh6Cx7gjdWLSLVvSmrjHx1SIhKzjzr7lhCCCoNn5d7wJd
	 B/ML3UWeDM5Ewn4kUrubNj+izs9ErHE9JoDpdO1wTfUYmNrCaCICDh5axaeYfFoIF2
	 OBBpgCaKIDAoHHu0tJ/08Yxf1HpBAixWktRE7LNJjKpRqb9l4jzw0dmPl19uDPALrZ
	 fdxdfCxqag5RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9911BCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918019359.1252.4806196922652813622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade29ffb5769dbcc9e36f41e9ac7a24a723f0cade9bdc25533e87749f18cd45d
Date: Mon, 29 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759180193
