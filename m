Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A41F309EEE
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758610194; cv=none; b=QyUO7AovYdfX0gNd3Z/QqHM6Pd8wX1zVu4hO5SQNMQj9yTVXkFQA38+cda8HyIuB4OwOT8ZqV1k1WSD7/O7bLCvuqGn75kF15Ls0caVTeahKAcfs3EmF657f2E/DgyrP5AughoqnV0DA5sMKgxQWSDUiClh9zYtVYRLKkxQVQzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758610194; c=relaxed/simple;
	bh=dFiLG58c5huZr3HcchdAQff4SzEUZiTGNyBHKvoisKU=;
	h=To:Subject:From:Message-Id:Date; b=VbJDBG/ngr3Jvpz7hSN8GvA0Gkj0l709yt2vwOBLOFDg/fwyWB22gPdO4Lm6IMZMA6oYWWIRUldQPlq8/XzD38NnVJo/qsRi9ripqYl1OXRKXLnHHPcmjRYjIFjcWWPW4LLaho4inkK6iFbnZLp6BHfa8HvMAq8uvz1nnqDBRMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khm1s3fl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khm1s3fl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A058FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758610193;
	bh=dFiLG58c5huZr3HcchdAQff4SzEUZiTGNyBHKvoisKU=;
	h=To:Subject:From:Date:From;
	b=khm1s3flP1lMIve+JOz7EALU3B+d3NsZtmWAArlI0Dh+Kw1z1PKqEk/PMAE3E6OuO
	 3/AnAnxBVB+t05N/fkZoq964BP0XyL6pGVer0xMEKrKJL+Xbk/dapCPxg7FUgQGszJ
	 W8gbKim8Fk+53iCQf/1wRfpvTpxbkjiY3YPdSioMGR0GRLuOao7NtV449C9WwrNxNz
	 H2ofBCTfNMa0qCpcDMb5U1lmlmO2+5pk4xC/DCHwzQs6GNIJPq3bC471Cpi1yO7bHC
	 VrWwnwB9wxCl8YD0e2IIYcvC8VCIrz6kE7oybbfa7Bg4+GGogE6nEH7rmYj7ld3YSt
	 h8bHu2KyznDBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40BCAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861019357.18132.5315634487389829907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ac8765b6180d06354a09486be7b92a5382ed3f26a01e69b6e202415e5ccf24
Date: Tue, 23 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758610193
