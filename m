Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391502AD22
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760056794; cv=none; b=pCCxBbh/8IILtSqOogNkiFaHOf0ENhVGW3OM0cfe97ilQH2ijEhadooDZ5pd5TmuUfNR68KoJ5cAA1QqMbv9aSqAMkFgtGdH2uUCVrIMfPxrYVHaBIQZJz16meKFEb/R7haY8uAdtsAdIq5C1DM4ggrL17Bi2HopiFoTyc7IThc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760056794; c=relaxed/simple;
	bh=yYolRFMveZrV9fIQz/OsggeVF+tPuh76a+SpLLpfDYs=;
	h=To:Subject:From:Message-Id:Date; b=axpHLGgWftEbS/wpBXV7FqoijcxoH0YxR0M8Yx69xagOOvQpkmHIvFK9p2FIxvZoY6B34JSa6XBVAm1sYYpdmtNbrgSBa/DMTgP7eke/hPpSsaz9z4+nRXO6n5SQRqgoPqSc7m4f20g27F6rx0iipUB9Fl+dbZe3Ojhm6nE1+Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ghy90ax+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ghy90ax+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C7DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760056793;
	bh=yYolRFMveZrV9fIQz/OsggeVF+tPuh76a+SpLLpfDYs=;
	h=To:Subject:From:Date:From;
	b=Ghy90ax+QimMYyfJZpdmsp0wUdGHTHHoJ8BWhGPulmqlgEb7YrO0jGBFfYCrJOQEi
	 EFkOjx0Fe943TfIpeC4Gk/Cm2SN5/FIpKNXtPg5flDxFQ5FOcMjUX2PF/IqMmWOG0A
	 GhiDCJJOfhRzvKL1dlPvwTWwbERp3xFTnEOGAG56eRr37iNW9dhfUV3UaxpX38yB3I
	 4kXp6uW+8+sQS3DnCGy2GDhWcYHWIjD+CU62eyQm47FNDKraxHwaTs3QJzvs5VnCUg
	 wCPj4SVLvU6kbOy7xz1oTTIFuPBYGeK2GmT630l8/lzDFryzIPAYFAGnfUKhzqWDRG
	 ZCFjtQodc/w6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AC0CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005679358.5346.9341973489051119924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931f96ba734c91327e83829c36b4646e737819e9d699ce1595a385800b2fb899
Date: Fri, 10 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760056793
