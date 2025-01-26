Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F815684
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737929155; cv=none; b=LMtQMnPhGID4+7tjl85eEULrh+2Pmdo7QOE3zBShuUm/Iu4qcwoTVR0DWDMbKeMiSXjGRWrcpyrh2ElvcKBqqRYZzAPQv6LZew1NappbQdhUeCRV77SH5SjhDDdKLsgmzbqYhf8lcdoKi926fyPR5WnB8zO7YJyP9pgXNGcsRt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737929155; c=relaxed/simple;
	bh=bIo0I7b0xphIlIPYghLkIYUxch1N7qdIoFYsrgW0YSM=;
	h=To:Subject:From:Message-Id:Date; b=R/vmUtOWJiLTdWOBauSlxLSJ6SVjsLtRFqq7h2iTKzCsEVkSTWCJF8vk2RUTtU5lJB0QDf5Yjn57tGCxe3v48Twmy3QjCcoKQl7a2NriLjIPDkiFuuwSAhmV+1kd4iz+PyilnmCi1SzK8MNSbHthUgDY78YfD/KzpNvtBBQSmpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjRu7fZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjRu7fZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C89C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737929153;
	bh=bIo0I7b0xphIlIPYghLkIYUxch1N7qdIoFYsrgW0YSM=;
	h=To:Subject:From:Date:From;
	b=LjRu7fZL4x/A4molUPwtyE2x8KOEykxa2rKqxA0AdpgzqbX3ArneqYCpNYXCUqUNC
	 ssXO9sLjZIWlyw/CWDWo6Z7cJoy16LnBpH46w6SpG1k1JI3LKAe0FBEwCw/HQWH9pM
	 ewqoIQ0L3LdRStxUzy8/VvRCNgYV9Dtm0wB7NG8HVMdK/Ox+wMKyAKt29n9uQd1o+6
	 3zKnSddnK0zfDfsAvLHoqp++V9h4EHfkAzv+UuazBaPn/SnLvvgi3o89by8M4vOIf7
	 HHlkXK0lJrm8SbFy/4knpCkToHiFhkrUxXgMoyIc8TF6DIrsVJvPFVq5rjgX52PQio
	 04QIsWVpWLqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C8C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792915358.8262.14477335869419084638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cba8d3a7f93578e21ab22d222e32dd6d94e252a7467ec7cbd3465366a70a322
Date: Sun, 26 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737929153
