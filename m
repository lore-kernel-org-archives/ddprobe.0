Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE9743D4FD
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777391854; cv=none; b=aEQgN+lgGa6SIBsHO3tbX9GuQjjTqy1uHn3ex2xfLeMEDbXaErmLLhlisQNlyPILujs/3C6O+Tmn3hnKT0hFj6KE85sr9DH6jQDuwVwID8B6h6ndfsJ/FPd8phyE+S+vBPucVReWb5oDCuHlaa+6Rri7CviUJbJkrCurCGvkk2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777391854; c=relaxed/simple;
	bh=+66CkAkTN6hm9+QPO8a29uv8Mmhcpe+GcbpG2fw62Ag=;
	h=To:Subject:From:Message-Id:Date; b=uxaVvwL4+mpefrld3dNlgcMshMNX1xZe7tQ8rn8+pbtn51chlsy+ByhQE7KgZPBdIIfx8aYQ+O9KNeHEE7cdR6AC/dMdBk50wQAKwvwT/e6Ed8/7VFKSnfkYAdUI+VW7X8Fj9BOEuooS/v6zpXjE9qf6yvGxc5nHyyfkMF+pCUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E100Dlrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E100Dlrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54CBC4AF0F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777391853;
	bh=+66CkAkTN6hm9+QPO8a29uv8Mmhcpe+GcbpG2fw62Ag=;
	h=To:Subject:From:Date:From;
	b=E100DlrdQVa3wS7QuBRC09mgOxaDybE+PaoLRhlY/L9JaDWg9bI0pARdhBWEEw+c0
	 PqPRZd1rRRqpPELZ29jSJcc5OSoSbvAx+Y+qA79fjDjE2DBIz+1ZMJg0oOIx49YpxA
	 sR/35jPr+FO9lXRdODIW8GJGRMKXDuk4X9yiHYaxjXptNCiJkJmb1TPYR21d+CI0Sv
	 RhuMv068FvvwZE4GCczwXc2oThVUL+L6YNADmPHCcy/dlBr7YGC6eIhLyEm4sjUSYz
	 sAPDYgtnywmSCaogCxtAmI9FSRF+ZdTXxkpjHcR32kd9HYRrQ9lJ3mvmq/XZb0ujAu
	 Wn6GMmv2NIidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79AFF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739185368.31813.1646688221708056118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7241f0a308d548e8c20344175d2715e17e54a5382df6c9e435376d69ba87d016
Date: Tue, 28 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777391853
