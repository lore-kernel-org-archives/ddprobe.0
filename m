Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C5A10F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781827594; cv=none; b=hOyUQVW4b1PLu4QucISIYGNa1QWx364RvuO1qGd86ue4mLlNOp7M0SYXGX9vv94g99RYGCbQXEhaYL/hulLWwa4YSMKG8sQASR1RP16De353lfPaKFI+SlPrNUpWlaTLQ6h6HCysxKM1zA20Z4IZhthEdE6qpuuosvx0UHb0uRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781827594; c=relaxed/simple;
	bh=imuCkmtHGCsI+6Kqh4biu/Sdun7Nm2utRbE+sONBPhs=;
	h=To:Subject:From:Message-Id:Date; b=gdf5hFlcbUTCiqbPrO/TAhqMbYWkzKoP1PQgqWRlvW1OlhNeVzPIggWiOW/IWFSGD1o0tnbFY7Rn5Rp1Ghqk+IoMsjykud+DGldkzJocERYrns3gh5tQjt3NjQzagwcVv+/1phZra0rqZeWhbIGj9jb2Djy6U9nqmdtkCo84+/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtvkW8t3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtvkW8t3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D083DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781827593;
	bh=imuCkmtHGCsI+6Kqh4biu/Sdun7Nm2utRbE+sONBPhs=;
	h=To:Subject:From:Date:From;
	b=UtvkW8t3STICzOwC8tgHaKnuYoyliX8+R2iXtTvcQO10oUGR0Ruw3X9QNiA1Gl0qu
	 zPgPugHV1vqLl66VaTdcjqnSEMUfG8uDT276cHQPISBSxRPvtWFabWJaw5QIZ7ceFr
	 Ix7iTdBFBp0PkErRbBmhd75FNzNMyQKf+GSZlzS6FOmIvW8q8JrW8/2cfloc0ZUSWj
	 QQbshH4AVaybx/0gBiMO3OitFrcff+O1VgCyzycMZVBzLyW8c3E3rJlR60i1BVd8qs
	 Omi9lLccK8xDyE5ESvOCGiW/X2TDktZuAaE6Bk2hJBq7wAXs36COi7Yni3/PZP9cHz
	 kKDl2RKEOqrPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28E6CD98F9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182759370.3896.2443805911098914764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137087fc3fcc0ece51742bc7d77efe6e927425102fb5a9b704e1274fdfaef7e6
Date: Fri, 19 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781827593
