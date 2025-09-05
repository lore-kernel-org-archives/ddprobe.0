Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119C9CA5A
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757045394; cv=none; b=qC4n4K6XDhijtGPQZxUyHIiDzmIkP0foMerIYdHiX9l518UYmww9RfRolqcr41/brcFrAMoocYhL6GqD5p5XbVOBJBAIPKom3ekNmSDxprLL3X9X5djnPsD5srDZjnZrPcz7LT8FBAi8q7rHFyRXr6jHUT2bNHs5hNcHG3vKRKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757045394; c=relaxed/simple;
	bh=BDfdRJNsMumGhYp/1zjMpgHVYIBK4eWVPrsbra43lks=;
	h=To:Subject:From:Message-Id:Date; b=HyLTTnEqhmeuFpV87g7Ah3jTLg4+yjzhvWBD/X6Jf1n4LCm482TDKSEIK9A8fwIf20QOQPqnBtB16Jmk9/wgzQ6gz3sgUIp3A21h7ogZ8sJLg5M8hXXpGsR8+nb6vPCj8U84hP4QTGn26hjVa+QAVW+mN2YAtNjzxGaIZwJZsWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n25dMQjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n25dMQjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3521C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757045393;
	bh=BDfdRJNsMumGhYp/1zjMpgHVYIBK4eWVPrsbra43lks=;
	h=To:Subject:From:Date:From;
	b=n25dMQjW3H91mrgL0zeYHFTupQ7QHbQTl8CMlwg9rzXnDHRMA3iB4m4Kye/J+bKVv
	 KkRdvIrWHnhdt5J62BW91LAYM/F4wNIVBDxnZRBiOm26h6jo1v70TT+XDx9KMAOTWO
	 teBD49JX+MnjX0IyOPqwR0clF0cvb3BoBDDsmABbo0BqVIg+DYEPqNoHG/0CeEHCVM
	 0PilbhNNCxieXqSHWF/AWjKf5Ikqt9H9mNb3L9MuSTZD3sXOWkn6pm+HTo7zgu9WJN
	 /hr8/BT+4umw3djnQcxZusghiD28b7aKpWrx+t/pplsj+8JLXGCp7N5qXDnnBmq3hs
	 iZeGtuPsvzVCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EACA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704539357.29866.10878864765660236710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638df27e2c483c6fb75cad4d2672aba0b2e56669e32f80f31f23b875a0f49f90
Date: Fri, 05 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757045393
