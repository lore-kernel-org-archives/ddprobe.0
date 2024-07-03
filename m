Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6479C188CBC
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720031123; cv=none; b=F/KQbLAw0tSgE+od3PpovUo27BMM7Prr4i3O1p7YoBqVvmvbCcjLIpofMziMJMn0fBDOeCo4/D4pjquQmU7sfEXvEPwuo3FvNvN07cXl2K8MIfxzAcGy79Shxn88OY0nMhg/YDFpK8XzU0yxs1q+/TCUZUn7T5Vi9WJ3IH3oGtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720031123; c=relaxed/simple;
	bh=3JxXShp9NEVX7TdYZa8ptuHYLZ4iTk3AbJXD841ULhU=;
	h=To:Subject:From:Message-Id:Date; b=JD+VZbhOOuF0cHaBWPG8GWbafp+gCyUYg0E6z+6eYNZ0KHV1ORafdTWKYXiafR/QLYDVtcR/dqHIjGXCd5TexGsQj6SumiBwacvqtuSc9Kg5BZkmjpZCrXpgV4zJW7Djz6bLpMV9s2R2acRf5B7h12MztElHbzEkwvrnCy1idao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcV/bdEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcV/bdEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3738C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720031122;
	bh=3JxXShp9NEVX7TdYZa8ptuHYLZ4iTk3AbJXD841ULhU=;
	h=To:Subject:From:Date:From;
	b=bcV/bdEsuhslg9PJvcA5JclXcFt44daZf8IDru5gm8svVfbnD1COS5okkLymV/4vi
	 AAmqnbT/h+xIqT+AOM2PUeNVOMJcm9i/hRrCjYd9haiM+mUXqRtwgVU1TUOnM1edXo
	 QELehG52419cBj2teWfo/wTNdC8SHvfdy1Urm+hbZv6oO0eWq+N2g/g5CBTxmvKLrd
	 r8QxgBZMs4SYmGI0hAUm/LqEkE1w1hPOAJpQ25o0g8uGiwiX03Fd822/DQAbA4n16N
	 +OUG0ne2r/Z5c6oK+Cy3QEdP0A4HDHDqL9keHhN+u9LSGevBJEiP7e55npTM+cWJpq
	 WJ69K9gvVY4yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4717C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003112277.24363.14653479708960232365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b551387b6eb7f5d37df8de2885775fdd1f3fa53faef3dec8f455ad40447bd0
Date: Wed, 03 Jul 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720031122
