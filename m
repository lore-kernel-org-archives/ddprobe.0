Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423A222B8D5
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747808994; cv=none; b=PBXm4M83zAR+KqwCJn4bo0lJ2+XNPNWwdXOw6mirYm8IzdvAXRyu+XcAgbqts9KZiOyzlMR6XfG9A9/dpSjgG+7YtOnV3fVav3f8Eb+nAUnxmSvqRi3mI3v4pwUuzdi5SZDQu3+sk5zcCOKqjqz7Ra1ybtDwmDPqvzQFFf3SxhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747808994; c=relaxed/simple;
	bh=j1HzbcoGDkfiKs7+dmoqj0m5U4v/vnKztfLwskxWpbA=;
	h=To:Subject:From:Message-Id:Date; b=lCCIQeWQnaxNdQsJGKp3LnVAuvb8JsAku25TutIHsHyxA3N4btl9Fba3X8xJ8dBV9gpJAqq4PZs0et/JA+JRvMPbgR6M+8Vwb3tOXXehD+ML3aLTiXF7DPTFRbW38oIpp8/ZaSBUA+B009v+yYQp91GrxgEUmk7WQ89kcVjHkuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GW1HnbA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GW1HnbA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1402C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747808993;
	bh=j1HzbcoGDkfiKs7+dmoqj0m5U4v/vnKztfLwskxWpbA=;
	h=To:Subject:From:Date:From;
	b=GW1HnbA8Nnj14lgp6hu2yEais/8h2rg5l1lU8mfCrT9JDpPn0dwBkT8Ajo/fGOXjE
	 uQBUO5vziElP05FXBmaQbXdmGs0XddWcFFR2LBMEGxRSqYQSTm1D/62d827O8wNwPF
	 sUkIQi6HyrvceOu3l4u8YiS6s2RHgBwMDkXrgQ7s8VbqU8+/MOV2G0riwXMo4iH5t/
	 67zVjjL+353GUKAM/5meRWvdVUdPIr5aLzk6xF1Os4Vnp8oNDE97tm3sCRalfR7kO4
	 RQJGwgrjOrWcxuMvl8cnq9btAkA5FNUI6h/+T+/Ob/RCN351tnmPiS8WgFp9W8KuYy
	 lqXV2fIjupXOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5C1C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780899357.8123.6790750439123217538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c33c979ee5e9ccc886e0d4d28ac24a7558d5cc7294a46f3cc4cc7158da30d4
Date: Wed, 21 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747808993
