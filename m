Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1473E1DFE8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730055954; cv=none; b=BqY0X+6B2t4GzJ8mQb95DBRpM7sAN28+/hXhcAuHqXTvXruWvD8pOIg0MIRNOFTGdiuafJeDrdmBM+SxQkKdH0mjnJK+fKT/LxytHHmCoJO6LZhJKxGR6VKxdBvi3kyL/g9a8p7O6PIDNOtOq0iuMaCUD4Fojs9hkoSyY5CzfXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730055954; c=relaxed/simple;
	bh=vUkd4hS2dWR1UOuyDw9DnMTnVWkLeDM7bdPkstzfS4Q=;
	h=To:Subject:From:Message-Id:Date; b=Dsbt2WUDK6dV53II7EIiDdDNYshOcJAWvKm0gqWL0Rm0OnK2mjvzVIgUP5mD+FWehdDULUbhyTOBzfl4tKTm0pKPvxY8pbzt+HDRiO8rN21RBgmrHmpqzhttbuxzqW0MTITKJAcDI1igr6mAeXWMI4nlpTB+4AsIXMIn36TcRWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdK86tsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdK86tsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26FAC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730055953;
	bh=vUkd4hS2dWR1UOuyDw9DnMTnVWkLeDM7bdPkstzfS4Q=;
	h=To:Subject:From:Date:From;
	b=TdK86tsIp/rw8/J7j7eD5ctVLV/75De/n4EcgtAeWMmaxVCwP6mxrZ6ukCnNp7kGq
	 k7D7aFa825fzseEvTKhArmFRrV4cpUkE+POv7+jdhvg7tQZhQfJO8pDn6/kMlRfp/o
	 ETPzMxL4lj8JmwQiDlc1RjLwmpC69d5KKN+1S4uCJ61vayh5rzF2knygZubBoUcSKf
	 qv+dNi12edkGV8cStcOZW7YAv/4iWOAqQ8bBkQSNfPcKabRlptz4WCPUCHiU2mfbad
	 Dr7W+cikJIjntynspsp2F1phcbArey+m+lOoy8opc/9WKxyFV/SVtH0gTEFn4SOtN7
	 vUdpwzE/fmfFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33BDD13578
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173005595363.24059.2147910147462741541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd8a6c35f12773508fc3737da30ced641720dc51b1b5260ba83341531cae05e
Date: Sun, 27 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730055953
