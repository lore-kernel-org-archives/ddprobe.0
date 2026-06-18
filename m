Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598AC27874F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781805994; cv=none; b=ORHPhmD//M19hBYxzSMPP/njNhAGBWtBmC/BQsvRB1DHOTiMZ0SoKsAQfp/uMXsvoIrpT/h7Zmjj9w2YtqswWy4S/WS9IeJ0aAB32SKQWN4Hd8jgazl3wUh3f6838FbPsm82AppanB0bi1KaNSP60Z+FN0HfkMfqUb8YefFpKKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781805994; c=relaxed/simple;
	bh=Empj9mXmUHqJoK7AHmoF5mFhBbxbQP7GT1ruA6eYs/w=;
	h=To:Subject:From:Message-Id:Date; b=TY63sjosyklZENSmaicsPMC4xpnZ6ftU8PuND0rhrQNr62kOIOUc7fl099fcxNPqjzL78K2kJSesvYvhsILAvkVqk82wnySVWrKF948Qgh0fX0QMVJdWacjp/3OlcRpiMuXfQwHs6V+AAMkMaryY67JdxNGcsG0SEo6e7Dy5314=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3KegV4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3KegV4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD60BC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781805993;
	bh=Empj9mXmUHqJoK7AHmoF5mFhBbxbQP7GT1ruA6eYs/w=;
	h=To:Subject:From:Date:From;
	b=p3KegV4oVr7Xl8cnEEGR5Jsy9NjcsiZo/HmolyyAR36iVvb4+vWfcD1K+LW9MAG0R
	 gRQs9EJnl4jxzjrvDu+DL5yd6NB2i666cIgMmW1hNvNz6x4DuBW8pMfDw/KPjDVa1M
	 h3ee3rm5ClcS8//O6Ln0Bgb+tj6eI69+YOfExImAIRbdoOdHDFrNW0UDXgj6w7vgVf
	 eTYBKfSsjVlJ/mX4NWG1RXrRCWlQpi7wDf1XW4hX1pY8ZzWPonEM3ZZNN/eHi4B6kc
	 CnGhh0sVUYPVwuOE5XoBRmRwmPYo82B7qK/5htMQGahhso/s4sX/8LloW2XXRxHVxL
	 qFhs1X/B90bzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B757BCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180599371.14854.8336552318839117883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47c4d65397812f46ad367f502000d1711d3add17f200cf41a96724da30cf424
Date: Thu, 18 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781805993
