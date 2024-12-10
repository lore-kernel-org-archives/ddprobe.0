Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1608C13B280
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733814954; cv=none; b=aJF6bv6zMzfD8PUlRGN3StQM5+P5tECipUKWZDUGlMoEOsUCkDzWJkafcbN7ciw0KwhtDsrxRLy0Y30SUq/Yf8OKFFATiJAnIfYyTjJCyba3lPtkzQjsG8sBp36I8Yl96ktUXiKg/9UURtQY5RSDpit+lzwZZuZ6AaJfMFpCVUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733814954; c=relaxed/simple;
	bh=cRaX6nORpaDKzevpb/UvICuy2/tUb+5sNwskc8ELWfg=;
	h=To:Subject:From:Message-Id:Date; b=N+SGt8rEMSCgzAWuPef1GFDVE6pzuoiGKUyCo6b2uDKxSuxeD5EWCBFZxe93+ndZERJjI4ofvqlA3Q0WoxjTzt7s26LJzNUvFs0Twcd4xqhlOrsSy+rVqHeMavIcmLUAvuGkrYOFdBQMfjkzgL1io4qjk3WxqOQ0CLPR1pP9Ae8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0Ok+vaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0Ok+vaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A855CC4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733814953;
	bh=cRaX6nORpaDKzevpb/UvICuy2/tUb+5sNwskc8ELWfg=;
	h=To:Subject:From:Date:From;
	b=V0Ok+vaQOqYpLYVzMh2yarT0Eg7Cj2aOX8pQDBZ9wPcO5vI4HotO6j7+bq4QCCMeT
	 txqZIYB6OllK0oQbre1DcbFWgB0und9PwlPxjdnoZ++w4tQ3wXAVzrn3tJ1yA0l9Gh
	 9dmpCw739Ust4RTMsgXg3ZrG3L+K7UknyLYq/Dei8Ya19yELgm2N42I+IPyJGMg2lP
	 D2YKMfZWw9N/ZyIjhtn5AjzvnlfkeSGlQz3pRhRG3SzfUTB80haNmM5zNkHDjZrG0t
	 HF2S64P6PWbyvUGgvqECt037SHvtMRcLXPOGqJFpNlQ+mzXSs6p2hsg6EaOjjTNx8a
	 aDGgPe0izFJXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E14E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173381495358.7933.11606545771432251201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfe5bf5673c8d5ddc703becec1416cba70fe984cf4644cdd95f5fbf1f25c402
Date: Tue, 10 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733814953
