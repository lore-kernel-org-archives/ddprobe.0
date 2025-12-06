Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6ED1A9B58
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764984174; cv=none; b=hNUxnHn1MAs0m5H7J8cA5EbEYpaZt9pHZp5jowuasFWSiVWbNBV9gGgFBCBf0iDdXYJ87dJtZ5JiQ/ZR064bFslWkNFWCU03NlYLMegCI+xPPkEIDRw8Jr3eMOO9P7bsnCUMLnN3rpc1AciYyUg5WJXIhjT2FDo3fqM0R0J4bjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764984174; c=relaxed/simple;
	bh=GaRSr3UosDiPAGW1YaxaCRK7A2Cc48xizTQYNcaDQ5A=;
	h=To:Subject:From:Message-Id:Date; b=j7qTr2vTFLsbSz3vmNwpBJrMg4bVUqMId6MvJnUM0tHh6+OAPOOeT1poqLAPWZO6L2R7IXdRZNSP94PVzRW5p6ybTcrjVVmUOCRvR6XSIDRQ77yLTUpNH2f6jyG9/qNSyrTj5yoK/CXmGEtk8fIcijRBFU+EjZUWzXvyzEhuwGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrYerMHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrYerMHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7F1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764984173;
	bh=GaRSr3UosDiPAGW1YaxaCRK7A2Cc48xizTQYNcaDQ5A=;
	h=To:Subject:From:Date:From;
	b=qrYerMHwUZzFx0pN0meYRxtekUvSSw6y+Wa6f2Hr4mm+LH0ypuK8Goues+zwQ/zBG
	 x1RwxCLNoJY0ue3BGyxCnW5mDM1XYrMjP59ePYUyzkoszj+XSMsZ60hivk9Zt8Jfuc
	 SHL3T54a5xgD+RArmQ/90hfcYozNdpfWlWVOJvae7mWl7PITYgLiDnROHFiR/PfSmN
	 l9qJ4/42yQpsgjxWJKO0piGWhG2j67QIEa+yJDYS3QtO/5SVS98byyDa4m72gik4tD
	 7qnRXcFxBbwuXF0KrLpUGH3kr5evuVRBokj3gzLS8T9/CVvXcadjAT9F6w5KzNmzUC
	 2M6UPBic5wi8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9C4D3ABD5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498417359.18544.935726360565898683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9a6b1697303e3f3a294fcfe291e716ebd4e42f85201c351d74bca16bb985fa
Date: Sat, 06 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764984173
