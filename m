Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283BA28F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756088394; cv=none; b=D7sqTlp2aa15xAsiaDNj8YKrN5cxzqWbMe0XLnA8wY4My/YOZiIezRmzjqVliNnKFKHWD7ic4GasI/au5GEZg3TSlF5i1wt06ML21DpSNQVzQ3cIFk/4A4vw486YcP844uDF0jc9IwQiye2TT6XXdnbKwYgIY4maxg38jR7GQ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756088394; c=relaxed/simple;
	bh=skC/mXvR7JhY3/0fQ4gJCTYTnUSN01EBGg7+a1Cp+WM=;
	h=To:Subject:From:Message-Id:Date; b=XWRl8gjR6AXXzJiJBIs67Vh7Ut00BoaW9md6Zm0yPJXttaMyfiZE6L3p1fOBfM9cwsAaQIbkJtGPwt9+rWGr7reWicqvOYRdbu8zo1McxMMs6mQm+h0oGY4LBu9eM9JxLYY1Y79RLQwsZ5G5R5Z1E5x0iWbZ9ikQJqvUbD7aV4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDvzAgbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDvzAgbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756088393;
	bh=skC/mXvR7JhY3/0fQ4gJCTYTnUSN01EBGg7+a1Cp+WM=;
	h=To:Subject:From:Date:From;
	b=pDvzAgbkJSGvZuWUZWFWYI9Yka9xYMHCgPEV/LxhVmK/88tuPTc6+STz+J2mOgI2t
	 +TwM1NCV7NU+1dHqnBfeKK50sw7ONV/U4aLVOumP0iBnkCXtcfRgb3ulkJZWAH84Dx
	 Iss/UG1hZc+GDNV57njedimMjJ1L6IWH1/lhTfcfmkR/uAo3h/d1OyLbGm94OLI1Np
	 ydOB8S7t/4ZMpXQf94PtC8Mx8Hx8GSWnD/G63ttqWnf2CLqE12EdM8h85NHZMT48sp
	 NvlmMpdi86FgSZaXdDdyAm2CHtOAq4Ek7ioFX5Z/Dnu9a8i8aVX6vOBGk3ic3XJvOg
	 GHmD/vMgyJRvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8DCA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608839357.24827.3298858840725526248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62110d27ba2c714d8451ba659c7f8a21697a4463d86b9cbb651532f64987338
Date: Mon, 25 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756088393
