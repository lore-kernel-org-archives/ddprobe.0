Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA968199237
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749106193; cv=none; b=JOR3QpfnHAIrAy8iBI5nUzrC1hYiPmKZ/2kaQTGyOWTxy4JVM3ft8GBghAs+da8hF5jcFoMHZhO36SXhyXcr6NPz73jWTuol9jHbDoKXdZ0HlgwzLpbLHhXTo4eqnXyuqZFW4ScFdFfF256J3fG3SyyKa36ZqfDCHXqhPDtxqZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749106193; c=relaxed/simple;
	bh=RYMrFIwCeoQuG3j8FxiTuFQNs7mCbPW2G5Vxho21css=;
	h=To:Subject:From:Message-Id:Date; b=LPS45E7MthaIIvdFti+nj0EguO3UhPHGDCe54MhMmScMgykEkeohYi/ms6xmFBI6t7xbKBWroi9i7pjMEv8Tfdachxnfee1YKME0Al0fEOQQAA2Ao5SKlj25OGDRQw4jXFNdg0Hh3HTLOvz4oJEJOZCGBJHV71UfZ/9Q73M9mnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZ40v/Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZ40v/Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7BDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749106193;
	bh=RYMrFIwCeoQuG3j8FxiTuFQNs7mCbPW2G5Vxho21css=;
	h=To:Subject:From:Date:From;
	b=TZ40v/Zzw7mSs+GdFajtmOxpWmj5/Jr/duO+nYEl+ZzzIDmMqT10laZ5jK8qf4iE9
	 M+iAKEXe4b5Sn5P6hq02sVBpdXAWOLMtyz4W3Oiz/HFVSLdidlnLeNqroojJUTmoBZ
	 1NY5zH/v7O5IImssJjmKyq7jO3bgCMrtrioRVuSpnlT9HQTAEnJQuvd3hP5WBxMbFN
	 y2rBtf6IhXLZ1Ixa7uqOfScDmR+XOQjfSXEMyom9MA4EWQ7lAxzgFgTVDp1pOwxHkY
	 26kp5I4+NhyKMJzRQ8SyxyG0UYkQ8we7GUJb2SxQijJ16SuUBtspC2wxEn0HXb8zFF
	 /SPTL+YLNnU1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11EC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910619357.22079.7226641064248209252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89eeab6acc38967bc4e05fec9028b7aaf9c77a54dbe8a5bc7f1494f8cafba6a
Date: Thu, 05 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749106193
