Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DA82288F7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764400374; cv=none; b=PI0RyZfJAKIU2+sYeyQLIeYve9unUFoumL0kb5LS59OGIRov6eqH78TvwQoPI7tjHwTsNWF/S7dn8eBM5r4upjwM+whDrRTbPdu6WoG3+Rh7Y1hSlVi3CpNOYUau67ig0vqaOQPzqzdN7VAwTdlGsxuKO4dbl93IF7WzaJhPpF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764400374; c=relaxed/simple;
	bh=f3ax6DaLStKgvOJ6RyQoqSosfOq+sMBmGE1A8CakvPc=;
	h=To:Subject:From:Message-Id:Date; b=Gd9CfmX14PTTL9YhsAtyuewO+22P37hXCDGvcM+oGk2GmiVZU9CDdMy6PzRoan4+0XS6hMFXqUV69sxFkvNYvGEQ+AFec4xLnCBBRFR9m/M0iIDATw54vaftpM+pIlZ1ZsqyNjmzGvgayGABf8EwMH3B8WdgoB+uUOJloiuBlT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKP/dB9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKP/dB9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB114C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764400373;
	bh=f3ax6DaLStKgvOJ6RyQoqSosfOq+sMBmGE1A8CakvPc=;
	h=To:Subject:From:Date:From;
	b=hKP/dB9mUIrrVTU2tTKg+TggwJCih3jHkFEmttov5+XR7GNdUCCGG9uXiPbGJFGoi
	 jV/zGzrv9ecrDicEt2j99jB5M1HTsLv5o/ewESo22P/O6gTaFP265ZrE3/2IXt4gu1
	 NMlpQ3Fxcrj7uJ2VbMqP7lOiEmKEfSYsC0nwuVewEa0lQaGTTDSGzshodUYVN4F2QD
	 30+EwvAtP+oZ6JpE16cz45EYgQlPT2WKkWfeXOzeOVf1ITak9PHHiakIOYjsgdptQJ
	 GtKoI8XfTEWOh3yMeAHk0irmEaXM8C7SwK5DMYZlJgzma9KPvQsonwA2he4nYp7Cy7
	 YFMMBhwr7TWHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440037358.18228.2471370665713744236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb0f7a4561ef89c2a9ef00400e61459f9e7e95b1b3732da7c27940e49f1a9fe
Date: Sat, 29 Nov 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764400373
