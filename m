Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED933EE1FC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774995894; cv=none; b=FstshU8QPsYp/tFq7KdZEQ8cQOGE+Ox6jpA0j/fyZDSlKf4ibDyETeHyPEVl8Me4k6PTt++WKvObrpzvwuCM+pdlsNdh3UjE75hvciSV/5ckSCSts+gYks1J6c3tufaLSaEj83hTsJD1Wr7T7zVQs1C3SalG3rmfcaF0plH1fxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774995894; c=relaxed/simple;
	bh=vOYj0Fba/U/conj1JqHEauYHQZotrPXsYlVgihG40lU=;
	h=To:Subject:From:Message-Id:Date; b=tEOl8fDYWDNESNSxLbEWSneXdkG10YU8mShn/YAyEQUKhf0d7fxbR6SlZiYN2er0sqTdO4MhwXDU6LZyZL8M3wtlOh5eQSas6/SSBAtAUJqS4dlLj8Xu2EN3RFekUFm/N4IHkegXBIkH+5US+SQpDFSXnsGJInnDY6ECxtJh7MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+i52LW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+i52LW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFE3C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774995893;
	bh=vOYj0Fba/U/conj1JqHEauYHQZotrPXsYlVgihG40lU=;
	h=To:Subject:From:Date:From;
	b=V+i52LW/WQMUuQhgddAvrFXTY+l5W7kTPKHKF5cko/QbjjK1eDdxtV6jf3MX1f8t0
	 HCU7KJjax2Vj9zZtzQNuNa8sY3ZXM6i+/n4rf3BTDJios/TXI4s8+RTq2PdryoMnkK
	 A6rgXNWGPVp3W2B9coM0JcDeI0GDDCYHcUYkr1pg/aId80xxRNVy2gcCVx/jHpd5S2
	 YkesE+QKSejP0r2zuIy70t9m+KOq7ifxTaiAWXSRyTMzrCJBC7BfilVfo7PIWupNSI
	 3Ei0nt6+7LNcjBZGzhjTQILaFmJrKJf8wAjX0cvnE9NdeqmKSZAXol3xDV9R12oXP4
	 /+95044DjhqhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924DC10F9302
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499589358.30481.4005731979674584343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86550e20e3b046869680a17ccbe956aee89dd120ac9520ca019e35beb979b429
Date: Tue, 31 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774995893
