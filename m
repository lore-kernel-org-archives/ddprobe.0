Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25653F9EC
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750064994; cv=none; b=nNdfTOF+JfOZFoJ1+jzko+O+TULDnQHFBdmB+KPW8qWLOwe4T9pl7LkofOHC9t6StMOIgzdcRV1424w2vvzotCZ2gIkjCgpdRffs22GI46hlI/B1cSSJyHf6bnRtXI415Fi6OzZl05mfmA9yOtuAJip93VCwhTA9oOLHk0CO9DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750064994; c=relaxed/simple;
	bh=cQ5EgUh3/l6Ap7gwdxgoi20NWWiK9I5WkDU5vD6b4xg=;
	h=To:Subject:From:Message-Id:Date; b=KB7dybIO7wnAJlsIO/xmeAltdMgfYXMetEYTg84VgjHIfgU07HOKxSzqDLwiNyWeBdVYnihvhn22zceHeUh7eRIE7REo1V5iGmTMCegxcDSm3VByXvJYn3z/CDVPLO0IMkU5A/2ayi2HoVqizLQn0TS/JEh44s60Ojyo2RtNStc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCmGjhRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCmGjhRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B9DC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750064993;
	bh=cQ5EgUh3/l6Ap7gwdxgoi20NWWiK9I5WkDU5vD6b4xg=;
	h=To:Subject:From:Date:From;
	b=pCmGjhRYN9sQNAHzmQSwq0oKUe2d4/oX1f6pKEl5qVAVvdfb0bfDBvXU4LU6Ysxkt
	 /kE1I4A0lKzDtDp3l9L7zEyi1HZZPpKVszQ7gs12G6X3lotOGaWEZGOVwEI5kLJK0M
	 g3TGtxJ0rfYjzdt1qmCZMtIR0VUuW8D4ztavhyiditlvMmiNNPMpOqbrHf53R2j2Zj
	 f9Sdhk8aYIpCdB6+p610S9cpcjGp+j4T3nBhEAdYwyh5xYYLXUPdDZIoBoBfN4opY2
	 txB/dPulGAsr9+gOuGn+FJLpM9ZxhCbcQmEX332bbQ9AefQ1fwEtrQp6KF0W24bTZv
	 2lf5RKMJNpr9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92591C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006499359.14150.412308391007288677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94eb98c5259a556da7739ea0c11567866d455ab80ee483f54aaeec4ed85ab7fe
Date: Mon, 16 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750064993
