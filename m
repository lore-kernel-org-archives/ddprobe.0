Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1784E248F74
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749581394; cv=none; b=ujST1Kq9f+PNrAaLxBKTz66nLwGmuL9rnskRJSpOxhyt2q0gs9Bk/n7voki6D4EMLQG+Rjm66syCGsoeu8nidR2YPqCBiyKUJVSQk/cD6vvsp9r2Uur4L3weWro+DW93EUqa3gdtVZ/RzCLqlSkKYYMik/f33t5l2+IUS4xkifo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749581394; c=relaxed/simple;
	bh=uvaR/RlwHV5zHCHkexPUbQpiziGGSVcHHx7FrUpOp84=;
	h=To:Subject:From:Message-Id:Date; b=K+TvnTYe66op9iKlouKws8UmRMff/44XkujWr1ueZEbo/ue6yCFum+NvQd6z6+hEiuNFf4btLjV05tlBH8YSJg8gh6DQvQZcY/onaYnKfTOgrydjIG+7/CqMyyym4ZgEBr3x2FtfFNNllIy6LTGeloyNlZ77AonSe/8YaENRZdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/9eRAof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/9eRAof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DBC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749581393;
	bh=uvaR/RlwHV5zHCHkexPUbQpiziGGSVcHHx7FrUpOp84=;
	h=To:Subject:From:Date:From;
	b=Y/9eRAofJSF16TJx6Ti10vJh8+Nx86d0WrjtmgCsTjtdCwKMud/0Zk5ol8yYbM9JB
	 pUrbXv7NAD17MRjurHwM3AwZDMSojNoBljERmcgCIl8lG5ERbZ1cuL75ogtli4qZaE
	 231+z2wdS8S437Ed/LX1sqCSXRmljBLzLFAdt92LtJmpmGWKno6HIOlSnHW2C5+7Py
	 WVhjae9JAR8006oNCeAYNF2zlCw+nUfqxLLLQFUxuw5rDQJ0WdufiNZo1jLgWVgjjL
	 5lYwRszYS5FMV0Sj5aTkSpvXTl9gPFi8tFzeG7Xe+y4Xj+xx/gCdQGFwmgUKOi+XMw
	 KfbCaSiLAzkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AACC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958139358.26393.8939194392042849497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb9e3f6627d05eb7175e806e0dac101f052c4823473a37525e4e314a06821bd
Date: Tue, 10 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749581393
