Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF151CD2E
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713823223; cv=none; b=nc+CINufj1pbwXUa3KIjxDR+5Z2fsE9dpCrqoaMSjTp1X8in9fZlVKP70pxbteuZit3QjMkq/Jn8dyh635jS0QqD/FrB/LiqNHXTLHwNH9q3HoSqJG8eZHLwT7Oc34UXPASO/wgg0vRj5h7mKjjhIIgktesbjJyd/iSc3jcaWn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713823223; c=relaxed/simple;
	bh=r7GODssSUZVF9IsWtwjyZh+QURMc9O0JcjZOzR/hpvE=;
	h=To:Subject:From:Message-Id:Date; b=NQh8hQ7aTzVuFimiWCcfEghD5SFlVHg9n0C5WMqlMWapUqX5nwUkNETXeTnO+d8CeICwmd5rnPsiR8nd2FCxk+HBLz9Jf0WNUh5HPCNINSPrlF5xMjHF9ABSaMHqm0j8CN5o+fHdfgnNHKJR5Osmbv+t03DHzIN86RIUAqfKta4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF90MZNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF90MZNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E4CC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713823222;
	bh=r7GODssSUZVF9IsWtwjyZh+QURMc9O0JcjZOzR/hpvE=;
	h=To:Subject:From:Date:From;
	b=qF90MZNxJfRtGnybVbxaWqC3kIXjKo9iedR1lNHhxnKUJC/dGLMARIgW2lD1PUvD8
	 DX1YsWzUWDc3XBe4wwl1HVPSQ9tOAgYHrYi2aUm8jvuUDw/SFOqWVwgbnsQyd+MJEq
	 lAkQGL1nk1pC0zPwbI9n9F+5u/n8PYZ3a+mlXsXQnb/OhtMczmdCXN9L98w1dICXk9
	 Q3GrRd203fWPbeuCGqkSAcd+jDATcEe8PDwzJEEGK5EE1kqoKhnE7wrNSnxQFDhy+x
	 NAyo8i+sfessJfSW5+EG0Xj0R8iWG6ifA9XCNdiyDfZOEpUxDAxYgus5f9WqOOf2HS
	 OQhhM6/y3qTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5596C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 22:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171382322277.9119.8414076761354652612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e8e85cf2887b5098db54bd80e3ccfad81ed635d5f5cbb86c59bb9f9e0eaf9d
Date: Mon, 22 Apr 2024 22:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713823222
