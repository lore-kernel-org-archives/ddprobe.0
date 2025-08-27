Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DCD6F06A
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756259994; cv=none; b=lvO5+nLo8113UT7XxDwAHgNAZuBBp2bLlNhgSPTooixusS7poF1Bs1QWzSJ067HDCIf/zFpkElA9NPRSVMuVMxV7H9WRDuqH+FjLfJC6iYMsyZwK3WGAdCmUfBv4RhJKbktJ/epyMsml5HtbdPw4ZT34DJHlIWgTzR6E0qUurMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756259994; c=relaxed/simple;
	bh=j6HlH6UajwRwYH/04mMdaaXK4w0HHxjpFxYSFJmxI/U=;
	h=To:Subject:From:Message-Id:Date; b=GyMp0c2a1vLVcbW9mfsECPxluaARZUmSKNadU+chKjj7/5TMxPzohQydUfUCHhYH/aLo10AM3zsHbR1bkQtgSdp4dd9/i1c+ZkXcJ7YQ5+2vc4YYf3Pj+icIAFaY0K2tdl0VUHtiZkCUA2FQVpFhmj9xzRYbP6yeYRjl6fKVKNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCWm/0ml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCWm/0ml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3A8C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756259993;
	bh=j6HlH6UajwRwYH/04mMdaaXK4w0HHxjpFxYSFJmxI/U=;
	h=To:Subject:From:Date:From;
	b=dCWm/0ml5J9nS9hmAtJJ8SAerYeQ4TKgTnfQDs+J4Y7nJFDWAXx0tXeoHNAemVLA/
	 QJSdbf9Nkry8j6zPqHc+ZKHuUyAFSrBxMtFXr43M9Sdlio1E5EAaN6R287wWFT9yih
	 umJw5wGjDTbR5BvzPv+uLA+L/HBDmVjjUP8mSojESagJ5//e7yXE3GO7WzCs1w0vOD
	 1lxJLnOtw9hZuFXtqEfSmlV4yX5um5SNF3lxs6ofb8K2c0P6tHwogMtJmrT7Kmhb5Q
	 9AuTd86pdv0cYfU0+bZai5uRRpt9jm5oVkBH1DKaHDsaQg/ICx0E4Z6UoAkIG824xw
	 YOwgvKlv6FlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931E5CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625999357.17457.13163967586184109779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd13800a4d1b720e7e3ae6686873fdbca06202101821261464cb98968d49df6
Date: Wed, 27 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756259993
