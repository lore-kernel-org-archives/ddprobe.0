Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BCE1D88A6
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733097354; cv=none; b=BzRxDyiU06zgmsvlblfw3li3oFj1bNwiw3vZ3IIoCXfDiMk4vC2ktTUmqAw4cfMH1yN+Ks2HcDYmLndVkfFVqb5FTirtzoWecCSrs8oC6a2stqlVNC6Gk6ScfKHMk58A/UHIWn3Yz/i+Cxnc1w0EPtVq1AWQz5FGNCltWSQ9lTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733097354; c=relaxed/simple;
	bh=7gCt1MrFU4tSoqyyVevX4j0YcYca4NxvQwbSAclBha4=;
	h=To:Subject:From:Message-Id:Date; b=BQURMhCFJzbWIlV/gFcB49HGQKTaFdlqZBdk8VnC2VJz9MRFF/dswvATIKBae7MOLKcViylllTAI8/Drrx6UmC8YMkB1ww1Mu5lJOfpd4xtAxvzbAfDn1qqoQ8LxL9pkKAUbBMqxpJpmetVJKFtyFEFpygAJq3oF+a+cTiegM60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLSY5FDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLSY5FDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB7DC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733097353;
	bh=7gCt1MrFU4tSoqyyVevX4j0YcYca4NxvQwbSAclBha4=;
	h=To:Subject:From:Date:From;
	b=uLSY5FDP35pOtDosKileful0rPAdjRUtZV23H15cPwkWMhk2w3y/5NXBtZNobhYxd
	 e/A0Nx4MEgnjiGk6LzEvd7vhtsflF9B5/1DAffBkSFtBa2qbZsCZA6kpOCRCG9drdy
	 LBmbfwwM7NkZTtBpjfoO5A13Gx+nqGQoICAUYR8uHMmUNMvyogF5m+KJwL+bhlf7mk
	 9Ch2DP9QxReAUcQ0V5PnyvC8s+esPcagku+fY+bgQtHHIDvKGdC8+44yfISBcQquiC
	 Pxbr7o/Ix4+vmC37w56L020hLShkP8d/QP9LHUSixsH1VdysDaG06L2+l5bZY0Kkan
	 m9zx7+bIZsLeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B3BD4978D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309735359.19499.5698188800105504713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5075bc99d504c0c95250399b6f456175897bb3c18c12e7acebf8f49822bc63b
Date: Sun, 01 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733097353
