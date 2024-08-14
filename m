Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E620A21
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723601155; cv=none; b=oOcp1SlkLfZfhoaqw5bnmBTccsfAt5Yew/N8u0i3E6Rh42CW/yDGZwRNL/itmPQhT/UrgP5dHO2rCShh1J9YB4nP5WPy1rysiYm8kSU8e9rh9U2hj0PpGVC5fsqdKn+IcgP620cQ/8AO4TvGCWdKRQhphl7lb05QUp/RWtZOiRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723601155; c=relaxed/simple;
	bh=myzd1p+WbCSeKyK/Aea20jTWt0tsRaNBJbnd2z4PLak=;
	h=To:Subject:From:Message-Id:Date; b=rUioRPBoLXlpM8mwPL5F6wcvfjDnsE8e8wentMtFTwUyFe7xmeKHnHXRO0TYa1RqJ5zFtXZ67gCavcyLx+Gk7XKBvqByvvb+c0JqDx3twKZWYX5NJogIGq4cOSEXrT0KB+k8QVJLiRWCiQHbvpEYfCohUJG7nf1ePy5AjKD4YRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJmdM47b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJmdM47b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D17EC32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723601153;
	bh=myzd1p+WbCSeKyK/Aea20jTWt0tsRaNBJbnd2z4PLak=;
	h=To:Subject:From:Date:From;
	b=fJmdM47buPmM27/cdC7taZQlTwqUBs91d5Zioc7eL2vGfTgadFfbYUxr1KIxEbuSz
	 lEt9lAM5e8ipGxS7ORSIo+jpG0GXKKP7DW3AJjq+Fvcx9/hjTrW1TTIU4BaSF5vmnk
	 gGqpAR0aY6QnlULTtt4qwknJkUlZcNNEipyxt4rZvCvpgYYiszFrYJu4eG/vVOEf9v
	 +rGExibUWNaX01h13YS+UX7OtegAW400dO9eaJMpAc7Pyq1ftrur6KLSy0TeqFAft4
	 r4YDpd2FSkXpgXNUeWSj2FYBmx6lq3KLtMGeZfy98/WxHDeafnTXw8BaEsUI8jQzP9
	 izNtqC2oJkGCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192BC52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360115358.6741.6917368719253586802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b068e64d6a6f7f5f861d2f36e1140875d092a30f4024c547c4d9551265df0ec5
Date: Wed, 14 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723601153
