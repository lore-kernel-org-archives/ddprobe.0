Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007E8762C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708444097; cv=none; b=XIRUzWsxi4rGyNvuUlRy3EK7uSvhbmivXbD2qsCmUMcfq7pJsV6L0hq40YsCnY31FXnvBQkQUQAjgYuIfRK8HxM3jAX3H9c5Zb2gs0o1dSMw+oohSr1Pv33ikvvfnsGkPlwepqiyWVup8U2eCyqO2srIvLaqsagxU+fjM75OUUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708444097; c=relaxed/simple;
	bh=e+I4+maE4KqTnfGbZdd/FStVxEcduPi6luPxH2su/Fg=;
	h=To:Subject:From:Message-Id:Date; b=S0Ap4R1re4r5qzAqIuk1AQt0WFlbiZowLwREuw159a/H7VV95FNVk+qiVGR0caXIok75Q12/Pv3FIER25ElUXxYerPWAysU9Y90HQfkNGNXSNb6aX+a6YzGHqUgPi3lN1WpRokmxmwfB0CWRqW3tMHQ+ZzvulQkdYejYrREKouk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcXf4DRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcXf4DRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D92C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708444096;
	bh=e+I4+maE4KqTnfGbZdd/FStVxEcduPi6luPxH2su/Fg=;
	h=To:Subject:From:Date:From;
	b=HcXf4DRh/KBAfZ4T3TDNXq/iVGsagEMQQDltqjeuDLN7fgaNeXIq4+vMQRfeNjm0t
	 3geFzKEILdGWlltNwvZDzUG4djBjPyWsRfjkfS/NV4y4G+m8pGsJyTwxL93DFNoSPd
	 97M8XdyciXjSgVAbRfUdIkZUhyY8TnC9zPPaTAuTbrV7D16fYyY8cvWbfIk94YFLfx
	 DLnv4gTKbnpq4hGgUKUiMtA17kO16Fac8srxrtQwrPkNW3PJwovH+k7tSejmCptx5S
	 xni8pgE3r6qIcQXH7PHQ3GP8vCzE/PpqQdtX9LwHIkrsHBnJvLnqjf+KMgu+lIrl7o
	 u1Jjgp/QNt7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B03AC48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170844409642.14487.10743145355739542072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a438d7bd7cf38022c676a54cffb0a0f2a01c719906b5666afabdaeaf545a0ead
Date: Tue, 20 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708444096
