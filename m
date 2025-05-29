Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AD421E08B
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748557194; cv=none; b=SqoylC6yo5BRMNjlOPUrO4/FjwKLb0FK1yejCGN6JLo0ADw+aSTmmvCKkzbsevUyQsQAZGaI4jdGG1v2UbtbhRpocv+B+1AL30/SGvBwdbqbXCAOqUcDNnC+T4XXquV2OkeE3yUSCjuIL1G2C3mr71WqwxwuQkIGb+VX3jS6C0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748557194; c=relaxed/simple;
	bh=zy1RKH1U40nwKzQaW+s22lRRNAwMn91aJGVCgzdOA3k=;
	h=To:Subject:From:Message-Id:Date; b=fqcuaX+tENSCRFsJQpWEZdSty0JzSv/UoPCI2OpZVyCHgpdfhuvM0e/lPf+pUWcv4wkr3fg3EORgwr2CGMYqgAV1E32gwdmK10InHm5fGuX/EvQY0vRE2dzoXj6alBs2vHVX1DakoFIamD+gKHFGeWydUaXobVPOUbcLdBvIQt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjfehBBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjfehBBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748557193;
	bh=zy1RKH1U40nwKzQaW+s22lRRNAwMn91aJGVCgzdOA3k=;
	h=To:Subject:From:Date:From;
	b=XjfehBBI6KxAG/CfVOgU2IUbAT1haert/MfDZBOaQK1LV/kNpJSklkXUdbfAlvjSC
	 76+QjhX/1DUbA3DNOZSOU6ih6VF1ClCtZozGAfWNKhmGzjrxGcmuU2OO1JDR69ttH6
	 DMbRNLFN6NtbHr3BHMv2mMfu2ESqgnPLbKXQBSXTXCqJiN8mphCWKsS+U7w1GOYytN
	 9halwD5KgDOyWmQRc4fBRAVs/U7q0BSRNW45FzDKq1fBQEgZCQXhmSSjK8gn5O/Zl8
	 khN56ctdDzeG7K94UeqWIXD/pOk2+buFEGlln4FNKnRS0MEzYfIOxuSf73tmaRhBQv
	 x40zhAmmfL+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059CC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855719358.16153.11468946262249495476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5583e4f6abdaee9b838a5c993e862295b16f4519a8cbc6e1d9125246bbce735
Date: Thu, 29 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748557193
