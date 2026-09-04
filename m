Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6473F1676
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788559834; cv=none; b=kl/fiZtbjqodm2ogEcEnwsKS6f/5QrElGNGuoaTmuFvo/pt/vvMatFchrNXoWxNY+ypGjqkGhyacpnrpqEFiex0vP9c+hKtDT556TNqQBIR3dZKI1Y5SZ08n6N2ulCs3qUVlhPuzj4o1d7ts8oYhh7/0UaXsj8zHfKbVH9x9gSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788559834; c=relaxed/simple;
	bh=bWeqkhySF5WbrJRjveyqTEARde+x343KALJoN87dpww=;
	h=To:Subject:From:Message-Id:Date; b=TJRnrdJ8t2W/1ecERSaEb3UYnRS1aAazsW2zPXK3Kixj1uaVz4DLM/BsxeBFmkagiwxXgynSFDre3dj8si7EQcvTUp9C1uA9c0BC6xvwEKE1Dgxqtxe6zbXT1gcc0ozeur+S+EEzilQmZtbgmXT3QmkCo7+zoNHXwvGJWj5YTmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/S7eh3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/S7eh3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C8FC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788559833;
	bh=bWeqkhySF5WbrJRjveyqTEARde+x343KALJoN87dpww=;
	h=To:Subject:From:Date:From;
	b=j/S7eh3g19kltfoXrbKd6PD02veToK9HQKNY8kcHGYlhncbDOFc0aBd/rvgzeUndO
	 iFnenhJoJLLDTSmei+m+nRbILsCGrvomETr2j/1Zbvrq+KqRKpy2glDUrZi3Ol+g6k
	 8ntnlpoZkAiFtiPga22nYXrx1psgJc42t+MyCKY49AXEtijYSM5unv0hyOw3rfeRAq
	 Y9oXM/LgL30TGQokrsONni/4ufB/08KZksc14X3xHZNxiRzArd9gG42jtVI1VxhXWS
	 +7xU7V8vor2+RnFsnm51GxEzsV1+L/UmAKHYRRq+q9NQtcqpnq4lvSocGR3X1EgYn6
	 vzXTwDzF/H33g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAF5C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855983370.10459.14932641815181840963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ea194a3e0e7edf465172adbf604d82a0bd2ec8333393d4460315208b0a3e3e
Date: Fri, 04 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788559833
