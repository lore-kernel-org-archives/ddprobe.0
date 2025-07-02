Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D963C30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751419194; cv=none; b=DDvT+08JHOHogCo/pw/INRBzaLrFfXApsPKk2bsOFuruGiZ8NWavy2REyj5r2f7B8XynErsL0hP5aqbcC6NU++ezF7ZM5bV5LTmdcTR5PXSqClFuMiVYLhjhATrXqJbJfjl4we5+19spANX7aipyG1L+RFvO5+7f/qCkG65uHZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751419194; c=relaxed/simple;
	bh=VP8UI0nk0jGy+byJ9/rsKsjNTEhx16AlqYC8+khPtbg=;
	h=To:Subject:From:Message-Id:Date; b=Gr/A0ONIQZWsaXNtwQDw69HtsME7u79MQAEj0efBPAMWGq2q8wyuFN9Q/GT7nmtaKwh1vKkZEDMpT7XiaIxyyb5VcmEuGV1HpDb1LAFYJFuiXEB8Nr0R3NuSpliFwo4sxx5C9MF33A2+7iV3OuQ0CROhUKcfYRbcy+H/FTteoXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYICl+Zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYICl+Zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95E66C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751419193;
	bh=VP8UI0nk0jGy+byJ9/rsKsjNTEhx16AlqYC8+khPtbg=;
	h=To:Subject:From:Date:From;
	b=AYICl+Zj73Hnfnd9vVMdPAyoaQ/slXlmjgGoxICyAyjmafYyv9AY+aAKO+LorQ4qC
	 IKZ3sr849I5cpgtE5qkZBQXEVpyrMfEgnRD7VsUbfsDBA+IPeln5GPBxDiw/TpbdpQ
	 sMmGpcsH5CRkLbsI3wFUkgEiLbrTq8qdW0AInPIWHtpGTbff2P9Pq7IdFJB0M6uROR
	 ggCkEdzPVcCGt5L2/x/LPBjhkiBDg29cuVtoTthwDSyE5lOk66P17SNu5TijJ+otga
	 mQdG/6IgDSMun0OxviGFH57OFGME11z0hwYpPzPO5PIo2fbfZ2XdT7gNnCmOmA8ESs
	 8sXpX/VkJBzAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E43EC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141919357.21455.7111513997206492567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d530f8c721ca8214238452e07edabd93adcd41ab08867d086729f54985cb0d
Date: Wed, 02 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751419193
