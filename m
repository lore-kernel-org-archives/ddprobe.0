Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7B833FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719729263; cv=none; b=OD6sDgU0cqHbRrLcrBAOrffUy1suQrsyAz74KCDyXzPka7UBb4Gyb7eFvJBxkETi9TZYCqw0IPXJGUuZBpAhLNTnidwnf1iIMZnA4PIVTMZgGCM6RljnjaVHG0pOoLu5ukHXZEEQxB6SHeKbWDee/YdAYcejf0ygYli/KGyEgtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719729263; c=relaxed/simple;
	bh=OZD+96i6wEsEYdHMrmZ958VofQpEUuMYoBtMHowsxQ4=;
	h=To:Subject:From:Message-Id:Date; b=BBeXrySNJo4MalhjgR/cViO2gHHsiqiLUZ16WaxsLE7cMgHYC69/ysJbJE7663EsRKdvvba7zsr+HeM9DJ5C7/QOtpsYn+jpYVKSbJVgCS4Wd9jYnByHF7QWcQp5+PseiFYNy8nyHNtj31nxkMeEMbQp40xrd65fnvVHwed1S+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2bxrXZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2bxrXZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4829C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719729262;
	bh=OZD+96i6wEsEYdHMrmZ958VofQpEUuMYoBtMHowsxQ4=;
	h=To:Subject:From:Date:From;
	b=W2bxrXZ8tq8eW+V+yrH18nuD8e7kYlhC7B53jCVu8Q9bpyQ3atjEFmBYwgSgwKx1z
	 jYtDz3a+sFtHmhKGAogY0GW1XePOCRpc1HB3zOCKsCbfaGaN3xxXx0U5iajSvNMrGh
	 RLt5DZhVuM/tCu56fhgOIEiIN74rSH2wz3s5bt1oB3PPo1qLFNjjJWFbacATmqQeGg
	 PYsoy9BMrLMksXzSIwBH4liyosyRv0cpXzOGOX39cxUmZN4L4T3QmP7x8hCumqQKnV
	 lH5lsyf6Ntblx4pQsXAlYD5M5OoqxhUMKce+hPlEd9vjQirxQ044h1Briv01waMjDX
	 9XXtOAtispn3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F8EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972926276.2923.2793448701759150062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0659712b7619053f0922d5b2633d2662bfca2724a8fbbc6ec1308d957dc689
Date: Sun, 30 Jun 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719729262
