Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4374D258EF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787346634; cv=none; b=WavKcV/luZs/gvErOm/DXl8og3NUynQssvk/z7wOwWV1LVsAyQyhGS+fhldUYIF7KQA1Vq+NzfsGma2DChzPk4rHpiOsn6PEcM6mL7QYke+Ot1e6yaWopYuFp0tLAp5d9o0NcFlYvRNcs4Er//0ZJdgi7StzptssxQ/KgaCbkwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787346634; c=relaxed/simple;
	bh=icmCqfjGfIGozGnmjWKNNDekpn2xlC+PLk7Cm9HjM4Y=;
	h=To:Subject:From:Message-Id:Date; b=BSCdPptbBUTGOOTanHzvKrEAjXkvjTNBjZBaRA+OtUxg5eIW+EsoCkrbsz4uOwsb1/reYmZV/Rb9pym1QHs9pTPx+IFNqSLO9a9dq+NW2dE3wMrQIGJoLAJewZhCbYp9DNKUaxfa5qmTySXpRyLZ/Z27dsnS5Tzr6YRW8TUtU/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3FagaOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3FagaOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44A8C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787346633;
	bh=icmCqfjGfIGozGnmjWKNNDekpn2xlC+PLk7Cm9HjM4Y=;
	h=To:Subject:From:Date:From;
	b=C3FagaOy5CyPKDLFICL3JUUH478s2/mCzTOiXk8e8xvKnUnIF/s2bte/2A0ae9Huz
	 GBGUvBhsIB4AqAoTOoLcFYP1hroS8mvtY7pzq+DnzWTfdDOgl+z3rNbWun5NEh8BJj
	 AyMtfJ+mDjxNp+sFNqjQm2YwfuiLRah1+bc+9EFlX0Hd9mji0l5u8EBTZqP8z4jbaS
	 OkVChJavI44orAovbfk7OiiezuYTKhQetzRjfg3et9GnI9hE9YtMYN40vG/ywghHH2
	 PdOiKoKwroDtZC8Ph/BrMGMVsWXeBXblq75xaSBVBOb3NtmSaeGGWuBxNhCBZ6q9As
	 BethfnyeDWH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3BEC5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734663370.23128.17460192222627541197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0591ca444c55d2dd13fb7c5e60bf60966bbfc0075400d5f9ae5ad095ce779d
Date: Fri, 21 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787346633
