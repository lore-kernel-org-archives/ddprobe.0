Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2661925A658
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737087354; cv=none; b=lp+uGpW/nBX/S4Q4b1SZC+C1mwlg1pyll/kz2yJc6opzMJ0cDV3aQSInfRdiLvN+jisOS8OikhbeFommwuBfeBnRkzBDupYsBVq6le2uXDtuvbptJhddOZYYpOZ+g2UtJXZSPd81nj7b058YsXu2GyQEjmZosfkIJBYN8On1DUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737087354; c=relaxed/simple;
	bh=47WMLHPm81VscpwvKcDCYl6it4VEmUTaHp1yCTgxMjg=;
	h=To:Subject:From:Message-Id:Date; b=FvhgvTsqYnnuOM6FZcx53Bx4Q3oS7+2pKlCJowppkEtkA1v/bWF9dItyNevAxl7mUggI8vEJvV8H9/sZgxJfm/Eiv2NponFzDvBei1wU8oS4Ta3XkGgiU7tdEP0ZgWOsRmPKzbKzeu0Cppn2vTWNQ/CYHfycEQZ/pYBWtCORIEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApKQ2ShZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApKQ2ShZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1460C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737087353;
	bh=47WMLHPm81VscpwvKcDCYl6it4VEmUTaHp1yCTgxMjg=;
	h=To:Subject:From:Date:From;
	b=ApKQ2ShZUIdiakID7LiPDEBw/db0j1vImbWEC1ASes/qDoANrS0t/jQojAWOU5zqG
	 GX5na4mEcuQIv5WI8qpuBRDxvFRBsuJ+6yjPvM7oVjZRcczMKFqD7M93mNocNDCI/L
	 pXXFDS+hE786m1cb8Q1KuxGanm2inJRyS7dOsjkk/nlWkejF1Nw4VGIYAv5E7a3nHz
	 +JZt1S4d7uvkrc96o6iLfZsqbBsNdgjcRggrspMFN+Qv/3m57kZ7e3G6cnatJdDwfK
	 qi4B17IMkBfKmyC0QIdqZke+fqFBJvNtC0DG6nrDIgLLKJdeV+p4b1+G0D2WFdd4Bw
	 oAWI4ztPceAKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF0C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708735358.950.17929759340332831079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327444aa5478ef37c436b38a42742821dab5cc2b81ccb92fe557edfd159eba2b
Date: Fri, 17 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737087353
