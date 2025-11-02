Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3269F1917F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762117794; cv=none; b=tbOPuUMhK9nCTDAw0o9pXZXcM+zIrvVMZCHEXT77aR0KRAZDdhS96LPE2iSxLqQuYO6126/s9zftV4aixJwUdhRDTINRXNSNeTad7NpC9DkyKDTWMqWEPlEcSxqMqOt45hECf6S+6pWESJsPELp+s76B+EUwmvjBF1AhsEOCGmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762117794; c=relaxed/simple;
	bh=XNk/S4SpFIy+fzFaTeH48BnTQeQD3DNtgH/90Fc4ryw=;
	h=To:Subject:From:Message-Id:Date; b=dvynFVx4h9UjKp9NM8U0BQkiMyHb8n8YybYJZwkfNFGXVkdmyzCmLVslXfCotHYx8d7KyLW+nitHBNu3J9UQoXXKgGjvqFx3cF0y4MUCP/XSLV2L6YBlP8CQ5mLDTFuJCQCYx0kTod+MDCxUfJZXCjhxzE9bVLKh/AKeTQoqiyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoOtJRzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoOtJRzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA19FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762117793;
	bh=XNk/S4SpFIy+fzFaTeH48BnTQeQD3DNtgH/90Fc4ryw=;
	h=To:Subject:From:Date:From;
	b=PoOtJRzDi95x/KMogoeMoUuFa+T0aEErxhKbMVnX2sKqUDjFYDdILPQVwydxwHhy3
	 b6CPaWvPfSZgEHSUnug44il4ExI6BrVfDU7QQrb+byd3C07VgAN/mqAhczrQKMnfA/
	 emHa8OTuWXSZgKssMavVUvzmztrZTzrVXE3gPxPEX8nXm4kItt4EOuq+ep/bcKGlLz
	 HqJQcOp67kJRKqyzzqSFVjz/NTEUuN02opOTcdZqWJLhejLgxQGnCzCBq9MRt5udrO
	 QJFNdTe2fyEKMUSRwYYTbMzGPsUfud++6N6fI1dlF0jgt5LHzoOhRDPblIBd2c5H1o
	 MPfG4eEtuAbXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95270CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211779358.13011.10308901078549813994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf0aef86901e8a101bb28d7d74413787c4f028413c32947bec3004cd82ac20c
Date: Sun, 02 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762117793
