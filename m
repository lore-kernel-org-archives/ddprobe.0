Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EB1296BAF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776476854; cv=none; b=rSEPW7yx/zoCCK39T3tFvTyGqciOBmbGSQGwdwf5/oJTWHOX8/K1bJY7TdgvOr7hx67Mvrcb7LgypfCBiX7wQPxG9GSPKkYUq2MRQQO64NjKVkP+fKabm+KO/37LoQbsWBnENPAz2iYRJyxYFeqH9a8BM3gylEV1Ni+ewDzmpUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776476854; c=relaxed/simple;
	bh=evsdqxZMvrq2rrD3olmgz+on2WMSgha9DrLrRtd60Ww=;
	h=To:Subject:From:Message-Id:Date; b=m8ik3DmEmh5awBUn4S9zqdWVpg6nWrhLFdwOuDQGQ2cKJemEnM1/DB3XQOU0toh+c7NOWf2vAt9lYX2vEagCxdGv/PDZaDCbWFVIgIC3PKjJvaDfolWIEhR2EkYv6FQLqKhBasRtFDdEnduLG96wJtXYagO6uG4mluMewN2jB9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRkzO9L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRkzO9L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C566FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776476853;
	bh=evsdqxZMvrq2rrD3olmgz+on2WMSgha9DrLrRtd60Ww=;
	h=To:Subject:From:Date:From;
	b=aRkzO9L4E/N4m+KFIyTya+L47ih/4qUfihNNgnCvzKZbQMnTC/5Gh2O3fdu/peya0
	 rEcdgd0uQ6q7dUfoghmCQGK8HSFS1Vc86Qw/jvoQqkMhpkXTzCLEpGGBClpihVi0fn
	 sRPgrNL4NSrgOtkwgLlrnRAd0Ifcnh06vnHVuWqcxsE3RCSYcleMCKsvAuKOFf+HlL
	 htAgVySXKe0+f3bIFVzIQRbDhkE6FGBmXiIOXlc9v1vbxA+5xd3oeZFiDJYI7a4shv
	 nijVtT+D/ReuzhOeNis//Q12rtLVOcePzu2AQe/f9KCC0dGUbn8vma6DF+HsTDc+cf
	 DWr7UziJfYuYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCE0F99C63
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647685368.30917.17175746190454072729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528d0c20370a1d6a2089ee68675f84bde097f2ab7e9dc28e2bb404b821bdcb6f
Date: Sat, 18 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776476853
