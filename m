Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532A122FF31
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742205594; cv=none; b=WYGRP+qXTOSUDnHBHn3YQA6S/9FNJ9ot5Ap23W11ptkU04LKald+tYLs1ZuLnRlNxxxsL+QFMEVSlC9YtZSnVaz7LYgpLpF3F99B2s4Vemej5SUYfEzZESF43bn/YiPMFJRX8t9z26UrXsvKt4VOfKNqu1KXYx60iDn5VaX12RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742205594; c=relaxed/simple;
	bh=yNaB/fmXY64zdZMvEeNihRW11O4K5mK2xuYufvC2768=;
	h=To:Subject:From:Message-Id:Date; b=HkUP1NS76JxTJncFkm+ltleSbWr6rPyjmdawLdSHHHaMXLVUmr7AuSyWHbbT5s5eco7Nv8I+dvZfh3zl/vcTskNMH19LkKMPxwl9JDjdUZ8isffRZMP8IyS8efrYt/eK+om15vpFifAz5melc72RX7EY/tsiy/nMekVTfAy5wI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTGGC1RU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTGGC1RU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B094AC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742205593;
	bh=yNaB/fmXY64zdZMvEeNihRW11O4K5mK2xuYufvC2768=;
	h=To:Subject:From:Date:From;
	b=GTGGC1RUgsq8wIY3owudRKugljYSuDixpdjcBz/wHua9vi1U3ev5qbzyH8c5jNsav
	 +L8qqVWEdtnJe/4OOxz1EOwQN6YQNfnyGyLe08oPm87PoDxt5/x6WabCwfFpGICoGF
	 frqPCGQwUEKxgIkJrFX2pyLHxQ4Oyrau0U1BJ+/fV9uEOz+TQL4V0QZaagTjBWI2Fw
	 LdQyaEBevacbmbnvtIzzmiSNhSexjF6uhiZNv8GkPuM041bQ9SDgHgJYxKAaCQYkIn
	 Dt+jdf9p4qQxePOZ1usLIl+FqTChFwM0JMdwigg6U3kPAdgfreeHrg1LJaR0uwfxa/
	 /D29i6njpuOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76AC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174220559363.17817.11302146701379737970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9006376e7b92e79f9e2eee3264aca6405b1762f4ff75434513a53b2812f25e2a
Date: Mon, 17 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742205593
