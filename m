Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581F6170829
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716921863; cv=none; b=AQuyExlBMkJ+SQf6skMhzB+4746zb71STWj/lty86V6s+h+PJTqatnJNXamWK3UuE1DQqpTnJH+zcZAvCwW8r0AqpemT2gfQ3+CJTu2vijOlQrhrvha25d1A6qULI7Zecb+p3oRWH6SoNcdbaD/VkMIq4ODQrvFiORT6u9griTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716921863; c=relaxed/simple;
	bh=6BSl7VkdEVYW8bMdkT5E+C/tjcR4tZt659/IgB321hE=;
	h=To:Subject:From:Message-Id:Date; b=s/dhhR27BhJUaMleeNGL14RcpbEZAFNXkEsMmUAyiwTH+o+ZlbJBXneQC2cDHkQ1Iu1gd3bA5RFMCzePPDYgjsW219QkMxoYMsJoSftf40aJfns2oERlFoYZ4utHeFNo3hHy0jtVjjT4FeD+pfzVCWVMOdW038ACNE60xFMDcN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emTL54eb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emTL54eb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD4CC32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716921862;
	bh=6BSl7VkdEVYW8bMdkT5E+C/tjcR4tZt659/IgB321hE=;
	h=To:Subject:From:Date:From;
	b=emTL54ebw08kt463de6sRxYVaASjtU8x/4ELWcujdQVBA3fri69t3RIeEKvXhVGkR
	 jLy+eLnoMafNRFpW0ruPhOcbE+o/kdNov6wINf93T17UnI/wgf1daVkmaQmvCbOJTD
	 iYe+WA5nhYbW9HzmvVmJN2oWtatt3pmKw2k2sqd6hYihHhHSRz1F1eULSG3xGvbTrQ
	 QhI5K1Y63uZxErMR1eJ3fDaaFHA8lZ4H+HqJ1GsDdav0q6rAha/9z2566lcGQisjwe
	 tDLhBzYW3tPHRbd+0/Su4VUJBkrpM3Z/2kiio6+nIYto55JkBjk89KT/Qj8lHZzF90
	 C7qHhZgZ9H6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9433C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692186280.7994.15583298738725121209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cac4e29c23815d4f1afda74e1f8c345538b23978cca4a61cda15c20761ba9e3
Date: Tue, 28 May 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716921862
