Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46239B64A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738015554; cv=none; b=A7WLgyD7725mv1Elu6QUXJ6i96MbZd+L4I7yuti0o7GSYHX+t0h3e59cFzV2T4kGzxBqOimjlMWMob1IqP804YuOafMgWNEdmy8QIPfDavNbpK8pq2Ea62gD7WBJ2uMzDizOVrDzsVbcP88jqMhHyXVzscEbDkg6khvEjaj07dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738015554; c=relaxed/simple;
	bh=lImIWUHY+LwPgsujp9MFbE9RWNyPGHCxwFfQMTkNEJc=;
	h=To:Subject:From:Message-Id:Date; b=p6NNveLuW493x9ps0AeO/R+2t0EqJrIYQLlNprRjRaB7RzuWDqU2V3J3dz3/4YzEJtFskNKyK36WpIvQQGoyKGAEIWVCPkrUYcNT/fxvofp5CIPGNx2Jq+3YyhxDHOYrS2YmeBXSimhmyJg1bB3iuBIm37YP7fVxw7vOApi09ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9BkhrRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9BkhrRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF95EC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738015553;
	bh=lImIWUHY+LwPgsujp9MFbE9RWNyPGHCxwFfQMTkNEJc=;
	h=To:Subject:From:Date:From;
	b=j9BkhrRdjOxY/K245jdsHaEoNRZxzA9551Ue4xelNaNMAFjhEFMUbPC8o2/EpCHIW
	 hUk93zgxodQdXu9hWTWhB9ZXi1dg1hkQsrbAb+369HP0YPY5C4haxVQZK4nP+gNqxw
	 FieluwdcvF2WrCVQ0eBxUOvvVI56GZ05pw2wz94AoM7OkV4+qMaQ/DQeASw0kRn563
	 ohe4TEf91wqhjVEW9L9ouavJJa3+caojETKwV329UuJvH6AL2LqurnrsaBbNx6PuFu
	 p73OLdP4QRSmnVB69G9vZ+1KHjWvj625aJ2DC3Wxby0yeTz4Oo6reeXL2Hv/uBEXIN
	 H2v3/egHl72aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EBAC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801555361.28152.3988356042119374738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb3619a2dc755fc0377ea121c0ab2c6ee8889b18e4c7bcebfa25dac3447132b
Date: Mon, 27 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738015553
