Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FB935B14E
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761347394; cv=none; b=CIUoc4vTN5YN4Y9Rqv5vGjcJqySiDRbQX0I1+jTFVyIYj2zr+cdd5i/Lb6GL9rfWBVgOnHYcJFjdCcTiIncG2X7ivi/azFRJMou8h5J3ZNeWJDxucr6AWI2GzHwjzliccBvdYw34wf/r7bkZpzffzkgBRB02nhUwztVMVTt3LO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761347394; c=relaxed/simple;
	bh=0zhCEnntWZcNHwgILgZJ2QP8AS+MITgCfQehtkmwvc8=;
	h=To:Subject:From:Message-Id:Date; b=nC9MpD54rj3JIvHxqI6Z7FPwJWhqsIsAgO5/xSaYo2Z2fS1Si4w2M1+Pdhv286njt/ZNM+fNjo+Tc6A5spT116U22TdtcjG/ALLdRf6cD+phliPJ+deDBi+FaNQaeY4+QvQftmJnrAgpSlT95DLSPwk8L5Bu4zaDSkf106UE0oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+NXW2Rt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+NXW2Rt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60DAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761347393;
	bh=0zhCEnntWZcNHwgILgZJ2QP8AS+MITgCfQehtkmwvc8=;
	h=To:Subject:From:Date:From;
	b=R+NXW2RthYnzFddgl4Q6HEUyyUudId37T9JIpFbe9SWYUT+hnwiv6oZSbQf0Av03K
	 A3Zj9yxQVkKArslZfL3xwmnSKUQ28NqR4eBZCBSc5AS6yj5DFeXYpgJ/tMg3E+c8QO
	 Nz9gKr+jVBakdHn+0FMhcUfekaFCQqfuRH4t5091c77kMZtPy0ax7dk8kq2VNGM/rN
	 GuMS7kSZGB538ZLMlR4IjGTuu8HPWNslohLEYFgRaOBYFXFrfvzbwvy2HF4sQygS1r
	 MR5ABSiDNTyMVLmmtf+xcqCNSvhGFzO7uv5wBcycBYAt1PU9DDNn3rBmE58kz6MbAA
	 4/ovrmntwJNFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC8CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134739357.6254.16223592506331870999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82309b64bd29f7a71ac11548b41abf69f5bfdf9273da6c59e883c0bd3dc43da
Date: Fri, 24 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761347393
