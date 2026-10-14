Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875C13515F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791964234; cv=none; b=Eok9vUtTh3tXC1ZCPvHMqQoFfAjpfw27ya3SY2xnohUp14TehUQlzD8oztTxDicsByCmI4kjC9gimsJnarF4FESsLmN+CgsSV8wX4SEvFz+6ArZp02rtexwA32CMK1xRsI+FwYkF3EtIy8CuwOKxaEy+HNNAbwlydEyJPoReg2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791964234; c=relaxed/simple;
	bh=Xc2k3LH+V3u/8/dTZO29GXnudYtI3BE6Ddo/SjsFbaM=;
	h=To:Subject:From:Message-Id:Date; b=u8h3CHS9zjIa6zyYQdboaz/HrxCGU14egC0TvxwzfE/hbxcRK1qeOmLCNSHkw/4Nny5u3udtiLSAJYk0J/gAPBhSGK7IFMp7/F1s0lBc1/ApWeLaAZQp6PHOVXdJEKnkM9k4Uqco713pLZ7AWwmXQBsPcySug3Be//ozLkuNyt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHUqC5Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHUqC5Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26D5C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791964233;
	bh=Xc2k3LH+V3u/8/dTZO29GXnudYtI3BE6Ddo/SjsFbaM=;
	h=To:Subject:From:Date:From;
	b=uHUqC5Z1DkjNnYfaxZsyQZ1ZsLOwSQeWHYZBD82P57Jk7fIDEVmL9Y3w8q3uYVYF7
	 7iNZ+RXN7vJaOJY3ojW0m/+TRs/Dii3fQzriDc4AtCIAWnH8TOyCOxPsvwTZtfMkwS
	 Ro0u84V2w92lf7nCTAgo5BgZMBYno0uZNEM+pPIiMbolriaBFaM6tAr5mxjnx2TcqE
	 rjdEEJ19iTWmnZoDL14IiMZsrkSjcJ+cTRl/piQwxPAE7dSVDCmjc32gxY65EeuovF
	 axqWt0dsfGCOYDnYu1yYD7SXCRFYlVb/fSGDJFaPUJMc60oTnr0FfysBPIQfIITIL3
	 tJMnce4Fs8OGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0607CC6B27
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196423371.7263.13755371037287953406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ed441ec026885e0661f2ba37847084dba9a186be6a51902e1da27b0ac28a51
Date: Wed, 14 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791964233
