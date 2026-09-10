Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5210933B97D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789057234; cv=none; b=OExPGTYUlB4faU/QQcHzvsD5IABJuIC9nUg4+BAyJdLUCmJnAczIkbwxvOq8nYsdFiWR7BnA6hMYpIC3jZLTqcESnO1FzXUWopqrBBJ9XyTNJWPR5Dgl6wHHHUjEcHZmdfD9kWj+4mlT0PwW8uoIeTaF+mS1+oOmDMAIyTwRtnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789057234; c=relaxed/simple;
	bh=/L6QR5zkn8QHR8wbv+6wOhLOM05OGNLdtPufptZ8br4=;
	h=To:Subject:From:Message-Id:Date; b=AggHiAzk3eSZN4hBNIuxvZVXbQwpsU3Rs1V9LLPoEYlH3BIs1SeeNSczypLPObQ3WMdV1nH5FzJczv4GJ0AXZWKaexCfoKTuX+2jeytWAs5YdS00Ynn9KSpTKlyGOJYJkEgpcQv8cP7XCPU2viF7Tn3rnmZBAmERA+H1mgnYeBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8ewreay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8ewreay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30AAC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789057233;
	bh=/L6QR5zkn8QHR8wbv+6wOhLOM05OGNLdtPufptZ8br4=;
	h=To:Subject:From:Date:From;
	b=E8ewreayI6CpB549jQr9tEaZKmVj8segs5P6yNHclYo/s3bK+A6e421fMz1FTMWPW
	 2U8hqKMHzzjA7SeRcrDBmS9U9MaiOhftil3E1XnKP8pTVDcbaqzsr34Pl0TIOfruar
	 uNMcIcWMFBtPgts0hEk/HE7+u61Mo+m+rjG78N0vkuZ1d+UsBqbr8D1/kilmCq7ItP
	 63uO26lR7Fwm0ujhbtCvNv/RWbpKXE9KXFUeOe63zbMjfJPnlNgq0dtECfWu98Q4UJ
	 CvDyPe2ylQq3/9AMTltCRwfASHvfrkbFMh9ylIedcAIed5ROZvPZCA0eGxvABtC0bH
	 1okYVvTZsAb6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC07C79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905723370.5467.10152859471604239689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad1f6009a9b92bb6e2cae7c0a009f40d843d800f4778487749cb3eb48b76a04
Date: Thu, 10 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789057233
