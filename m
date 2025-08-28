Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA5B1E0E08
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756363796; cv=none; b=rANgfWBjEhpNKW+oi8uGxiVjaX9vZpC7mjuR6UKuH3rz5rOqmo6VhTNFfFpqususIQYJexnL6inft0VSrAKo+O3PTCHylavBC2gjAQW2a63cqP/oNe7XOcgwrtrL7euhoXomSuNGMHcmVD+yBQe1PHDte5k9SiYCfVvKT+iTHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756363796; c=relaxed/simple;
	bh=qvpowp8j+HbJgN9NVNh3F3Xg5A85zjwcF3j3MgIxLi8=;
	h=To:Subject:From:Message-Id:Date; b=AhZ+Conh1L/rA+EBW1W9a3IE2s+kVrFcrLcdCnfHwl7CxXbhM6UiN1F3Ui6lKhqEBN+2iTrzv+gpvLIoI9pSVNTr0cNvfvL9NbpCiL2imsVMcvKsvT4qJSvxT1YcZzYJ9UJ8GP1XNUs9n/xAUnubm4WjO83bY/A2Dqk0hoJRz0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUAv3ZrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUAv3ZrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C286C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756363793;
	bh=qvpowp8j+HbJgN9NVNh3F3Xg5A85zjwcF3j3MgIxLi8=;
	h=To:Subject:From:Date:From;
	b=YUAv3ZrLaJyl0GOl//MGgMzt1Gi4PQIJqLLpwgVQwW2bgmvd6S+PFwt+4Ykc7Orcx
	 n4GOG+bry8IMfyA9Qu4sNdO2mYt+MIhKsAFSbWHs3Aj97j1j2YI/96sohBEtqj/Sz9
	 aIjPFqlURV4urUVuiRg1f9qR5Gj6wwbyrVoPaYvZtaEOER5Ya3V46juKCRGvv7cHXM
	 bQCYJQFiiumD63ay2TiFWIf0qR84jM0aqg0PvIYgY/076DTEAW/ptf+AKN8ccUfIXF
	 3MXusMMu3EAcpYe2HDjRHurOWPmRFCr0JgQVrY9Gtc6KvkOJ6M7iUdZVBRU08PlN1c
	 NrQ//GSYIDyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7DCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636379357.15167.16047076927589606588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198cbe9b1fe4a975a20a0fa695960c8199c4e38985a4c0b118909008873a9c2a
Date: Thu, 28 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756363793
