Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133F030EF7B
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768603434; cv=none; b=dsqM6am93lkG1GMkCezZAQwLpuOnDjXFB1RZAmp3pmoyUwZO7hUKzE80VMxmK8UIFgqdGqEhF73AztcYG9BVjF+OmfjZ+6aDxEgu2xSyoPcoiBwoyrxfa8oPrhnuyw3XwE+EzWCmrI9nfDlS9kZCg6ym3aGZSSRK0oNNvO8YUqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768603434; c=relaxed/simple;
	bh=dfjfatuXiBGnZ4Gf4ch9MiyHu3cZy8rx0N6r/SPLyaA=;
	h=To:Subject:From:Message-Id:Date; b=W12lCbwrabmjfkKzZn0BEOVfcOBJKeNG+HvfvPpJNkBOyEMlRx3dyxnpsj+GWrY1u9SThVUiFS+gDKgLsBolWSEQeDnADbNP5+ilhwnfejzniQcTAhK50S9ayK8DIMCTDF5IzWOSuJ6QMqX7mjPo8ME6vn4f0OY+Mk2GbcxTHP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov81W8Q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov81W8Q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D0FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768603433;
	bh=dfjfatuXiBGnZ4Gf4ch9MiyHu3cZy8rx0N6r/SPLyaA=;
	h=To:Subject:From:Date:From;
	b=Ov81W8Q6bQ1/XFoUSUwvFNLv5N19thlrCOFFXvfH0PMPj358bjcDMyiiYBJv5T+Rw
	 3MDzkYCJwTQsumxXBs9EfqYllrl2FhjL9wtmoV9ewhRYli6CNSwmsf1qhfe2fRdxYr
	 ZaOtxQBa8gqaKCS1c5AzwEjAwBEPvBj22dVHkVu/lAZ/qzpuUtO0EhnGgdgivaqdOD
	 6sfrOQ+VSPewgb80P8cD0WdGApoVxMxIoD/GzYS94kVH8nbbgEV1D4T3Ru7uvnfbxf
	 6c4lqGdUl/W/DKCRmfncKg62XJ5EpUj4SpsSW5wD65dgM8xpKPNpayF0n0V849SVdl
	 zu0ftLPkvLLNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95326C98306
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860343357.19243.1957044808897358591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d041e46f8efac2c1b46a67da72b055d6f06148ccfebdc8b616df214853a876
Date: Fri, 16 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768603433
