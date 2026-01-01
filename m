Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F8A17BB21
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767303234; cv=none; b=HKrv0k3wDBFyFrJ0GnEFWFX5yDGAj/svmtMKHo5WeT2gTP2JaHZsMxE6s+SMu2whwstndu5NGFVuWiB2MD7jWaIgZ7+BoY50tybAZ8g3yE5iSLab9fNOGz9WVQMDWyz/3R1sbd4EVLH5OLTaAxLKN/l6MCZsCmAFkPOjq89f+/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767303234; c=relaxed/simple;
	bh=nDhVByZeeea1+QTZW4sEzF1+johtMPn4t1Y9U89bI9g=;
	h=To:Subject:From:Message-Id:Date; b=dK+thHYixvs50GCrfNoU6muu9DnbZkXZ8rLI8j1KP/FWWZDXsDZEwG8GgY65BFSkK3dD5DhZynLWLDYxK2HQtIvnptui1g9Jq6uJGDQ4ae6hd0eTF6KWza3WK2qoZQFc9PFWlXpO778FOdO/ITQpJIadLpwIkR1O0jYkOtWbG4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYpJQ4ht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYpJQ4ht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EE4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767303233;
	bh=nDhVByZeeea1+QTZW4sEzF1+johtMPn4t1Y9U89bI9g=;
	h=To:Subject:From:Date:From;
	b=lYpJQ4htF9/peJzlF6c+tQTeprGvjnOx1fPeVEWSSulfoAExqAyVjX+dgNDQ/O4cj
	 GnfbtqLx6Xp6albVEfRUOucRFNdkRjSFXmsWjO8JOi9cVHreY9WC9b7SGUeqfsm5pk
	 3ij3gvC0V1fkpcU+sAhgvD+/q9ta4Q4UgR83Ck1u9RVpcv5qz/ceIKEB5z75LweK/i
	 1whVxV+bNgM47VDRckJbzkKIOAL7KYI2Ie64DOO5ZweZa6RnQbYvR8mNhWgphJ+oIY
	 91co0zeXEFQf01se+tiJ/YUfgwuZL5K67XaqXvx4YCOc6qCZb+/JgsKeGJBXYH6zLU
	 86vUVqINoUshQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E4EED610
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730323357.24978.10067535258654801814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4cc717940b527bd903eb70bb31bfaf14266daf5a37d408932e164b464d1f58
Date: Thu, 01 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767303233
