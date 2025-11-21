Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A9C3321D3
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763730114; cv=none; b=ncsakOoRh8LBFiqhR8QitccZb4CNxx0TFp2EExYbP9xf+8BBr+wDKY6n7uvananGpdU96IGlJM0/V205CZuzEY4llrmlmUGMUzAbjpwZ7FUs+lAJvtLR3zlcpF0qopihDVpUKKHTI25onDiJiT7+xAxhfkpqZsrZQPf05U2eddw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763730114; c=relaxed/simple;
	bh=v0/LPti48dhDqn4ktNfl4ybI1zdQUIDKdc2P3eR/tz4=;
	h=To:Subject:From:Message-Id:Date; b=AqYNF7ypK8S5MEE8ou/kLl3cIJe58E+0cJMHmuaEzqpEtTH6nv9w9gqbVn66bRE84JqlDIN1HMZMy9lDrPPpxX+vvXkrj9SDitiARfn/xDV9/CXDFNQrvgBbqcROxfPKBJUwLIezhwWMnZDcTWejDIUVRllzASyf+BjQ9sotRXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oW35YMTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oW35YMTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A4C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763730113;
	bh=v0/LPti48dhDqn4ktNfl4ybI1zdQUIDKdc2P3eR/tz4=;
	h=To:Subject:From:Date:From;
	b=oW35YMTelQ251BCy3e/Y+1jAtxfTEriiPSW+hhTcS9tg/ea57uLUvxwFyL9PjqCPS
	 kQzRoWVD3wTYodd/ymMfc5ukHx5HLUmeQ6Opxer6TE043wtxEbK0T0EFV9QByvCgME
	 w6zOfCkG4puX5AqlcM7StWo+aC0XQAUrcWnLUJAFuhRsTCu4G5xpz1JSSeibriT/jv
	 H4/IB/OIrz/ZAF40pxKRz1R6i6GeGfQWwXd6crCEfK+w/alxuGEtdXMJtrgNwsrbi3
	 DwNRxZTJtkJuq/aAKCAhiEkWloSrYyoyASQI76X+TSgJhN2P0zac35LOpBGrbI5SlS
	 9jv7NIPV9K4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E7CFC271
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373011358.13733.16110237068404289459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4d8d86665a74f49d61414afc33aab5a7d1388ce837b871833f85da2b161ca4
Date: Fri, 21 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763730113
