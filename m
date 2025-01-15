Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E472111
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736900754; cv=none; b=CuJArkP8gim53Oje63IPhUyyGhBW4YL8lUD/e3eBqA6AsEtodgHcYXzMQi4LfnO3KzSvK6bqC0/4D94bZJfi6WQ7xOQ6Uybmh92k2tmt2V3z/HHnAhkvgq5YDxaQ8dTNkvToDdLmwHXHZG003s5xHbFQUTImiq7saUMBUKsTvGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736900754; c=relaxed/simple;
	bh=9hDZ8egCafYDNs+SN4x8MeNXTogVlNytAUfWFTng8CM=;
	h=To:Subject:From:Message-Id:Date; b=RHa3yyYSgs0QkFQbYnI8TY/ne5Jl8xoU+iTFjR6OdOEDw4vOL2OZhuSnF1O1EpTvE2MmU4asz3kQMcXrD0Qs6J0AI56AtOicqvXTfTwSrPlziHCp9mD4RHbPZaazxUFYGzA4VJMBypkoBTQZvZwWo3mnMyRJes75y9vgwcH+pJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzase0Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzase0Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CC4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736900753;
	bh=9hDZ8egCafYDNs+SN4x8MeNXTogVlNytAUfWFTng8CM=;
	h=To:Subject:From:Date:From;
	b=nzase0UbTQhUVaE0FX0x6BS6TbkZ1gSJH+CrmwWDf42PyQxMW5//+wYlqPutTLSJU
	 5pP6LEm0vf7I4+Icoge8bdn2/X6Zyw0vfGc049j1OTgpfYUllh2ccmwXE4KIs7HfW2
	 pmxvmUpdigbrQSUqRSSQkCOZMaFFHskbGXPtMOW2j1UMQKuEpxbv6pK/6XZ8IXpMdS
	 SoLY5q8qfKcgWQPNYJTfyqMYqIJ24LyVmiRpZYa+TXQ4iGAWQlrPVWj98GZ11HhtM9
	 936Ph4Z2EkPLNU829nIIFtAYm8bEwIX7Azy1mDcI787oyu6HCVa1r5vTOJhfpGxncz
	 Mxe0W/fS7u6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B25E77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690075359.32294.6008321888113091493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4624ad9612eeb30323a6dee147895a9694bba086b8938a16f7bfb2fbd9abacd6
Date: Wed, 15 Jan 2025 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736900753
