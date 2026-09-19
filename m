Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393AB2D1911
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789845634; cv=none; b=oC+QJrAcookAQJVzqyCaWUyVHieTbulPMnwWL3P9EQHsiwYSzbXv94au+qTHKl24ADWOs/huD4Zut8tppZWYz8WmLCeZxLz1NumU3U4uM9U+uM+DyB9mcPOIsxgWFS0C1S4IDeXxLkNlSF7puPCxiFQ6G+gjDlvxr7iUv4TODTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789845634; c=relaxed/simple;
	bh=1DJHqQwW+dz+7nACgU+fzUi4w2xwhokehvVx769Jguo=;
	h=To:Subject:From:Message-Id:Date; b=pAto4flX6cPvNz7Sr8cE5q6bE+pwIVVlDw0YZ2xgpKYn0ZWWvbN3FmtukWTpdj1qdrGsqwlPEOruCD4HRJya1tovfSz3+R8jGwZxEjJj6/q1fqnwyimRpnbd0PzYywf8mdTX4VF/uKo17itk7IIcCDi4PH6WwCGc7/A17rSty44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk07/uQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk07/uQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD80BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789845633;
	bh=1DJHqQwW+dz+7nACgU+fzUi4w2xwhokehvVx769Jguo=;
	h=To:Subject:From:Date:From;
	b=hk07/uQl8JV6ncT5050HSpIKWwFeCG0U6SFr8rnlRAtOARpch1NpBe6knw5biTY6+
	 EXDiilikMDKt8SzXpN07c2nzQYbboi1NkOAyD61ZmaMHvL/1pKutGLDh01kGjRgSa8
	 257Jp0BjsYf9qn1UqdxBZk2IIU1fx7Yy7twnE8NtJnBr62JiT4+y15gyT46rsHyeK5
	 7ZDlFzaDU9m0Lj3/DziS9OE8qwYRsCp6L3dP8T0aKkRGi+dhCHcBiTDZ4lVwp407G8
	 9X48HoQD92vLS0M7BQ1koTxZr26dIJEjfD83H9r5eJgRR873Rmk23c75ghZIurKzSl
	 3N43vZ+a+IQbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D2C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984563368.7100.750228628944725876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4970f01eecd937e1ca4f89b031874df311672e3d47bfa02f760b72cd146ecd5
Date: Sat, 19 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789845633
