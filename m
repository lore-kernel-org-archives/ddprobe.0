Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C73C2773D2
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758405594; cv=none; b=rWjDeqJdTob/qwam11dtyQzljFPdNd28tEO3fhSW/RtkmG8IZ1ypnLsg4vlptAR6zXDsWa5iwwiUITb70zI5PMSVE0qu7i2rsFeQC83oYfW677DV3o948rBeeTmJ60Foo58i/9wyymNjiQ/phO2/ILDqj5x/ay+Tyw5jUgSyOkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758405594; c=relaxed/simple;
	bh=MtedZkwkc+CFqIlSs57nJkIbYcXmrKMqo6v8XrqP+jM=;
	h=To:Subject:From:Message-Id:Date; b=G+Uv8NKYgsxq9Ix91qoUdBTXDBBlz9llkTjKKW+OTa1Wkd5skMwjOGNf+gSGqpBXeEotiScfXeWOH3upReNMw7IZC149BiIvaNIqjIXAkzcP8AGFcWWGu4bfWgM+Dhe9xRVvj69e7ngxmcBfXGCOSjD2hVU8a03n5syICyFKRAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzc8wAri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzc8wAri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6021C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758405593;
	bh=MtedZkwkc+CFqIlSs57nJkIbYcXmrKMqo6v8XrqP+jM=;
	h=To:Subject:From:Date:From;
	b=dzc8wAridhYQbdY5b1kCjak/9Sd5muT1uvzSt8PXjbCmRhad+BOPbic4J8S0tLH8t
	 +WI8lM4uQoAJ4tO0/U7eWr/HRRi6TQRAr3VnSQkzC2zN+nIl1sY93To/YRpoEw7tdp
	 Nhst/e6FCSnU/Oae+LDheSifSxRnrI2swwKZnPvAaRctb8rMoqQ+y+Rkp5GO9/ilLq
	 4vCypvUiuWj7n1wHf/3QFwCQ9mstt0pw/32eUOviScpPVV2EPw3+aYYOWg3ySpgBTU
	 1LESWj99IA9g7O9FUhxTwpXH8OQVKVw889EdRDnmqOHMSfbTrtIaTUoNs45rMb8A0u
	 1mr3BiuupeJKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910E8CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840559357.27979.12929916310955753716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950ad4a99a0e3c96f18431538768b8e763041feefab54e9a14f4cf34b2d49f8a
Date: Sat, 20 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758405593
