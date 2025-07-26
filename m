Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F56F1E9B0D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753513795; cv=none; b=TxCI6nEOCKH6BxqUBwfgQpFhnnGt8KbVCLd+wJkWHxz4je8gJ9H4MHt+RTG0zlwkv5wLqO/HbDCqv+5Y7eSIsV2nT/UnxYXbPfKSiLboXhvrBycI+h3QrmjrPPtUH6Y5CXvZh9gM0M8MNgeyVVPSDjxoBei8fhEEVqu8lmvycz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753513795; c=relaxed/simple;
	bh=Xm8l7OMrpRF5LzySyxHj944M13MSCwVSBd+iAsHfqaE=;
	h=To:Subject:From:Message-Id:Date; b=G8lGuazCvKDalYQh6rRYCqCb+Be+XKzAnZCXtKVzSxtDY9mjCaJ9bdr2D+lx0zOQiJAlc2Pry7R2Wq3yMTGeXWPKgF15pvhf13KorlU4ls4R5Yo6M3cNIjmWLqM6uNeKXC7LJGuM8KtKvOxUctNCv6crCgyZP6xftc5zf9JW7gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQRHafr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQRHafr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A575CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753513793;
	bh=Xm8l7OMrpRF5LzySyxHj944M13MSCwVSBd+iAsHfqaE=;
	h=To:Subject:From:Date:From;
	b=GQRHafr9MMiKmsfgqJMuW29QiH3PRei/EDMSV6+yTIGA3sna3hpqy30SIBIHsev1x
	 hDwYhh2nUHpq6qIohXrP3056v2hTlLd3woBT1tWP7uzjPxiSJRu/9k4jJ8cAxwWEnJ
	 1NxT9VVKvAi4oRo+YskQ36eLcxT2kljj3Q1CP0BUX08wCYtU3G9U2bfRNUdyQbbBns
	 WxLF0sV9kJu07B5mLIbBCRzIiJwbzSTxG85JIH1D2FFVze7eB8yWb3MnFPhbTBG8Uq
	 HjM38GvxPC1PkJsEy+PJUSdT/nSIeoXHYgId06DqSheLw7fR3OARPucpUb2BceI/1L
	 Pz28oYapsGkbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A61C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351379357.5729.15301511894462917817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076497cba0294b2fdf956316637b78334f6f4368caa558733b7ef3c1a87e4904
Date: Sat, 26 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753513793
