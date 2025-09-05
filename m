Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1582D221577
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757101195; cv=none; b=Z6z7mGlgGU/eQ8n2/ybmG2Q40Ao477eQY3NQTY3Mz0p2iHlk3aq4zWmmwGhe4S/wXBAW2afa0yAqxNo3TJB9jAf32KwiTT9Of3WAguljIiS0uOgZw94HSsXyoY9vQo74PHT2hc3JCsg3Ak++Q9l/RpU9ZZZDoF+AvMQC9gWJtfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757101195; c=relaxed/simple;
	bh=my5v1QWr7pCzcJ/Plh1DAMiUL6CB4QHp66YqRQvXFSg=;
	h=To:Subject:From:Message-Id:Date; b=tO6pwTg6wdGv/AQ0wc33LF1bl1tRA/z3Jjkq7wFc2N2ppl7X3a5SRmmlaG7cQ9Xu1sEqF2J/k8aGF/3HTuKltpTbGJrgpMRjE1jBScLR/qAFSMwki2q+Z4tbdf3W/XIZ3UrfZ/p8Jxhxbjtz8F/z+isKVYH3a9pMVGgnGD/Utkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aeb+2O73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aeb+2O73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF37C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757101193;
	bh=my5v1QWr7pCzcJ/Plh1DAMiUL6CB4QHp66YqRQvXFSg=;
	h=To:Subject:From:Date:From;
	b=Aeb+2O738EbbbtBlzZVyd4Dd42VYe8IojLow04Ig3RBvbHASiFfIlPqOfIG18ZtWV
	 N7yTdINgmOHNYkQFNjBwQdQWJIPMNlLIbzK4keUMJGetS50lyhxXsivNxHI2Y3uJmA
	 u4v7kZQ6oS0OY72GIYaLxB0bHHreMe4KO87te4M+djkoKmOz3RsN5yvgrmEk9CMfJE
	 28IeOY72rQ+lgjeItnZCkfNnOZefUn0kSM8hisLSBSXGRN3NHf/4Sw5V73/JxzLW8o
	 GfqS7Ekt7GgAqyB6KzYPtqVDGv7r46kEWtPHyqXrc6xqKfXmxvLfIdSSHZctPylD3o
	 x6nUvg4Nrw8uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF9ACA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710119358.21531.14583399890986341193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1244fd197445ff17abe528185c0a249b61ef3c38286fa5c3831b595a25c39e0
Date: Fri, 05 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757101193
