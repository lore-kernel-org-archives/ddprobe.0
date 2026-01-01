Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158701DF755
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767246834; cv=none; b=U90demV6Xx1hfseikrRuJGwdVKnVXJHn3rgrW0koUcLGBLDzIpnCF+JHFp/haojL9W5JxHmilcE/RpWXuJpr4aJAZW5vcj1wgxxmeUB4kpB/5RM9gjSZy0lYqsLzydf+o5Khv9CQlTn8BcNS+bcN1Lpsx7aFYWIsUMCt0l/VUaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767246834; c=relaxed/simple;
	bh=5KTfcUuIEGifCZ6NcBhoSg5pSR2IMTXuGoh8CeIQ4uA=;
	h=To:Subject:From:Message-Id:Date; b=p3LYMCeKQzoRoDsTw/IuOlE+8bPBK30Hj87kd+JuUgUfVptkytJdrhadjiYaQjwckd0znvFlp+CCAhcD5igEwG7TAon3Lmq7YzicvBX15daKI55w3vC+DdoxZbLMlcgfP0qTpa+Z01gTX9ymGxcFiZJ/d8FFTqdhPZ+L+x2TIT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMY/hsp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMY/hsp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B68C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767246833;
	bh=5KTfcUuIEGifCZ6NcBhoSg5pSR2IMTXuGoh8CeIQ4uA=;
	h=To:Subject:From:Date:From;
	b=VMY/hsp6dQJz1bKgRL0wX0Rtz3S/EITyIDpub2QEAlUEJe0RZaeQlGPzH+MAcB42u
	 ovZXbjwXaThGp1IriC0aTNCM9t/3RJ9HjKRZBJRLj1H+QaYIGMn5D3UIl8CnYULXw2
	 RbF/AqH6O/XBnXmGsUXWwK9kN5vgxN3b3HRuCMpuFl5yFTFlTCzpvsWC7ElnVqsKxK
	 SSDrFjTqeGDV/yb3UfRlxOhOMATWkfnqfT77HQtywMJtH12K1eXCsncRrcBTNrokh2
	 RnIpMa6EznHiLMOJgLgFCahsyzz18Q2NUE21paHGRSdQcGlEWV4adwfd4PIT3Ksm/2
	 Z7MVHdeZ9TPNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DEEEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724683357.7778.17582844205407797365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39e9f661ec5c0d4c12642f783a7b4a910f56b71435482a0a772757003feb284
Date: Thu, 01 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767246833
