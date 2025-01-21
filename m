Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E4713D297
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737446154; cv=none; b=HotGv37o1BYxYVk6DepLJd21eCsQPalVupC4/i3EFOsdgeWV6UhHgU4sTKIILXZFHF9IHgQZHrx/C7+x/pwiD8fye7usu1Yz+9Q1qcU8ssf0z45HxVgDhB3z2XzZLmsbV94Rwkn9PBr4IbACA85i0yDcqD0FgNgUjgTfQ890SDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737446154; c=relaxed/simple;
	bh=cPelYkmw52ndp1Nt2os+A6dLpd8RmkRJjI6o1Sa2u4A=;
	h=To:Subject:From:Message-Id:Date; b=qJkrrReQ9ovJ+8V+R1x2xfmnxvx+SjQ/SBIli/s5/l2689gc18r9QeLiZBo/dy7+39FHKalYU/mZC1RAHOeeNbN0Qb2nPD9cuTPkrLVRCs626tfx/yQ0RDxkbQQp1gF4gWWT0UIGvjqSkudSdDQK5KGYBmqwLMriPxUAAZqIGSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1KkyaZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1KkyaZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5044C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737446153;
	bh=cPelYkmw52ndp1Nt2os+A6dLpd8RmkRJjI6o1Sa2u4A=;
	h=To:Subject:From:Date:From;
	b=h1KkyaZ41IBPGQ37W5vocEobGV0E3UYN4Ig7T4INTsDK/QvningJfeLODSWDp2pm1
	 nRQrwUuElO43SGPDsYf/ErnxfPpkjqpFArJsazg7uVeSMeVedAiNcBXa8c1SH2LjjQ
	 wOYjavEcbLFcwlljwcegVGA67Gkeu8V9EqB499YKc4XmO3oXZFxX+7G987CVJPoBBh
	 oIyF54cfTRSRXXu+I20VWV29ayQ88+IzxuCMMiaZmn0kx418rUTK+tZZ6NQXfi0CBj
	 NMEIdcPmBCWmfgREoqVWFmy1FrD/fWQcr2/SsduhAJ89Kep2VXyIuo+411LnaJ/bGy
	 jKHoflW8KpzAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EADC02187
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744615358.25497.458987852684686753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1da599c2bd4b5e6bb5e613845a5afd0a82e048f892276f195387412b90e495
Date: Tue, 21 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737446153
