Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2750118660F
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730170554; cv=none; b=dfYg/6DLNygYJsLIhzu15lexBml/c+eawmajCgwlUJ9wF7wTuKAYk79QtT2DV17GhHb6i6a0ng8tZq8DJE0StpmB5bNzs90GfyMagKMl4mmeUS3QvFGyw3acr5/WSCXo4I+vL9qTsbFN0aKEQJTP8Zj79ll9JhnsQQ1RHcjOG64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730170554; c=relaxed/simple;
	bh=NVpWwjchX8wXL4nEr+5r0dT1Ex3SThLz+dRGqTJsnv8=;
	h=To:Subject:From:Message-Id:Date; b=Vbm5esh5LzUXJiI+KUh4ZpbigbMre5WFQ+0CvzY2HeAW9G7mrfVf4JeH4eGx1CAWG9Vu1lTEo+744KVY58l4pjj1zn1QwHbcNdZQ/Fai/q6qt/YYKkkVsdhZWvFEMp49BYAJfgy2jWcVq53i2ctL8nCvGKdx9um4A64iA7E+Ois=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyeUZYDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyeUZYDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0C7C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730170553;
	bh=NVpWwjchX8wXL4nEr+5r0dT1Ex3SThLz+dRGqTJsnv8=;
	h=To:Subject:From:Date:From;
	b=eyeUZYDYDfH3rufDFPYr4L3kwdZfdZ3FMt4+8zbxL95gasydrP8TkrzyXGVHuUMJ9
	 /XGciLqRx/fIYKkeOrvlHwb8MdAP/+LSIlM15ffBpK1NbkHBexL9z+g0NEkYS4cMtZ
	 mfi0DxSNDrsna7d5y7gZ89pz8ALS3Fw5eLL5sFyOe9OVfxzDzu+GhPjwPlf8MRN5b8
	 3AKu32BRmjS6eBhURQsWF01jq6bDhj7z2C1cZoIfAtiS6QJtI6m5d7NPYws3/w0LNK
	 hw+kepbXHG2Av8Hy/TsoA1oX/wbXgeKuQ+XkmHefYzK27TyB9RVeNSIbwQMcnNs9T/
	 d9o7WR+nhCqcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984D5D5B861
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173017055359.27296.13236333195361018310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f54a3ba428a59aa28aaf942b708b11fa9de41a17acc2e35a855b3fa5882ef9
Date: Tue, 29 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730170553
