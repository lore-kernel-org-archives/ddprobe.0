Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED524315A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738346754; cv=none; b=OAHvYNDEx+7023Tsl4LTzk9hAQYoCpClWCzI5Aaz8W6PvpBxFlCSKnhAYx0i3a93r5u4SzdLstjvQqWe8dQU7zW507cr5kTyKPLGGsuagchdg7v25ftyJv8fkEUdp7E9V+PApM+IVDoYKCWwSC+wDxXJyx4QsJsi1dy8khDc1QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738346754; c=relaxed/simple;
	bh=NkmvsMTZyMZrX1mFZcIZuirdkarEHB1tGbAKWzHvaq8=;
	h=To:Subject:From:Message-Id:Date; b=D83cs/OIREqAW3HMEnSlpbtAMrzJcUPIhq7m8cMgSxfyoIznmVmfJ8ltyy3/LKuGatN+mBN0FK2gARTaWQgyZK8RidxgOYTyKWtX0RJy2/ZUyoRJJFK1yYwwz/uW3swSs5eoIolho9oD7afcQ6MEuIYb1rdpjtvqPIr33RdlOns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GjFHuofC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GjFHuofC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD53C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738346753;
	bh=NkmvsMTZyMZrX1mFZcIZuirdkarEHB1tGbAKWzHvaq8=;
	h=To:Subject:From:Date:From;
	b=GjFHuofC5S+wEYmXrhfnr6uWigASFpbNMzZ78B9yZ2iRQCaRYQkLBLteGRtEAB0Qc
	 CE+YXuLZNdgHdfQ28U+dxhELokNnCjuD7xzrhdHORjPdPx+EYnBtSfkjLXB+Dp711j
	 Q9jgJVV/+iClhAgKmoDNWW+Z1QPJfh8OzWTd8pCVY/jo5mLsk8OVvHpQ81CNN9fSk6
	 py0cwks/keyh5/ym8y8oLEG8a54Ue7U5wsOo6RaxqjF8chYAw+m8INjyeAmhwVY3Yu
	 clVL3p1ZVAd28yuRbn24yIgBajlgoL74SxB56zI35jTPpLRPshRKeu89XRgJtXQdVf
	 BH0sjPUUCB2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE616C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834675367.27228.15709095459979994245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f709aa90df8876d6bbd771cdf09821a7cff4d9bece6c183eb9afe2f56f1682a
Date: Fri, 31 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738346753
