Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208C132C92C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762356594; cv=none; b=rueAxewRLr6KuuCDXVxFhJuAswWEYzG1RsrJ8tWf77AtUW3JNcbhSRh8CgQNO4PSHAkkZ+Rl1Wer5HCYui3TxTzSBcHZZFEsuhaEumHR9B4v9YItDlToTnbSpobhJ69tVolHCEiFhATwXJojHKB3Q/APZTA84GSYTqUBcOLVKPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762356594; c=relaxed/simple;
	bh=Z7/p2uYHDlajoqsjlfOh04V373XDFXjjn4OSrh6UBzo=;
	h=To:Subject:From:Message-Id:Date; b=uu9VjfTuAiXeI2D6eufY3wU5dEVYu2XH6r9hIQsrM1UV4WojJVtP+jOswqhgIkdHQa+bTvafm1YjYj14VP4s+T69TrmmzsNCmwWiOOwPpddZ47rk9WWvtcPYHtamy6oW/UdHncH7uIyXM+2MAZP+uj2YTtro+rwSBo8P2HE1Pk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1nLl/bU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1nLl/bU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B826C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762356593;
	bh=Z7/p2uYHDlajoqsjlfOh04V373XDFXjjn4OSrh6UBzo=;
	h=To:Subject:From:Date:From;
	b=E1nLl/bUiyrrdO4wytGHk3LLQNlUwMkianLA4anAiqkb4DgVzTxJLrg1GJJ7TrHyQ
	 XrwXQrHWGzJ/GgU3RZu4TOBc1rDrKlxmOWtewnjyS9JqlDAmjkI9s0aZjMuTpDyJ1g
	 RlA8lSfB3u+aEnj8lj0sl5Y/qbMFjD2a1IR1YwF9n+fkydIKxFp6xE3F/D0ponVoN2
	 jSZLWDuQtCvZDhKITA5r+FxhOzuouY7XI5X2S8lZs2d2m339tkvckKlFTjBNhTve4S
	 no3tmWLV1MQlF2wJS3Ee04VJCp6whfRzDUkA8K56ws49QlUDeDBezHHO4s76pWCIEA
	 PQp9Xut/4EyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E2CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235659357.5213.17954608885396200114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b5454da75cba14d1dbe7c40f0e790238340f90723f57892cba425e3c33d282
Date: Wed, 05 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762356593
