Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6181DF75B
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762123794; cv=none; b=MLlTLfxdrk8RsmrT8XvSlwrNQPQq8SzS/5ddP1rztXTnI27JA3Vfp6UCwcfRrD1wSPsWTnRYnEY31Bx21P9aePfotKBrj2/F6PGWQq0aceSlsuWFiqt6BObTAnTaj4w72pEkx3hN0QAJ83oaD7C6xZfXftPJrSMnFojo2kwbyqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762123794; c=relaxed/simple;
	bh=wXspqefmUiQsPQjwvRQvyjSztL8lpUMQ7ti4Oilw33M=;
	h=To:Subject:From:Message-Id:Date; b=RQeJL57xjBye7IQyF/CHe5yfVyZBkYxuRKwb8HvRfcf41TAe8CvYLBbxSHVptNDidM5jz9KIvQrTMdN3OQm4Och3AuO4fFhyo6nKNIhRWoGgi43gru552ivNKATKgImJulzsjeMCIb8CuLR/h12EPkSLq59gva3k4x7lNgoudOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIigFfnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIigFfnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C50C116B1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762123793;
	bh=wXspqefmUiQsPQjwvRQvyjSztL8lpUMQ7ti4Oilw33M=;
	h=To:Subject:From:Date:From;
	b=dIigFfnIFTXUwHhyALazQZw8i3vUkK/o2XfwQIYuskAcOnQxjkl+kH4OarevxbA8D
	 KLTxq2Or11oTwS2L6DSko0sG236hFez+uwL62rSiObAFv3fMy66lCODejAXnKF8iX2
	 prxcb4ARTiw9l5rs2AfBHODyyRvnQKnPoJKl8v4yx8c407Z3TUEseIHgf3DEZZuE6Y
	 09ToUZvacUu+mElL51EHkTflGvo8LFZY8eO9LWD7OLy/fj0OLrXadLrVAN9mC5dUhG
	 Y1O8fTGrbvJJ7KiYVvb0eptPraynOHKBeKMmbgb8hCQmSwZ2/c8uef6aoBiLU8px4t
	 eYXiKgIiF+lPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045DCCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212379358.7176.16573529335491189344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806367f034f115e295628e9adc566fcf5f8c163c22778b253bff644f0cab4ea8
Date: Sun, 02 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762123793
