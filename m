Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8F1F949
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751199598; cv=none; b=OWWsK3oXGo6WoaOZE2HmJBzGF90Lr4ihCl4lg7qfKepc662rcO5zgsGbAvDgtxmnbdA/qUJ17bdsyRePncPDtSrkXobsCy47fNJOzXzhxEX1kritbF5zZ0fy1CS0PWDmWmNh10SbjBMKFAQAx9M9OKfDdlBvzOCW1qMzbEFLtKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751199598; c=relaxed/simple;
	bh=6SwlOCRF/k5pexDVDZqqwBNargDRdyGJz7O/bb2c1qM=;
	h=To:Subject:From:Message-Id:Date; b=IbLSFvy3AQE2DaHf3Lt4K6CVZVPZauozdKs4VAGL8rHIlYA7pNpukKuwPqOaL7t+r40Js0hHggrqc1oE3ofQOZXLhlN3Mm7yL4D16Bjm1NSQ+RCcLvIEuqkeYNlSNrLBXrg9PLmYs6wmgn1cM7owzqHGOOya28KpNRu8BXpJkn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRqXVhFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRqXVhFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751199593;
	bh=6SwlOCRF/k5pexDVDZqqwBNargDRdyGJz7O/bb2c1qM=;
	h=To:Subject:From:Date:From;
	b=uRqXVhFbzlNkZqgyIq5IkQpAXlk2w+0rkhnHg/09wG4spo6wGenOYlAn4yy0s+b/b
	 BbFCQ+1/vJLxU65Qb9dcASVtI9Aw68YyTDGB6WKz5S/lKnMhvOGzWbwJElCiaiKTTr
	 if4OQE3FkHvccNc7Qxl67iJjN4Ww0DWL5JKYVkj3OAu/2WOmDEukERf1ev6I+8OnMZ
	 1wRRkrzmUrHnpsq67/dACND5XJaweJYGlWrfJlN1/myH+x+Cy6sWiKlfYFA8LZPMdI
	 oTRDbzzKer93IGm+sseB5q7LY16dM3p9yNk61D2GYIzZKji8YK/mappMPctm4ixTJK
	 j6/TfI4QNoIPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5DC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119959357.2093.11543321697062404854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533f66f6bca02a49b6d488fe4e584385d8d7f6fb1443e9490c643fd85d8ede88
Date: Sun, 29 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751199593
