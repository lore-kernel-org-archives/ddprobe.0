Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3935B3DD502
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789485034; cv=none; b=hx56J3LIXmfWEXpCeCncJlWB/OLPjm2KdLEg4zv97PtM4AEdsMiYetSUeG6XAsbmJsC8e8WqtKGOibHOdo8ue8ef7n1KthHoa6SxNuW0ziheSJuPkWH7P86Og8ugjBxQNvUrMo0c8rtq5IF16WJekKNI6N/0/cvEt5yZhjwbT+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789485034; c=relaxed/simple;
	bh=9kRIpcnXnt8cYT+pBrsBnxtXTo9nnmag9L+oO/vv0yk=;
	h=To:Subject:From:Message-Id:Date; b=ssLJqZ8TfCHE9wLruChJnFAOgLcqBp5WAKwi48GcSOggKjKxUkSFVWYMcp90Cn7ZqFmBKDxH2hCmGcIxyqQa0FKRes53HRPZClmYMLtiCvuH/7R5wkAgVesT1Pa8Ca8EUwcve3vsnRmk+6oeAN5YCDu4RITC0vh6wAJNcCWscYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4heGea8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4heGea8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBD1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789485033;
	bh=9kRIpcnXnt8cYT+pBrsBnxtXTo9nnmag9L+oO/vv0yk=;
	h=To:Subject:From:Date:From;
	b=R4heGea8H122fzmXP3yaYZVJiQ8MaLcfRmtsP9IaUTXwWuqYdMizm/oFRhBTAPZ7M
	 cRG1dLp2fzxE7hq0B0sovX/wsCK4Ny5XOVcINglCLn6YZg7z128ccW94ofvqcpb3H6
	 dwa/Th0aGHvXhe6yq/rPOfj1kCMWP3IyJaNim4W2ZwEP//FhbT3PewXM6g0Q5oOsCO
	 k+FpUlAi3Lo/Q7gm6RUBKLxMPvz/I1hLqJpd4ixW+g5wmkHtgOgYg1rVrsWchGZPDc
	 tbqto/uZk6B7lhftqVhnzUfwdh73kMrUDMR10LK7w75L4hQMzS9HFAns3435WVkhAC
	 ARgOofRnCldRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F8C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948503368.403.11428552580237018025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ffca55133c5c01eeff4ea20bac0a5718479b93a3850272e23c1c0fd935ef8c
Date: Tue, 15 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789485033
