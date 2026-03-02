Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29819407582
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772480694; cv=none; b=CpVhCs8NFaUbngPTz2uw0rr+r2UfAa0ocDiz48stctjIRJvLIIUymFvQ4EMGztQs9zUTYK3iEjM0r6ZbggDaz3b9Qn9VwaoNAz/y4/ap6f5WbNjPhv/MY0YocL1X+cs7TojI35aEXZrlaPuqQmzzws+Gxx8TDf8gPX1iyBF9vmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772480694; c=relaxed/simple;
	bh=cjBoyBaQ6lEZ3khp6vDRz8pE+RzAbdoce56xotcpddE=;
	h=To:Subject:From:Message-Id:Date; b=BqblUZKtZ+fYVVQfXDINf+U2X9PeH3M44R7Bb8VrmcYJCQldXaRTosW+MjZZo77AhZryAiJBIb12mDMn9erjS3wNv3FXKeuzKOSiFbeqcTccsWPHOHcepaZMdAgb+H4oCq+mRfwITQxQbb3rgl9cuFXaAmRZPA2jjJluVzQzf9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNX20OAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNX20OAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A626EC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772480693;
	bh=cjBoyBaQ6lEZ3khp6vDRz8pE+RzAbdoce56xotcpddE=;
	h=To:Subject:From:Date:From;
	b=RNX20OAGNilOoErObrJR9tt8vfSHHa8nhC2pm6G+5+vVkxTXWJ0xU+m+3E5XtqAmd
	 rEf2HjE5rUQa2/4l27TD+2BFvvpXAdiFGgmykwMvkHuqo+j0Mq+pSZFbgWLW5CiZAb
	 NvKQxAUmhOVnUndnzIOcMMveA09eIm9XPWcP3R10wihHloohC0jF78zoMR6lkyLRgN
	 BfHRPAZBVh9N33Wx0cudEIq3LmKoEVN0mZn8CYD4k0yjF5qqxOVogNIBQ8seIZNx6P
	 JzOFdS7VdXYdi9P2WQYGsfra0eMA/EPjwrscXi7hKqOi5vqYqGpRSt8ZufvMcQIK7w
	 h8DpR9B4WCspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABFEB362C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248069360.8665.16460882534572367371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af43d22f4b5653db8b6fab2ba283076ccdc432eb34cca961dd1c04b08a60e047
Date: Mon, 02 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772480693
