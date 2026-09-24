Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E11846D57D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790247034; cv=none; b=Nol+YzgrU+wGwjpNl/Kg5t/HoiV9xOc45BtKdle10oOVLuveIFtEIMJj3fgsVedFcJkqqkBOdpuX67wBaVOfrDzXdDfrKCkJImDn7s7gZlh/WX+mfRLsTJRp5Ff8tlTYT9FX+pNZj/yUhsZbiVkq+lByZowHitUxE5uGDQmNUqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790247034; c=relaxed/simple;
	bh=4JKn/SH94hzi+r30JVd0dN2OEBl8RF2A2uW5fxB/yyg=;
	h=To:Subject:From:Message-Id:Date; b=aUhMMSXaddupWgY264GKt/9US7rhA2CE4oS9ixDTx08UALi7Q0yDSsRuuuCplro+9rOvqPC0+PWiGRjjTu9eMH45dmzQJAgVAu+DZmrowY+ZC44x3Y0lv3Ei935iC8Fl3M3gC2vrzFAG/P2ezS7mcffNf07kzjzEQRPAnx1McZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L324hcJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L324hcJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2ADC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790247033;
	bh=4JKn/SH94hzi+r30JVd0dN2OEBl8RF2A2uW5fxB/yyg=;
	h=To:Subject:From:Date:From;
	b=L324hcJ6kePLl8NrOEsNEjamZRoWiSz1FntN8xibwClrhPK5+WOcE/zB/m3bfEiXA
	 HNfUbZHFwxeJBFuQhmGgD3iMXL4+CRW2BmWUIuMJuo63paipDKuReeILBL2sPGDbre
	 bs8wFZxTNVFgeMI+/+KqpRI4uaaGCIuHBejJ/b01TrJRrHIeJOyvf8ggU2gwrYWM0R
	 2kTO5g1yPOlDrcFKKUEfnIIfB1bb59kmT4h1a7ykjxdIF4Xf7h5xnJVhnn13tProqc
	 BPLg2YbiZA48ds4FHku/Kl+v2fKP77x3LzTZOoXzp9ZzmUP+crrZs3bC6TmmH+fam1
	 +2OaSVF8KLPiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B529BC98317
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024703372.24272.18177669753121845819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b33b50fdab6b1706b75fac675269ae8cb58d908bcc2550c97d404600cf96746
Date: Thu, 24 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790247033
