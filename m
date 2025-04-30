Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3115D149DE8
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746024594; cv=none; b=UhTxUVehvFVbOcXlhmZQTo/9SWbUljANcwDoID7/5/l5THBgfrP6926imI5/p3DT55ftmUWCZc3MZcweOAghpk++5v7WWACNQeZoy2g8YL1v/pbGfEu7DRzZgzKytJTJpXQmBNyHbNQzOx6YPfFINYuGs88kTCpWuo277HZmsLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746024594; c=relaxed/simple;
	bh=xqEnP+UXv5xmIvlFYvXquFLvNVcJHHJiq+n0vehUhZ0=;
	h=To:Subject:From:Message-Id:Date; b=UJZymhO3ro6bYRUp+CxI6j6jerBYXSyGN6DRqnetFaS+kuiEZ9j1w6Wr0dHspezb2bN7R24+OT8mjSri15PtgyCoDx8MZkd30uNr75JPcphPFvrDddpoECzys6oqpH3sFh84Nq4dNrNBL8K6TU7tPAcPOkoLq4Q9GFj02HVvE4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3M5Y7eI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3M5Y7eI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746024593;
	bh=xqEnP+UXv5xmIvlFYvXquFLvNVcJHHJiq+n0vehUhZ0=;
	h=To:Subject:From:Date:From;
	b=j3M5Y7eIlKeUWLvqDKbBfhoqEPUllTeURGiKziZ7Nn+k+upfrDek4nBxElC6lMoGD
	 TtAHs/pQbjDUydo749+Vsd5xXnQbSX9bmVMdmeUZpMkuf+Y1R0ie14m2NKktmGf364
	 fsr5Nob2wEhk5yspdwEx1kUfVLyQ1tM/xlt7XQvHliT073zs3hx1ylBB4b2HsxdHUU
	 WiSSD9JXJKPhb5JCT3Ve5wV66oTx89IAt0ES44Ss9GRaqNeColmlWp0McGSxUxwiNn
	 T2zFUYjzdZhb4ePdBR1lkGGRdC7x3fKiq9cWJAWEf0MCV3di+/tadVYj8zrp4gc/vd
	 OAoLjNxycrsrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62CC3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602459357.11138.5783652212197802904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c3cf64069f0af995178d39cdd860896001ca6d6e8a2593d555b7a791977601
Date: Wed, 30 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746024593
