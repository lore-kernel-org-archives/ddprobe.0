Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDA7343D87
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760700594; cv=none; b=tYNwTdZcrT7Cl8ksINdW2qUvJpHUkNf1ylspxwOp0CEXifrK7ru0Y6bjZstZ28zGqUmP41oup9qEjAsvYGXB6ZkDAVm7kuJ81oYfcC+c1czmyg83cGCYDsiSlVbug9pvK9nBj9WYq/otgGBQtuvMd34DxfereqxRCGy6imty+RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760700594; c=relaxed/simple;
	bh=LKPcclVJMe+h26CignxM8jk49OqungqyY0AxCKaSeRI=;
	h=To:Subject:From:Message-Id:Date; b=qnt5NNROH2IjvF5dN96gT7HL+xnI/03jd+pO4uHsRoENdoO4yztOYMHBO1SsEXmRBP5poRMQa84aJ7yM+y8SqecSSnvUbv00HCwZ2vsRudg4C9MY46DtktTd1u49JXeFUFqBOvliC5W/DTiySLqCbOHEBDSgeVyRgseYRMaJjNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFvxk4BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFvxk4BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CCFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760700593;
	bh=LKPcclVJMe+h26CignxM8jk49OqungqyY0AxCKaSeRI=;
	h=To:Subject:From:Date:From;
	b=fFvxk4BKvkmQ62h2Q//VVx+/DWfJyppeuDUMKwJJ8q/o0iFHY8bZVABQUsmYtwZAD
	 AOcGru+zNKNjvnuclqOFWe+yi3gNeMB+qsr9Cr8O7JYdaE1opA3FZdC2tIPy9bMTpP
	 CFxq4FxstMgN3KThahQVMP/8b16ThAK+HJy2cgWhyGuVdwQfqyfMiutj/qLPGCmkX9
	 UhJH5/arrgd1rr/1zqqQK2GMoJzMrsBWB1x9TQ9IIZE98Ct7Z0liqQoo2V68/krJUV
	 8y9AAZbQ3ccLrJcWIxuTf23vfj89yda2a1RVhyFQwOXkz1oDLpXR4ycsVfc5wY0Y0T
	 VqwGgyn/s97rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90207CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070059358.29730.3799834010740518560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ef9606a569fc8a5b40741b9a2860fe5cdf69c9358a8d3ae29f69d68850d7c9
Date: Fri, 17 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760700593
