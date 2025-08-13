Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4363818DF8D
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755061794; cv=none; b=QAbBLCspgSINW0mdFJRbcK/IZ28idFBc7hfnRDth3ytaaK142OUKdKVKmoQDjYUPN5SoENVykbBdYTAN5kFWAxWkreAYK2SNq+tgjkt+YhrIzUzkUN2jOTjZn4Ot62nxsAiv6uQ6ak6OSTeBDMy+4XY0eDmpNL8GgNwLhmIzNiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755061794; c=relaxed/simple;
	bh=uvH+GaiA8UGgniRyQvBVnraIzpAgrCsYHOh0B40z9NQ=;
	h=To:Subject:From:Message-Id:Date; b=jumvTNiF7k72u1x+2AlKsJ3M4fEzw1Pr4Xacc5TP5+OwUq+pq0f7bITK/3tCq4Afowx1ClSsn72CAwZa7qxSRG/Koiq+P2WZ/KnHRnKz8vjfeZ4uZKGmSlBywOEaYCGW871RkBuBBvGSOBN8jaZPpWRVOoXdERyOvMpYA9LCrE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfJnW+Xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfJnW+Xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755061793;
	bh=uvH+GaiA8UGgniRyQvBVnraIzpAgrCsYHOh0B40z9NQ=;
	h=To:Subject:From:Date:From;
	b=LfJnW+XqZl3XzBSIOOG4B9S5P//GzO+C+kWtxdCi/A4Nxur4T5y6oGTFUGOb7ve66
	 lHJpYWLyv6W258/rncXIDAAb1KskMJ/Mb5t211ci30C4jn45C8ZaO3xsHEYiGjwYlp
	 /YrP31bQU1vA3JzLYMMo3nx8Wf27T9b3OkthM7VzQv2W6DDUs0ZGOvJHpr1K8eGhmz
	 j/W7ohSpzzXKRxOKhK4xvyAiin0BmAw8LB06wQEpHWQRUrN7X92/FN4XXPj/ldRLIT
	 mf/31dlmV4pMDkUcJO6RioBJ0PzduHQYGGds1aw9EU6KoplIxywdZeP9SeTCnV/Orj
	 l/6OinDVFsw8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9309AC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506179357.9388.5487472399279657615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc05dc8add2634b73e23e2ed9210aaa87c8ef9349438836c8cc8dde435ad66e
Date: Wed, 13 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755061793
