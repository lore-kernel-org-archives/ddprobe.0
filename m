Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B46C17588
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748304594; cv=none; b=ZwyqElqNEQ1pWXnm1LOEVBD6PtKvRCrv8gg4ILAGXCsI1bokXk6Ag3J7ewrrVWBZpWjk7/cjpa7nxqAKGQJfEdgscDiRXfPlWa1ZUfsos7pTSYleRSWu4+gtJ2f03gBryHbHImp19T/Ms0d3CIGL/gPFfK7EZGGO7BLmUcPmUf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748304594; c=relaxed/simple;
	bh=zmMrt84eQDJGCLnnlQwpbsowpVJp/4AKF3K+r1hht+Y=;
	h=To:Subject:From:Message-Id:Date; b=AbJ8jpo8clWhtQ7ktjXY+xXbUlhZ/Ky2C0pulrHbKjMGGiE61Z1OGdz7DW1/tueHlfsEBRHJN/7Hlt67xfUjqLnWVYcj2BBN57ffaAx9eJJeuebfM0IgF2icKSwTprO/xe6xQSBn3AyO1V8vmA77zmrYfdZE+wgEwTTXNfXT0gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APE7H5Xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APE7H5Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79C5C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748304593;
	bh=zmMrt84eQDJGCLnnlQwpbsowpVJp/4AKF3K+r1hht+Y=;
	h=To:Subject:From:Date:From;
	b=APE7H5XtomJEuzT/PJ2XY4apZv9qlSOMBouoGQ7rBvBFBwfonePiE5Be6ErGwPSLj
	 OuQzbOqUnXccKR3FeoJ1B4kCO0f5RrMZqXHI2433Cny3sZDIkpoMgS0Rg4Vi93ClTM
	 tcxX0TFXgxbfdXsN/+CGBmlpRbf2Jx0aIAikXCED06vfKCT9L/HNPCpylRO6J0ZQEz
	 0mWuMqDv/kojmPUaezBd2OhQrvlLQWzOrkhlKByLld89nKWhl7ojOwQZq5A1EDCR3M
	 HVbY0ohONLYWsPh/NMF6RulPGsVjHO81La3l+XHn3ULVTcjfC/aVUHRb6d4miLuyMh
	 LnQdorvnI6QeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD5C54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830459358.12426.11547300231897523430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f707b8b139c3453f09b19df9e3a4cd23aa41fce4daab4913d17469d39714bb
Date: Tue, 27 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748304593
