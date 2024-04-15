Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519671C11
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713152963; cv=none; b=BSbgfJ9ipHe+iSzwk8MHXjjJRsZTOuajO1FUwQIpczUVM/KHFxYYfmSSDclcFiMeuwDiI10BW6AAffmkK3f2H4KXlDM0frr5Dy1/vfVPf2NROURNXmj4XlX+nsEHLIEF5CB6I9FcQDCN7LNGJGCQ30RhMa1p+0e8gSmVj5TAhNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713152963; c=relaxed/simple;
	bh=54htL83EsZMFoyw4PY/Ovk5d8uwXWapoeOrzVpeLirQ=;
	h=To:Subject:From:Message-Id:Date; b=qNpVGwx7g7Z6fi1yAIjzXEANvh3zJBMW1XQMvxYQCZoqGkANHBJZVkOYL3oADNd8ZF+8Lhq9HSlmLpj/oqwTK3RPtYZlGc+tOs2vdOCPhM+ex1Lpukqvv0wgv/Tl+Aw93OZIH/jPqH5VLj+dO8G4lo5Ob2etDAQOxtxA+VRTulI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flPjhjTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flPjhjTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6939C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713152962;
	bh=54htL83EsZMFoyw4PY/Ovk5d8uwXWapoeOrzVpeLirQ=;
	h=To:Subject:From:Date:From;
	b=flPjhjTmoMZYDsNLmeL4VSmo7JhdRy/WuGn6Tgdz/q7dMw37a/9rkE93RS4t9QMDE
	 ypPjKK+DwV0xi0MeBjz+T+j1Fbyhqogx0BaKY3wfkE8L6mi5ofbbNp0P1dD7GgGAdS
	 rQgj1O37InDf+Hs9tXrH1Awu73S88to24ScXLPNbDQvOfqi/UQGgz59GAK7oEF+By2
	 k4NdXG3b211WB+xBrRPiBcqfR/Yqu4G4hD34HFYBM308Xw/LOKw02CIy57Z2z1gwDa
	 r7AuAC9L7ipWlDUu5QNLG9eWy6oE3Bv6qfbSNwQEtGHhhmixk4TUTI2Oh+auSsw4UE
	 tsmUVg8mf3TkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0324C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171315296276.20693.3351435403553022378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f568d74f7cea890bed06caf49a2435d578affec215def9c398414c7925cd496
Date: Mon, 15 Apr 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713152962
