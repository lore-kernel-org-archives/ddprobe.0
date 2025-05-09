Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B576264F84
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746833394; cv=none; b=q0yfNI9iKFgTzVJ4zJRs9dO2M3uE6S1rStFkkYMw6pJ8RPtpGaePFR0oq/uNcEq90MBpBOo27+tizC02HLLQ2WeohhG6ZQI8FiWxg7czwExiAQLouJCK12/EYm7rHw7PIAXU2RHexoM5MUMuPUDju7IcEvHrfD3+hIZ4dDOqe8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746833394; c=relaxed/simple;
	bh=sIv33j9aMAgrwfxpbUR8IDsJ4o5oGK9NNtTK4cXpDEI=;
	h=To:Subject:From:Message-Id:Date; b=biacYqZXeoMMRJBGqZo9/6AAlEGp3Gy+3DjcZPoKX4LRRo+4qkaQHNlAbW857Y4SgYV2MHw6J00jPt0lPaAR+37TRkx5E9p9Bo8tzAb4AFV1/Nugs4/MroGWYvzRcfGZYtkuXzEt96o/z2p7CSLhpKl/hcHtpJKseIg2gttJ2Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghzTtWJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghzTtWJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEFFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746833393;
	bh=sIv33j9aMAgrwfxpbUR8IDsJ4o5oGK9NNtTK4cXpDEI=;
	h=To:Subject:From:Date:From;
	b=ghzTtWJ3PBGF5b694f2guwQ4D6n5Pifp08zh4W+91qzvQHKwtaTcCiHJzr8o5uVnV
	 QdRyR18x1mbAzgj0y7OqOOyCe4/MgP6ev5bwdJQQrXLLNu3ud2cYOZDFbtbGwqCBFb
	 5QpPUuVsH5IW57Cv1+9NeiojHFtkvcyRNl6D1D8Nk3HgE+WfLs8bF0gNhUDv0WWTmf
	 8ims/NwI9yByF8MS4CwxOu3aX/PURnrJGbLAiHWmSG9mEkM9rBO68CcupKcxXZP0lF
	 FmDHmVwE8I+JDlbbQjbVRkUClWgTj17LyZ4tEJWHGluhIMZyYftsd6N9aLLNpFf2Nl
	 cz7hgVqoGjVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F7C3ABCB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683339357.21558.1354608558770745373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299b94b96a6ca66ee34fc4d3b75970f642de1a4e823bd090d960f350ce3627c4
Date: Fri, 09 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746833393
