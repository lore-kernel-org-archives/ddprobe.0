Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C865128B7D0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755104393; cv=none; b=GBchfF8ElvAdiV21zlAD/lMveVeJv5Y4LqAtVy/8uQ/DjXu5LwtbYDc992NvfTlhUoly0s931sfyTictitlKQEjfssh3fQnPJynGLFoitfw9tnMcX9TupC/dbrWM2JBwJ5Z0qfsBwfqmTJzG8MmNYzhRR7igRt1GOPSeEaeCstc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755104393; c=relaxed/simple;
	bh=uFLCjNjbDPv5c20ioY1huGsShlfYP04LZqIQnWpFLtI=;
	h=To:Subject:From:Message-Id:Date; b=U4NiFKJQhVmQxH6Q/E+X0EoDBgRSe+Q4HnzuFiQPKiZFtJsXPUF1R+c07c0cGVRFD/idoj0ptMjkiumkZLh0GTJ5sNlFn5HtY0W4yMrAH8bJDOKkPvR/d1Cg4S2AHpmHYK8aCiqocdZhInLjLv/No7BAYbyt8yXXala51A8dbvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuvLZcqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuvLZcqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0933C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755104393;
	bh=uFLCjNjbDPv5c20ioY1huGsShlfYP04LZqIQnWpFLtI=;
	h=To:Subject:From:Date:From;
	b=iuvLZcqjq6TVx9y6owgMmEhJdg+LrAR3ZRQ/eaWxNJ1sICieCkgpLBwRqidJm1hGE
	 B4rvz9z55HD1sMb1gjtXLEz/1DfoDQHs7F4LsCaCdhzPXAzkWaBpIoY79rI9GXs2QG
	 TCU414FO3Mc/6znjORNDj22O/Rx5cQFcUI8qEiMzjjnklbVt877pjI1qJnznVYB4Fm
	 s4fR6Bul251gmMTJFTmM+JJ5w5hrOghvt7I2SGB6Lsi7r9hfM59mKRTy1o9lNXYzUD
	 Exlqusd1i0ULYJSkBCz6fWhLp4fVnt43CGu3tYP5OIDrrnMhXkb5Hu7M1hjnWliNoB
	 Lor+8AER6aB+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B29CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510439359.13925.9503167525359767473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b1912a0c2bfe0a8076f70f12f1fef5789b86910951725c7b61d60e1767f141
Date: Wed, 13 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755104393
