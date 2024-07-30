Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2865C1A76C9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722362154; cv=none; b=EMkFvZFh5F6Zr6D9ahabY9aNZSfetApLYsfe+wcdXjXN9RgeZTk3jYaF0myXNhtYzOve/+2fZ11x1MotJhELjzLOeYftjJcO28KR8G9dpx1ihJ2iAcPGYLKEZhEm49uz579T3CYqw82KxAuRSVAm0U2MXRUdLgPecawqIWpCKHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722362154; c=relaxed/simple;
	bh=lXiBQUi+exABAOBRheEd2he8L3FZKlM4utzh22mEkMo=;
	h=To:Subject:From:Message-Id:Date; b=NtpJI7OZzNMydmTR8jtgbMwkLF+3B8WJsuDzT6sVEHmABZlURbdDW8HoWnIadKMD+1axy70K9yx9yU+zOTBCH/9d4H4sL1z6vpKNJx1gEFYRQTWq4cIqif9glefItsTv2T/biBVui4cU12P6vVFq5waka7g0Iyc3zWJXAHrzSuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtvAUfr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtvAUfr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB835C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722362153;
	bh=lXiBQUi+exABAOBRheEd2he8L3FZKlM4utzh22mEkMo=;
	h=To:Subject:From:Date:From;
	b=DtvAUfr1l4VLrUvjXIgYToh5Na+jzQqteECC+wWfcwlxFPmuX5U8DJvaDyV/NTg9H
	 KQ2papUi+IerHjT3TBbjqlw0ufDoKFXJatej+EVRlyPk7KSVX3Q+3yhtk+RJ8xYtQy
	 k+d6qrwxFLlI8km/mW2hCQFvKq9znIAZ1DuG5X0tQFiXa4UyimaLL3p7+KaSCkAbAE
	 KJXxrWroEmVN1xmOcPzwX9JoelBuFR6Hanyh+mOV1cGdnlk2E8Zo//O1biidANqM9u
	 wK05TH12grlvDF0MAgDyu0MJbNy4SnKG9Rwhs1wWPNbabqajv996pr0fYcGBVg6JEj
	 Z4/V1begJM8vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B038C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172236215362.6383.14477774383887369605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4c7aca4ce34fa445e2e1f54c8601b97c87937bba4c5a101c823a77bc2738a8
Date: Tue, 30 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722362153
