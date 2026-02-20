Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342642E6CAB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771559094; cv=none; b=KxN621oIUGyFAYL5F1bAFWpba4apDEBOOnEQ6zOrU+1gqCcrTHc2j6twe95SAZvCx+0qKWg0GuWU1UfxfUeZkgwhVvZqs2o8e9tRLpqQQbkKxrtYT7P/9vV9XGyuLa8vOuggB1L/m0E0j1HIdR13zYIq2bH74oprXVrDlrpfhZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771559094; c=relaxed/simple;
	bh=lxE66soj/cHM7vDtfVTrbXi78ZyTys6reyHzFy8CtmY=;
	h=To:Subject:From:Message-Id:Date; b=HI5iFIMHq6QGV5gS+9QZaDQHr/S9d+Y7ZmB1AIzOVDq6Sy1XXhgbzYpj1b0gGoE19x6LkfpNBF5vRAUUSZibPYin3dPCkVq2FvOCCmTdTKz9Z6+dhzdm/qrjgRh5JYZdurRXz/UBMNV6xVkhofPZ46tg6WXnTUIp83GCb25F5No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yd+X3MJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yd+X3MJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6E5C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771559093;
	bh=lxE66soj/cHM7vDtfVTrbXi78ZyTys6reyHzFy8CtmY=;
	h=To:Subject:From:Date:From;
	b=Yd+X3MJRbWEXH5ovvYp1wavF3phin7Gli0T/yAwhLMGXXWHnZ6Vqm/U2HvhyrmpWX
	 XgUvVPqfljIAsC4X2a0qZlNFAEqSoJAheKYfZxTfjFgHTCSneaX9HPos0e6vWY+TD2
	 SWBBIZB2/Ol5RmNWdxfMbvqaJxuTjl52pOZflLElJldIt5QHy9aBF7etaG2Y0Ldfq+
	 Ebe2t9Zrn9KuFs4XjfOwaL6eUQDfJCkaB5JK3VYPflRMw8B2YkgHj4z9cAm87p+NsO
	 NFb8/bisI6DnwpkOfI8ZP/U3BEqVjAGHUughtnwANYJPJT0Ouv7NqRriN2yXt9w6TK
	 AENf4QTmeyE1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C23C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155909359.31134.5092037342592103035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7422f2dc1eb93b4fd7daebaec6d7142c6ff4fda0b69b61a0c9b752736475637
Date: Fri, 20 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771559093
