Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4A1315D3C
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758030594; cv=none; b=C3d6CDWL/jfYMiF1EX04A/OtW9iQSawbjFpbmoKX+6zarjonJqep7myahhFTs4W8zQdbViIAU8CDG+uCC5LeQAeNiqL9Uj/BgKf3NQp+09Yfyj3hJygLKbRmsVkyRl00mYmATcDXo/JJF3sWXZY6nKYGq8otckj9XAdb4FS8dLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758030594; c=relaxed/simple;
	bh=HPuSxV74zpAIRaqG8V7XH18PUjf3VqrCkI+Ss5qlEgo=;
	h=To:Subject:From:Message-Id:Date; b=eEfWJA4SvucLNMEPr8HGZun6cA7AEIWj9+tNcSxBd+UVsLEe3s4hmaTrPRVastiV6xyv8lcenJ8PB7PVlFG3R6xbL6e87eogiUPksH3kLLNfNnYbK4rSYIenGciFXlP8HowyrETUMCndNjSrCPXAwuqrPChfC7ZKmx3xuaO0NC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ER7tAZ+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ER7tAZ+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D705C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758030593;
	bh=HPuSxV74zpAIRaqG8V7XH18PUjf3VqrCkI+Ss5qlEgo=;
	h=To:Subject:From:Date:From;
	b=ER7tAZ+3FIkSN9dEleKPkLGnJatHlda2m5K7Ev1fRHOb0VcPp7k1OzpQu8N2EcVlS
	 kKsSi60OhTckMCQY6VU/ucW1HUKRTlxoXohIM6ug2SR/BQW7k3jHZoHnFXQ6yfDFCr
	 0EYqyeQoVOnEmftHDQX67cXJBp94FwuSvseqikkI00JkxYllAlr/WK98Oqp/b2nrp5
	 tA7M4zJ9Bb5Y4pesLDzN4T8OZT20H1kr3MCxnIbQ/fYiuV//hKAnaRpFpIo7KSNJQT
	 Tdq3/ocVK5vAL7KVgLTnF0gTvkayupeATxWr8peIEwcH2Pj8e8mXtssjaw0Cx0Tygl
	 MaVxZB61Y2Edg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F948CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803059357.14084.4691895601588414753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53c38d9d73b1371ff0789d692b51e466e8891c4ccd9087403432a2f663dcc93
Date: Tue, 16 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758030593
