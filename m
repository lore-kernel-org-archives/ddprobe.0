Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D13264A76
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760641794; cv=none; b=rRvLJOZSGQjj9qZpwEfcrA1yn6B1XuT/xIObrUDhWwztCUG5S+7Pf1kBaH5iPYoQ2pduZ+4OflcxCp+nG9Yto5FjObee5FKpHjzGd8+7FXRmR6FFn56Ii/1DhoGvVX2lrDSfNfx1o7yWlZ7vazGLUYYOEZDDpIl9VfHTNUZgqhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760641794; c=relaxed/simple;
	bh=sjURyWZdlmHQerSaTMMjxT42jJy0cHBXMan5X4VI84o=;
	h=To:Subject:From:Message-Id:Date; b=LoG8mXb3RryCXqGunZ4Spbq6IA+Es3UfX+bdwFJ3tzd+jaxAeAb4TnYuUkO8deDJEq5v4y2uzPzfSmsqvtkUWYqsbUjAFVGO/tlLpUZVWLU8xP7iGO2eryMD5ph2pZ/OUTH1b9KIXhWYWjVNEKM/NU2ku/9k1E9yimYXvZei2CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbwOgp8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbwOgp8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760641793;
	bh=sjURyWZdlmHQerSaTMMjxT42jJy0cHBXMan5X4VI84o=;
	h=To:Subject:From:Date:From;
	b=IbwOgp8nCWk7NcZpDtuI1vKgNBUBDVBMOQwR0ubK/w84AqOTZ6GYdUM2o2ihIlUOb
	 EkDKru3858+ZbjC3SB7NSUhu6hYe3FpBNi2lHwwIaurvYFRdC7PEKPkcOOuIVUWcDl
	 NhHG9rbDqq5Ku7Hgyu3fhkfXXv+79VVDAvhOQD1L4+7HPKE8NsHHMSdOk3XJn9DIGa
	 Yq+CBsEwYg9pNV7FEtzipJDaI0rTOX8zPLXfa5sdJ5P5gzst/Zs/4MO13ixfpTa6nK
	 x9OVCCJ4PqkRJda7XEsymyOmtAJ0UCuCX7OxvgjZoOxldfPODtvSEJS/jpWJShZ9nl
	 hfKHFPgOMy5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90400CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064179358.927.17920183063052038804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93768c9f7dab7c12c6c2336ca405537259a07a1ffabccb8aceae27ddac0a52e1
Date: Thu, 16 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760641793
