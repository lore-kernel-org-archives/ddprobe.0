Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2A8D29E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721804154; cv=none; b=RSBRE1leQWpxEoSnMVCmwiJc0K+3xWQetTo+BC7AKws8URdOfm72LRJjJuRug0mbpMju0aAlyP4gLXybjbPnQSILGLaoxbDwjxihJx7e4nn1H3fAr9X6zE+Vo8WEU3jJj7rkGiKNX0OBP+g2QPuoIUyxMArWuFj3ydo+0wKszfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721804154; c=relaxed/simple;
	bh=VjIO0btbO6G014j7hMxhbYa+SZoT5kCCkWEoDzzzlhI=;
	h=To:Subject:From:Message-Id:Date; b=jjgZodJLierBGM4KU53YPLEuDSZU+y6UxFtYXalh9DykdpoR/7S1JybJYAXSCERwbkVU7O3slgwFppdooAa8wTtXl9jz2dFBhloAdTe1a35w6w9+qDbKKZaJQOEybhaMxpqE2DLMVmoPE9skLWTq8QAT3tvC+lTicbt7viJCcN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3DF2qQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3DF2qQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE48C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721804153;
	bh=VjIO0btbO6G014j7hMxhbYa+SZoT5kCCkWEoDzzzlhI=;
	h=To:Subject:From:Date:From;
	b=V3DF2qQYYcxjFDlC8XI6zooBre1UF9HdK47I6pLOgmeu3CmvaPd+0Vh/ZRgNOJuB5
	 zDG/pVqnvhNiuRFo5h9UhIWQvBwKwY0OLqxXiSheeRAhyPGNrQkKwsxYEdG7XEabQd
	 2p+/t/pfobaYoKkSiXQVG6xx57OJxNC7ZIBONxWBrH64OPbOixdCYgI7sZhJyZ+Wot
	 Zdj1mG5YrFRweraja0+T5tYertBn5t/OPEBTqcESe3h7JRkS8PPE6aFP5s6KBR+FyE
	 9ykxZ6LfQwaCpbK+9ul3AV7JGBtxBfT/qo2UmAAcTeYOUBcSPzRoHQ33J7ScWmN3HJ
	 8ifNpyXoiT7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D22FC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180415363.7123.13575904730496015230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89269352a7541cbf27f047b954364666ef3b0db6e27e4a61d9ea2b7bfb03318
Date: Wed, 24 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721804153
