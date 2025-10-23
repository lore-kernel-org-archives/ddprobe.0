Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1006A1F5827
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761256794; cv=none; b=ijO9/vhIbkxPH7784lZKtJ9QdaKsr2nH53nLAZ2cxKao5CsWJhKItLN4o8L+bjskNwrLg6U4oUKi6KcCwawkiCI+vGuptPjZBry0YzD8//oYUv7wImDaxOP4Xgjml+SV4zXlCPOUtPCc4Qg3Pf9ik2zh7XLC7OamKe2HCMg7bNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761256794; c=relaxed/simple;
	bh=8JY7rfqOX6KQrLpK54cMoiu5fPVihhkLika7jlZWDpg=;
	h=To:Subject:From:Message-Id:Date; b=SBnT7PHjnSTsoCEbP1HLoFdFczGRWbFJBnIZaRiRAi0Cq+99flkKU/BhKtzp5qfspIdMFLzDgB6/4QnQoZVM6KJ215MHENisczV4o/f53rBnf1nY5AS8mDt12CunVarUeFng5WsaxfEFCTGfjE67bESQDNoib6wRhYFidhcGap8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8j/Q/1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8j/Q/1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAD7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761256793;
	bh=8JY7rfqOX6KQrLpK54cMoiu5fPVihhkLika7jlZWDpg=;
	h=To:Subject:From:Date:From;
	b=M8j/Q/1G3pJLsB+eJIc+YieFW6/H+4O9EveFUiZBvIyfVuTnuRvXIqsmelMo+QDdO
	 3Dx6Axpdp1bXE3UHGvQQfUzFGsn9+b6iv8AVrz3it8te5Zv4kcMh0j8WnU0A+QKs63
	 worzb8OHhkm7/YD3QzIb7b4Ztp+TqDnvkhGv4LZOkz016I/LA69gZumnwlNqsdcy5p
	 oarlO3aCOC9o3JqybgXvNmpUmv5o4ccWjT1X+DHZi4iNv48gHxLug3ShSsYg6QRBTh
	 41yX6XTDLZPn4K7l2qIs946NCrd/Rbgh15RUeaYE1uxQpBQaYrLEc6Xxsmq6AtjcpO
	 U+aZMJCrOa/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE1CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125679359.2997.2364569403845717098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a613d4dafa8ef8e74d278093f22fbc5df003a64e90043cfa7eb4ab74fab51ad
Date: Thu, 23 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761256793
