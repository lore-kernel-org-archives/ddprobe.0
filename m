Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3DB4BFE80
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790349035; cv=none; b=JCDQPG/Y/f7ioPyv0E25k/Co5fFvWZ11ySL5gd3DPeMISCqx//YJrVpNgDSr6hAPHTc4tL2XXEKcodfiWKh3ARNu9fhIzvfN4rffdIDMqMIsCwBN2XkbZDNJRWmQhqPWFjV/qiv2uVxVX5J4R7QiRWQ+alEsqxFQixCC3A+ZB9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790349035; c=relaxed/simple;
	bh=+JQJMDmJJf3ghVNV+v5+3eWVyEYL/WdlbT8u6ysVFVQ=;
	h=To:Subject:From:Message-Id:Date; b=ADSHEqWmFPetUuUVQd3473lRznr+Do+S0LNa2KRo1AbnkPEABMC8wHtnSIR1vHpfn/HTLvjni65JW4cEfA8ws4sLMhiVauxVVmySaafo6r92bBB6woqISNtjyl3FzjbhBjpoIlYQ2XCbB/lo5ct1cVjeUHefb2BhQ7XAdrCb2SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBb0FsZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBb0FsZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A85C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790349033;
	bh=+JQJMDmJJf3ghVNV+v5+3eWVyEYL/WdlbT8u6ysVFVQ=;
	h=To:Subject:From:Date:From;
	b=IBb0FsZ+rWXa6KqnxRV3ZKS2bRFIZbFFuc2/3Yq/gGlReFTApiVSkWX+CfKx4lRfA
	 wf1Dt7JojD6LdXa7UQ6g/T8UnTOFAZJtyMMWmR4GX07Z2wqIR1tVVsXLKiLrBY+6yr
	 KgfZc1cPQa7l5RIGKUT87EPRy39R/Ri+7W1UKDQXzIHn08x7xBEVzKIRYwr+EkmnrD
	 McB73Y3wCakK+FSnPEATSSccutjdHFMm26Kds8eLGCKiREI14myQiT/ONUtwPM1RoU
	 mgJsO88yRMf6Yysd+ze2x5sDIB9eP25DW+a8jaJje2+Jneypz0WKkoBH/bo0Gb+E4e
	 YklmVn+8QvKJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB16C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034903369.16330.8203294597929495472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f5dacc41963d9c866dcebe84c1205d29dbb2248c75672627e1077e8e5306b0
Date: Fri, 25 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790349033
