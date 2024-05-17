Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB1D10A09
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715922743; cv=none; b=DKrdBos9oiDXIJrHNsGAv/qdjVTkCakdQ72b0qCk/XEyWQS+Te3NO9ZsUKupv4e11/Eh2pjtwqoMG5DiXxG3A6zuNs/Cc37P3lbPEED6n8BDUtX0MYF59sTBoaYuXH6yIvjfEWylHPGtSAmoYB/dpMIhtchOPCQeBMXcp8XPgec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715922743; c=relaxed/simple;
	bh=yyR2syloP+VBikhRpnfY6rfEDXYN8ULyZOv0T+3OFZw=;
	h=To:Subject:From:Message-Id:Date; b=TosF5FGUicAsN1z8YscHSiL5o7DC3o5N4dy3erGqNxXH58PTCLDKVGgeWXrbBjPdEQMBwKOrAxryFOWOsyQOEpQh9tTOjeuq50+vX1XuNBzQjxuohYUv+JLzIGdCdmBeo9Q52to1XtISbeHxLar/zp2qZFA/ZR5DMH6Ueb+b7sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfgHP1yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfgHP1yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EA9C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715922742;
	bh=yyR2syloP+VBikhRpnfY6rfEDXYN8ULyZOv0T+3OFZw=;
	h=To:Subject:From:Date:From;
	b=LfgHP1yfCZ1ot0FKwoCyyanW72JiOHIWajRElECMlhB8dgihyDTV+Dlff7r0acckB
	 9NS0dLhjao8tWqHrnPHkCsLiFxC4IyL8N0Aej18ZF7ZymLyxRGYRBzIQ9v+FxGSHgG
	 nD7pCA4VJcoR7bvRkxORCbuY7hzsbHfoYWe7IHwNMmogWi1i46DUEPzOsW3tMHI8uU
	 ucfh5/zA/0yERuRShXZDvT4u3FIC5LRSAJ5gy3vIK6zCSUpOyMLW5FOUgZ8l0jLTwO
	 0vdoYAwglsnEQ7kUeKoLB9sRenX20HjpRqmhle1zGKQqzvzPBtsKqXjew36HR1xunM
	 ugB6Ysdh5IB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3705C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592274279.25783.13329910980012013158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d83475bd5b9ee7443f577fa327da40124295916e94005fc9014893852a7fc9
Date: Fri, 17 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715922742
