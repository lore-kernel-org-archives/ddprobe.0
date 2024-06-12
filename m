Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713C417B42A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718198903; cv=none; b=jl3D+X6GC2alr9cYtSI1CkCm/xhJPzxmEzWplH4gvKBJUCGcg0XCzmNSSMPxyHmxnDeV0ZSuvrU+NAaQZiocdXgNrrVYa6Zm51V4R52Eo23G2q3Lv8ti0XXu4DJXmTRiTmLFNaQiecb+mXcCuB+z+YjvKe8kHYc3T3vac9YvHdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718198903; c=relaxed/simple;
	bh=IiEGzArr21LeTTkDsYQeXyPSpS/DSNvsYvV2481eszY=;
	h=To:Subject:From:Message-Id:Date; b=EfOwjJgKIdEKUyOtbrhdlhI9PQsig+zDFwkeD9GeyFz5Cfdk3nYfb1/mJ04rPV2SSpN00G6ie4A6lbqeRMk5VhdDxWyFwojy3bqCxMhiGiTnBbRRAZM6v7+IQ99azDNwO4S4Y8hNSF3FJdEg6DiLIK0Lsj7J5MljXANSfNC+kCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCPnGtXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCPnGtXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AE3C4AF1C
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718198902;
	bh=IiEGzArr21LeTTkDsYQeXyPSpS/DSNvsYvV2481eszY=;
	h=To:Subject:From:Date:From;
	b=mCPnGtXzhAIyZSRsFLHjYRTnZP8MyxayS5LoKsgWTvtynqfMlXEUloHnez+6M/H11
	 pF+KqXIhF3zt9dv+Tu8a7PW5ivO9CP5cgHB4qvUqN1qXusIWXOo9NupJNmklxlViIi
	 R5cREa3SOUhiUHldcDXYFoXWxa9OyDBShPvK8LZOSn1HOUZkJ4zbq2cCk8Kn+hg2j0
	 3yenmwwUns79aRawPh3FD7dV1XmKALuEUsUwnW2mvjxEzzUNP1OlNxhAPDz2UAJsoU
	 IG5MLjoWgk9oX64CaKyZq9VXxfU1BgP17bG6nkifA2CtF950wYLaaCJMNevQlnlwNz
	 BdeK37BWoouOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C136AC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819890278.13354.4568716927844389523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63f80d221dc067e14f478dd06bba81e7925d0234cb9dfdc718a063ead4a8519
Date: Wed, 12 Jun 2024 13:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718198902
