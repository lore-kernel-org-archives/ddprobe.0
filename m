Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31880367
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748118594; cv=none; b=QkwM9YpUEbB9SdVk/Q1hamVi7qHIPt7I5febtcCSRYyAJClYcImqELHErMY7dON8pt6oUIVr4RRNoikS+wNmQxMD+7pBbah1nkGUC6OFjq9b9xuXl5ScrHrBUtxv+3tYKSQoV54kDbQ26pGHJiu6mA5PlikrQBLMiOHMAfYx9XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748118594; c=relaxed/simple;
	bh=/9cYvxAbCtOg55GaZTnlj0sJFjmgjnsmUxQsRJjMCHw=;
	h=To:Subject:From:Message-Id:Date; b=Pd9EMwbV+UXPAhv7kiV8jVoflXKrTCYdJVcMwZDEjBr7nM2f1wFlcFec0gSeceyqBIp8Ru64eObzOP3DM4mzXflFHa5kAKPR2qknAmQIlwETGkJzvZh7+ivo1d7yRFessJD+fP+ozoMaOaz6ZrD1SDlpeheIvhl5wjz7+csNQa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my9lath/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my9lath/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5485C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748118593;
	bh=/9cYvxAbCtOg55GaZTnlj0sJFjmgjnsmUxQsRJjMCHw=;
	h=To:Subject:From:Date:From;
	b=my9lath/vXY+A5Br9k/dj7xkN7/yPmBZfzUrwz8PltlqoPl69VBjsLPaUvFXNbTm0
	 C3ZRbbwteunwlB2B0w1Mi3nSf3RLCWlPrrgu4jfzKIKKDvocWdGTu1Xsmq/rSXKF6y
	 is/Sij0wrRURoYux21bM3OKsaxid6D2pXGBoCKg4/se2xNcRx81pHxjqJaOhYxXuoU
	 hNCbp9zeNvHcjvtNCUL5jJGWGeZ6/S4w3SmVJ2pBepPJS8SKlGYwywQJGJ66qM8BtR
	 U2arwpuFzne6TgIepZDfWCI9tSJLybzTeyZhnoE4SzkRR9+PTTfxIoYrbKWoWApcWh
	 N9mFdJh85Gh2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C29C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811859357.6174.4524450451414491701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db73ca778b071058f51cd1b0619c3c5c975a8f0109ebaedc8d8d57700a9bdbdd
Date: Sat, 24 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748118593
