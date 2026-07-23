Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545A32E54D3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784816434; cv=none; b=Z5j6/JuYRNKsAKtCZx1EBuklZnuGWNVHc135JPPbOWChCNsqVcW10CDdNixRtlO47u4ZwkT2pfDNHYcOXxUrZyFZLjjwTDcyEzZIYYpmzMp7Dj4jHhzX27FL83O+qTitHDUPrHQbedJ2egoznjgI9bFPEMP3nOsD9lhWmP6/0Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784816434; c=relaxed/simple;
	bh=RdOWj5kvwTtGZDLebB1f/aM4C+8cXyg0WTavdjtkqcc=;
	h=To:Subject:From:Message-Id:Date; b=UJwoybJrWWFtFDktxLFv1wwOeFFLwUxKnD7nI0BjzKAnZ4NFhrCKgqRWu1LqolBZY89ZUozQv3Na08zduQxSQKfawurSSS9QYRcn23/Cn9O7sSEp5Mf/nWp7imxjgKNQ+fbbFV3RAUDbM1jsL39e+MbH9CLH3j43/3eGrBDACA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+2+zV2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+2+zV2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05A4C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784816433;
	bh=RdOWj5kvwTtGZDLebB1f/aM4C+8cXyg0WTavdjtkqcc=;
	h=To:Subject:From:Date:From;
	b=V+2+zV2QiwTyzXGZ7ZSg79JGiN85CMF5BQTGxBocMflS/chTVHRYT6twk03lWDE4L
	 CTUOy7v/KtThC6RjxMzT2TXFKpvwj2gjJok2lwrKKIyq34Fbm6tr9mE2PLId12rAP9
	 O63PJpL6p6zGlRXxj1ZfPxKajuC2zsf8q0PLN9gvijNZeSDYkd+LGgJOfemMon+xLK
	 tfpio2MIJQAdCV5Wts0EY2hkNoTA71v0kWwWihg5sRtb5/GULBN65swXf5A7VwlA9G
	 UNE5C0ikYYtDMFyzvkXmjVRwjpqnAXNZO22s/L/qa1glcE6gbIk/tIqH4b6WGoP7VT
	 cLbKeTpZHv4Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A892CC531D4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481643368.22815.2551916374689313190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62c22a1d20ff595215bd77624e17973315db72efa422b5a9c39571e76b8fe56
Date: Thu, 23 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784816433
