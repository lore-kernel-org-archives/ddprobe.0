Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21B326E16F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759954793; cv=none; b=E6IWB8VF/Lsb3l9gQkw6npkdmiKNpkwHN8osqJ++nlz5avZV07e1otYtQ7qcRxfZvnhO0unulFkD9zNhaTg+BLnFyMnkf9wQHYXj3dkaovjLrR/lSPtPlqHPTnUb27myWTq+/FxJzFe9eICDSpfVXo9Ns2OhRmc4stJ7ak3enRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759954793; c=relaxed/simple;
	bh=hU+3slfyk9k2AMWwx5Vmlm0gief09U1UbMnOaIlwEU4=;
	h=To:Subject:From:Message-Id:Date; b=iW21qAgxK/X6i2UKC/d5/Ke0cQhbrIYfAQRS00TWjrihcjT3Vrz8TslncaNZeDZhcuvzEZKNoNLVQZcTqVa+9xYc1PJ9VbXg6bABItWMNz9clWxzyLRYAcGSP0YOHw8InUGPzivg+E58DnN9ZbzpmYygxvcHDntXHHN8GU+WJng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz1iraIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz1iraIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85F1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759954793;
	bh=hU+3slfyk9k2AMWwx5Vmlm0gief09U1UbMnOaIlwEU4=;
	h=To:Subject:From:Date:From;
	b=Kz1iraIOuo3EZ6KrAmVHSqGgCnX9pdsKDItg6VOtHqKmlJB/IavkJUWcYfgQRRywZ
	 T91m5Iq38bGsx9RfM9VzrCqjKFYLZfByStaf6CizWLGy11Zl3FXiLNG81XPTa+I4VH
	 x7gBeomBDeO3zq16jtqMpNil+OszbiS+sLTYq8bDyruAgyoesXFa92oZAa5atSjd/z
	 AEc48QsTgNUOmwkHC7hrDK1y5C1c2BXjmaBXemhlHx+bMbvND6caxChotL6tG68Omz
	 VXspsddt7nu00RdbcGKQvBdl9snDC+fibgyKtfVrYUvQLIWPD90T6lKO61KtWA8krW
	 HuLDqS4/Y9zLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97187CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995479359.25745.1616169500687159332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c4ac6ff1c47b7a544836daa4928d7d6ef93da6619c1425a10f1450d935f4df5
Date: Wed, 08 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759954793
