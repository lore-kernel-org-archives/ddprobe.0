Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C6E1A239A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767221034; cv=none; b=H4Ggteeo2IhDobMlBvnEN1G9VbLvSsPcQ9FRI5QzAhSkROgKvgdZKrkdgVyVQPUnxcBgAApKDNo9DSgxAatW/aq7m0rHEF0q7XjFzXxv5Mg75j+iHhxu+DJcTav7mpJeLAg872U0VjQt7M1IO3ThUcBzzN3xxuPvsCByQUxhIUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767221034; c=relaxed/simple;
	bh=qtUQvfZ5NvUJGsjsak9v2VxHtvOcHgyNfRs/fUIUWE4=;
	h=To:Subject:From:Message-Id:Date; b=NOyJ7Cjmub5rvScxhcQfZZ4hxcPSL9ZAk34BJgnKkjwk0Dk7vQkjMd7KwWSW4AU7kQTh/rQgZs48+F8xZiYE53sPS7F8Q1cz9oJkwprAsd3IspSIR4yUpQZT0GL5phHFpTFwP+kT/azf4CafrIlJv7ag3zcRLzpiNglV2B2JTxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGq90aJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGq90aJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A987AC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767221033;
	bh=qtUQvfZ5NvUJGsjsak9v2VxHtvOcHgyNfRs/fUIUWE4=;
	h=To:Subject:From:Date:From;
	b=jGq90aJUe2JyccuBDNAd+jlgvvW/CvpVQ1sM4OBBjZl7Zb4lzzX4Vz7qkIIB3eZb6
	 Siskqxl+Z+dSwDfnftj0VwC+Y8yg9kR5feuyie8Kd8aYeaJGyaW5uqYpN6OaKNGKpr
	 ifbNycFZp5U2th569jRqHA1IccdfwFell3YD94xPhYkxgTRjqd6ZCeU+mn+UZKiysN
	 hzn+4CZ3RtQR8XPPH9t1NG2tb66zht6qBTQvtE5gx6d4FKCl1N5EDWQKd1YneHAvYW
	 fkETDEw3Tbb5qgXJnUNpTJEhbZQbcXTYBw7JpNdGq9jxW3rJZwd4OnSmy70rXTH8jR
	 T9Ozk0FWPLypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95041EEB572
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722103359.19182.4095645549917812988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908c9c7cb3b2f16927bfd5898b4006048d855ee3f23a94105211cf5c9dac5b99
Date: Wed, 31 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767221033
