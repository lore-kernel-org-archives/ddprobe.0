Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC9A279324
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773644694; cv=none; b=mkVL7qCWvJim+yx6QTb2owPOgO+phdx8nOJ/shrshtv0eDq6pkHe82t/zYBrEVOR7KTfyPb3T778KF1x6fr+/S5nK5mDQlU+EIwzCMYy3mX1nw42a57R46ypU0icN7RGH7jI7SOljteW/SjL1/gHNo5S2HP5s80sxpy91P+h1bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773644694; c=relaxed/simple;
	bh=+cZ9ZblxjoDfludt8mSjIeSotp1oM0PDZgZwYw/G7qE=;
	h=To:Subject:From:Message-Id:Date; b=cH8gsaTAsOztjOYm0nq1zHNPFa1mEpIsRwwNfUOJ/cANiGAbVjv3Ye1dvJEka7Bw9dSqYfiPiOAFXsF9JIYYH+YuBddPlK4/CqEkRnsxsa6TFoGgqRPs9PfK9/rEveljtg/N9Yu170y8yKFyNWRqvO1uYEdLQXH2dn4GnVweLT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umt0952Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umt0952Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B991C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773644693;
	bh=+cZ9ZblxjoDfludt8mSjIeSotp1oM0PDZgZwYw/G7qE=;
	h=To:Subject:From:Date:From;
	b=Umt0952QlLoR67y4BEzq/w8bmicsd857EufbGKFJEMgsYu1+cGhchq5tTHL9+yA4K
	 i67fkYq5S8M3mcur6Ifr5/xklkXbukN6MLTlfSxNyHMJNMeoG3o3eVT7j4xm6xXpPs
	 Ki52dV1+Gx9xRLnz5FQoDcX2ggGEK2DKsJvzehBhvd5o9kTeCmj1Z2GzYW/9/gETlS
	 BY2BF5N5OWlXEyYUmsodhVcJJwukX8sAyIyzaF0YzBkicfl1GLMkMAtrUi12aTbA60
	 IWqXbhu2mwgg+nD6BQEkE94fECRWkSMzG/FXICtNKUzrVBVZ5qSEi6GNalf5lBsxDO
	 cED1Q82ScSZwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBAFEFCBBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364469358.13494.16170366047322778669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3363abe4f2c571c5084cfef5cc7408f4145febb3024e36dce47d1b7a1f9a2b
Date: Mon, 16 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773644693
