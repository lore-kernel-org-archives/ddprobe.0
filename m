Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350A845026
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727978754; cv=none; b=TxfdqpzYJoXrwpKChN8sWuwyoJWC8I6unlcx/ClkH9+6kjNq6+tiIx8aUNqkbjnGysbKBJTinC3w9TP7qJmlms24PPXZ+bgmQLcimcqG5hBxeUe/LACuwekLC2KuUkbskd9j2RRrq/Q4fNMo6fzLJzcOhXxbR/EWmncjPvRqFnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727978754; c=relaxed/simple;
	bh=CBESt7m3z15OKTR/tVMU7RIHk3rhCgBgJdKKltqO4Us=;
	h=To:Subject:From:Message-Id:Date; b=OYF56Du6E09tgUIBX7iCt7+Cpdi/W9PoMwvxSo+DcYVm/PLwB8d409GNIRfwAW8o3vRtDuuaKSpZBtzBNC8JTLDyq0elL/2g3zxySVm20pmCojYW7bO9dYRVinoPNDQJPKbTqqKE8reOu8/0sYj/Qv97MyrcfsbMpn7G4/Jy51Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7pHuYY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7pHuYY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA10EC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727978753;
	bh=CBESt7m3z15OKTR/tVMU7RIHk3rhCgBgJdKKltqO4Us=;
	h=To:Subject:From:Date:From;
	b=F7pHuYY+JGCStQLw/AGTVf3BTuQda4mVwThpezhrnbAs0fJmvgUpSRSsZ1/YERJD2
	 AC+RNF8UFJOIPE100t6TxJmPPi07vPIQd378kL1xyNpuK5nAP2vnFutsQHXbCZG4cG
	 rt8+vvtapahA6/Z2gjCNU2BnNpDVbv5BLFGZmZMH6DW6dtLhgsSGYdZfXd6r0wyLmP
	 8z8D9Be3CenPAIBk0ab7d3XedfVRKCY3ybE7MuRLguOVzp4kg6dw2TfsMzZZg/zHch
	 9YBsyyqrAmd7adnDIFNU+cnSlbsYvrOsNFq+1nnuwh1B1vDB49SJ7e2Cg+ZitvjfiF
	 4ZW/8UxUeD/jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22B0CF34BD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797875365.25483.14803020546537428405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354358558e5a777508a9a2ea966f18d805e94f4e95c902e2318e3f9dd3eb6078
Date: Thu, 03 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727978753
