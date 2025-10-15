Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281843093D3
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760494194; cv=none; b=LVrmtHyKgErzBbzUP76C52wgwXUNMLKtBfL28uv/ttTd8fi+T3mYKh1fQRmaf7PP4XCx3nju+DbJhdr4tyYiosYfz+gYmvmnz1bZl2MYIorGDO3KMm9yM53PIKx0jBXekJnUi4uCwIkyXPg8ZaKZJIGbHSMu2PrEM/o62PX2D7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760494194; c=relaxed/simple;
	bh=pcSfSvzZQBzh6N1hxKWUsnLQ5yMDdluGZyi4BU4WgLw=;
	h=To:Subject:From:Message-Id:Date; b=F/387QKY9n/7zrpLweHBBSfF6U0K/+DcJH4H7IJVmo2Sbh8JhzRyT8u05zver3SNaT68aSjHt7ATTm6vZg7pCCdEzyKi+3w9FFkkxRdRIhvvbsL/6Nc8TgMu2oGlPjvAJRyaSJnv4WP5Ti+lVV2oJDISvD7vigdzmfvw//h1kCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEl3q/Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEl3q/Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA10C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760494193;
	bh=pcSfSvzZQBzh6N1hxKWUsnLQ5yMDdluGZyi4BU4WgLw=;
	h=To:Subject:From:Date:From;
	b=sEl3q/NxZdIcF2D1nz41G0KV8ZwEro4tHDguURZeOePy1C9utaz97N7hXbkWxApYf
	 aJ3iVHnL/gtKW4cLX7eUMCiVscb9hn1PLWMCGMUhuS0mrmDnBRx+NFArfBcZ6lojzI
	 xXiMcA4QSuqjt0joz/2tiKnAYbTMnzMHUjYUmjsIsQGmJ0paIqP3KZZ4bVF0EzAaqp
	 W3sKaaQaizbtBZdsatI8oEMP1hqqZqbS+02bEHfvatAXEN27A/1NtJTCbbD5olO/UK
	 8ZBu9fy+Tq7fhTBAqdAGWo6joHG60yrztxo0rl0rpiLjgjPQSUj2iBjVsT9PZLN3cC
	 TJJbfTESEk2+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90106CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049419358.17037.5561198710686482479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409d228cfda6464de6a7d6ad8ae65a2c3d4840f2b80f8b12a29d05f0d2ffa46c
Date: Wed, 15 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760494193
