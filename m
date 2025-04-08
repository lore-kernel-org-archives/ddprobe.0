Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B03C25A64D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744082994; cv=none; b=LfJMP8XmyyeWJrKOmN2jIpWsCEAhYJwt8GkAsskmspPEoya8QqI4XG+boCBiuccSbifoJCY2liTB5mmu/CkSmwpP5JO8xvRq0DBIGxNqR1vx/6UGQKfjEeaWw5sNUjgi3xfiItVQbsM411PnF4VulVKevuL8Px/r/mwEPqOHc0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744082994; c=relaxed/simple;
	bh=RmJylunq625q1y8YbeNF/3PnQPJefBWx01Hsy9u3ZY4=;
	h=To:Subject:From:Message-Id:Date; b=LArNP9bJRexvxayHnJF8UV3hK/YFGd8PXxTcs7W4pn51aXQVqWSip8AKdeMgV0g9t3kNWT579FjnELTDkvDosLaapJdB4xG/wo9VLZH2rb4p2G3SzvjRdPJo4kgLp3ndei9cw/sA59nMYGmtbqd+laUgiGwk+S0OYQCGLgHCAeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bwd6+A3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bwd6+A3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE15BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744082993;
	bh=RmJylunq625q1y8YbeNF/3PnQPJefBWx01Hsy9u3ZY4=;
	h=To:Subject:From:Date:From;
	b=Bwd6+A3dgviSFyZvnwG9J1stxjGfR99olqh/Ofen3GejfL8QFmO7/6paQGMvl1vRA
	 sRQPoP2k+D2ry4knFf4wFG+GP24fSOaDC4dQHpqF0r9Tm1Q6GjjIpmeLgdBJMRhTG8
	 zgRW55CcvNhloFWvaGt6q3w4Vdu83/dNS8ijkjOUjhBXTZvPkAjx46K24yPDlRin00
	 rBGGn5VIKuBUUEOIkO6lvdEKNeQhVtb+9O5Ff/PKNNGDfI+YWqFBgN1GlaynqPYTmE
	 rBn/Ow0N8B8nAOQlMzqIzlliUh4fT5AzHUma6qoCqtG3J2JRWdXWoXvRI1Ejis4wsz
	 uZ6/bvckwimcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DCC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408299367.21590.15923856314763297500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448ae2a8d46bf98f40c6923eebfa63dd11f71edcf34062e97ddcd836ec9bd93e
Date: Tue, 08 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744082993
