Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4842478F2E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765002174; cv=none; b=LJ2/LIT9lxYO3FZCZIByJrfRutftelp7TNXcHR2WtYXzmNYy1pRdAsG5MHp7FROH6d/U0UiQAB+sjhuu/06Byy4YppYMjZSZwMYWRN9jdHkqx0wKJVCmYfiB0/zPlg9QIkKC1SLFrC2IJ8147z93kf8TT9nUFDtivoNIzzvBXP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765002174; c=relaxed/simple;
	bh=y9zKFHxSKsacN1g5HCFtrL8YhnmAcZd/zI0afugsjBk=;
	h=To:Subject:From:Message-Id:Date; b=N511h5zUlfYdgXQv2jGOE5iVfuDpUqKFNtK7gDIsLeYtnblfzIOyirImLNFce8daASXZoSjQ2ZPfAdHrO3+4iUePazucVIaMZfEqdz+dPOe95VgZ2smxIDeutLe/ceq90QPfLlVPib++bhWd68+NGTICdfh8bucScHBu6CyQWFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbyVtFx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbyVtFx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C86C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765002173;
	bh=y9zKFHxSKsacN1g5HCFtrL8YhnmAcZd/zI0afugsjBk=;
	h=To:Subject:From:Date:From;
	b=DbyVtFx4VH8u+C9gicPvl0/iMG17Yp5zkAxAF8E2RHJtY82UA1sw1iS9Y7y2lZHTP
	 OZm9dkDNZoQdyO+fxuixvDnzqB4SDX8hVA5WG+bmRcnCiQP1oT28LHqAdNPdJJOW3V
	 PJPtKBOG5/aww4aNBBnIYRxK1aV2NarLb80i4bPAaTKJmzDR2rvduWpRlLbERunNPV
	 pTHGUc2ufHCHbs1AJUqRUpqj2xgtOW2piyFVEPk0rVUVqPqKNyalvahBzlgRiiCKlq
	 29aihMs9S1GNvQzACjacz4oy4upDfXIVeYLrL+oYNen5BdrHkTEpcU8GnEgH1P/7+5
	 Aufyq/H4w97TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E393D374BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500217360.5969.14961454411219848547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50d9ce135c0d57874065f614655d07d0ad236689028bc043bb54f5eda9ae847
Date: Sat, 06 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765002173
