Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEE51C861D
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756077594; cv=none; b=o8jHKqsxAvkj8fAUcuMjOe59pDRvLXXj+9uI6LUUiopPnuk3NfFyZFYJxSzPx1L59Hs/UhryshV27vW/VFyHqq5M+vTRzrIdqdGWiQ73gR72385k8LSlUbbwtJGQgpmmQXUirgaSxlTbhP2h2wYDKLzHYKKjN+VetEjKgo1M604=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756077594; c=relaxed/simple;
	bh=pJH7CxZnrE4qd8qwnRMoMFN4N32odwvtr4sNn0IpFBk=;
	h=To:Subject:From:Message-Id:Date; b=Wt6RaBYcVYpxZkB5MuyOHchB+4W8S6FUJkFX2aYSs6HxPxmC6/dN7NxcHqTv9bNsdc7qkX9HaASzWHIfG5cLMxKqXTrAqfN3aqSBk+PMzb1td3AUDyRFzA7vlqfnyBlxg9LAocntZ9Z2kZc6GywwR5jNlH29H9PQ+qXVRqdh68U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSJHyaOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSJHyaOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756077593;
	bh=pJH7CxZnrE4qd8qwnRMoMFN4N32odwvtr4sNn0IpFBk=;
	h=To:Subject:From:Date:From;
	b=ZSJHyaOQoloXheYIqx+SUmbIRLSliv4ovxFS4Bs2rmeUpv7ulezY+1ajprukShdSV
	 +kHZIWSWwnRWi9UX6vzC0Vj1o5WPvobCXcvGSbP0v4lTEZSeiAxFivO+AvuACV5Vc+
	 rh0hMIwpl0X99VL96K1wJASVmagskFrw1ql/QuxFEu+ULGRdeUAFhLVqn/YrdHjxxu
	 c9JIxS6YkKsV3Q7PeIWgbp6zG22BcU5/LVChwIoUT+at4g08ivEadEA/s7jCNIDnlt
	 h/7Anz+I/7bMwPd8hnQD/fqi0ltzDQYeedna+BIvuHdwSx9Qy8XtUjINZZaKOaChVy
	 Ka46jGcnierRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973CBCA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607759361.19127.5007518294916972884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c540902565d59068a78028c9641d56a67377b4aacb3b20af4376b32345331fd
Date: Sun, 24 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756077593
