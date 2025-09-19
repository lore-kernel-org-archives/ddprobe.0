Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB98523BCF3
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758301793; cv=none; b=iMLyiUZyw6sEpnh02XfAcu0ucx72DofEoJyx5Hs6mCWBiHffc/zemCOzf4Y6R1nXlEsrWFk1834Ln/jZUvzh4w0fmgt/SPIPF9FE+MlCBAYnYBvaVfzTWFXl84vVcaJwDOsHN9rBthGmL0cn9XiuY8gkRCm9WT4Bw7km5ocN8xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758301793; c=relaxed/simple;
	bh=FSwhsctEy6ZvOItJ5+XKioX6btfS5NWZWpq+7iiCkAQ=;
	h=To:Subject:From:Message-Id:Date; b=RaHEEs81blncOUxUkAQnV87xBq4EaiInvu+BPRad4E7WXTqyYF8bwhWjym3Bl6qACzkGiR6kgIHKesIzsif9o7+FMVtXiLyz0tESWWp9ca5GGryXyLDQUmIT+ggInMEz4CKi/daWjQ4Bs0tF/NMDhali9s8pGf1X1bbdf1htNEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9rcbyBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9rcbyBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E35C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758301793;
	bh=FSwhsctEy6ZvOItJ5+XKioX6btfS5NWZWpq+7iiCkAQ=;
	h=To:Subject:From:Date:From;
	b=l9rcbyBSbSsgKs+yuPnJRd9w78aEMAuqOlT6H7FtFG1CXKBh+ZZr02hqkdBp+ntdh
	 ffGUJfCvM+mcGyyrNUHcdfTE4FHsoVX1sikYbzcYGB8ESqgzhyivLRbx8hdw/Wpz/3
	 ncePThHU4tSIohYtgA1NAEogGQmtgQiV9shFPH+RmuGUmnT8RcG9CTCKYGqIa69KBn
	 q579MnGPfUi+36QGQAX7F+96j+BsE3dACRA7Va6NxKTKDiRQkDz8hvu9t8zqN545DA
	 mhLSQR54u9McXWjISFB0fMku+8+/E2X76JIFKirzkq0Ydc7A00QO1h2E4brp3pKKaT
	 OXxE2RMkdl0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21BDCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830179364.9180.3709151598407664397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de90b0f4038754744a443ff427e854f33ef67790f166c378dd5812288bc0356d
Date: Fri, 19 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758301793
