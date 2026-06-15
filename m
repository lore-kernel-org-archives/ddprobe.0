Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455432F7F0F
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781516194; cv=none; b=T2tymPBGg0nqvRXd/c57ewg0UfMNBsYs7ElH5dO2K9I2TthaoHg7IEoN0Y5m0MZh5S03prSH8B+vnhuiFqrT8HcPyYkGFnv8EMW8aIA545g7LRlWKD6J3lZUHCYVVjxCxrG0Y+YQPfVFJWndY41Zn0Mtxz8ZzR+/Bu09mw2x95k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781516194; c=relaxed/simple;
	bh=XnXMLr/RYuPcbey3qNrxp+NnoTLUzl9gr6IRvK79nns=;
	h=To:Subject:From:Message-Id:Date; b=cn5RmwrAgtGMdgjap2uYY6PY/SUyWeuMnsBhK8MmA5WYy1b9fqlqDQOPZJwvvGnHKvGAAoXOZsDQE8TH/3PIp5qTGlADAVKNmvLLyOziVm+9qt4DEHLdcQJ6Y+Rg17jL+tgm3lIYm3kAHUNW7hF9vYyMhI/XwcSQ6WpXWLYmQI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhmLUDC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhmLUDC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF923C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781516193;
	bh=XnXMLr/RYuPcbey3qNrxp+NnoTLUzl9gr6IRvK79nns=;
	h=To:Subject:From:Date:From;
	b=PhmLUDC6vT8OApxdKuZdmzLwgAxbd1H7AkIyTuruu+fL10AsO4d5NSXckX98XXL1Y
	 WnWWuyf72b5eNGLjYfbcLKKefK8CSl2PWs1CAwJ9t3hrZVf14XJxeTTuBJlIyE5ibu
	 GAUy9ht2qwO0JGhzG6tg/kXDErcHjjzWK90YVcOkWtFZC4gktH7n+FpwyU608ircLt
	 Ie104YbahLMDlelV02/XhoV0BHHBvMIMKzCnOlw6GOpqu7a5y3xyZyiGn2ys/cFiaT
	 nVkekw73Bbnc5zkyjFjDey4uxSgyE5zsd0tCXGuQWgQ6qSYA0+RMjmDe0EKSppYzmV
	 B2MXD4uRa3xJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26DCCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151619371.10705.5195616846904470097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91948ed93d8ce760d1154b9569f9677e8b42233e262dbc0a9c67b58d80ae0214
Date: Mon, 15 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781516193
