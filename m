Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA93188CC9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780463074; cv=none; b=aaL7TowfuzegsedghMMMK27sX0IEMn0Zqcy3PnWPI2uvyDUgPGFbaSyNPy2ySuqTS/lDhYe/EOKuUSAsCfUpHoNB1aajLPMR5rCT8Szyr8Opk/DlLViLa7u/S0H33z3lUWNGDCRNcY5xsSGTvv5dPbC1HJ96pznHZYmOCpWCmB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780463074; c=relaxed/simple;
	bh=O5Yiu4HPi5rlHti4R7Rx8xKOXjFGPq+mM1gURv5at0E=;
	h=To:Subject:From:Message-Id:Date; b=kBvbqtBHbxkw4WuTjFfEG6FrVUNjvQFMuVyTStqM5XfB+AemukGn42KqVQtRMjWTV1+P7LR1/FKiBwc3hC5wMQbbWBm4DXG05dabXPcVnPFw8QbEtKmR9TloC3cNLSRgUwDWbalZS33VyZoJsiEfUu86iR63Joa5zl3iK7INZug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiLriIw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiLriIw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EECC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780463073;
	bh=O5Yiu4HPi5rlHti4R7Rx8xKOXjFGPq+mM1gURv5at0E=;
	h=To:Subject:From:Date:From;
	b=UiLriIw401ytSdg39jw4w0fdW7mGn50FI/lHgUxK7ZnaiW3uVpDg285kCkzepJYJq
	 8Fh01vfNPUjOKGB/djNsReV9lXvmIn3XaFkxnGB5gyx25l0RZKl0PzjGQ01liClYqX
	 yhLTHnJ7uUmf3u0LA+IiTRcW6Jt8Y5jcuFs3Q//zfR3dFMTO0O7nnZkJ4eGMJjEFOa
	 BEFCL72q2U2wUANvMJZFsNbilapDm/bApXl/GNVU+hJsENbdwoZpv24Tg/5DviYD4u
	 adGQ+oeQVSEKtwPM1gtNDgLB7XQMzmGrDvo/RTAVT89jiVifEpHZt3+bEOjUIrGrC6
	 03NLIDqL1sR5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF671CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046307371.6439.6926944462714006588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9ea2013f52f78a672dd209afcaf3205cce2e235dd4e08c8e56f2e865384e01
Date: Wed, 03 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780463073
