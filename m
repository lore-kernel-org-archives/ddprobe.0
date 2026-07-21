Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393BE480DE9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784629714; cv=none; b=ou1CdE71nrheorD66Kh1R7Mjeu7hCiHLELsy4R4YABdjoWK8IHZEC+5jN+1sbTNLH8k5fB3KHEb+Jl/abp7f18kBNIy9GaI4pUtHJOFZTSvKNfzAm0aXgW2OwnqYDjk3gP+2HKPM4AA6+jLW8nPUarCi4FoPP3aiwW7W4qLksuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784629714; c=relaxed/simple;
	bh=EVBz2p0nrmduC87GBh7a9ew4/oixlM49XMzat5M9dMo=;
	h=To:Subject:From:Message-Id:Date; b=aZ4q5Shr7/flNG8XR4kEupz3tf8lqpNEw+aN42Y4E/4GiG6/gSLMpSURbpQIjEv8sZbxAM7SnXK9uk9s6jWPRoubS/jos9F2HkYEBuNT2KM2AFm8tZF7xo43hl6Ah3o1ntjmUZTu+7Ciw+O55FDBaqHZuY/meYVgoQFtF9L2UWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fB78u5Iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fB78u5Iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9F9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784629713;
	bh=EVBz2p0nrmduC87GBh7a9ew4/oixlM49XMzat5M9dMo=;
	h=To:Subject:From:Date:From;
	b=fB78u5Iur3XjkUnxqll++zk1cVa2B4kFfUIMpBy9XCCWvproO07lmsYYpd57fW+eC
	 8ihnhwBb/NR0xeilQdpXvm6d0AfvpUNvofntB3bgwvERcd2rHmgN3VIi8LyCo+OPpX
	 Ym4H2zLKS1w15dKW9woMOzHuik1qy4ULqRIDR4hE7n77EwnIEAoHPWqQrQ+BL5qnx2
	 vN4XTM3cqyB06bY+Y2Oq2SrY5PdoIyZFBrjWlepTCRlc8RANE15k3hYcpRqVhWyJWm
	 H2rB8K0looox3oo/yaWifxneUq+McGo/wVvEXscLxNCDb6nmY7/7RbG+aGpk1l8dKu
	 egAFYOUivSJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EFEC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462971368.31494.7638182830949847467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcda4959508ec7538b1b8a7c20e033f91cee4e1fe057af6793bad93ccfc35384
Date: Tue, 21 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784629713
