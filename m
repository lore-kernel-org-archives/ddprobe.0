Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF36225415
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762131594; cv=none; b=IT2ep5nwNxGCJjXWD/Z2/0PryhzhG38TylEChnjB2a4a62nLT3+bJQRuF/pqV4SslNBD+E+eRvGT9pZTHEB5Z0hF1EPbwQC9D2TNaZWLaGxYILtEMpmKTfONJk/sBiwsA368JgWZEqIJNKcfpzb5lXmizCwkCYa1ZYslaera3j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762131594; c=relaxed/simple;
	bh=sPBs09P+faa+AOxIs3JPMw3++C8SCI0qJFnvMcC6PZU=;
	h=To:Subject:From:Message-Id:Date; b=DO0RQ0LnykOP95XgNmNEfSiLFCoRYmfujtYbwJ9fLwwHOFrHffeJ5B8BImzM4g0rjAmXlYI1gbJTtpdBAG8f6T6ccH9Vd1xWg/XMkleVXSXRu1lD3axQBLxB2b0La49ct/dJJ7bcXrdrRmRRM4bigb3DMN5+9SLBS3sWRBXWYvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab2EehTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab2EehTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0563C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762131593;
	bh=sPBs09P+faa+AOxIs3JPMw3++C8SCI0qJFnvMcC6PZU=;
	h=To:Subject:From:Date:From;
	b=ab2EehTH6cGPbywKF8rRdkE8sC3sr1X8LIVi8i9I8jvROEnmMl/fPLCRXp7RP56jg
	 Iokwp8SUB75h1i4ON7SECPpUiYBsZ5d/hYAXcYUN8Ecgr4Hf2ZdQW/TxUtl1uj1VtX
	 cnWOxX8dDOkp4bocW6+RTVTsKUUI6I+Lcpj0MXyhWEe5Gep5gegck3y/iAHR49yKP8
	 ZaU+M4dKEUG8FYF+ldS3xCYiU8pbK/rnpViDjONEWZukdi65TLnmuD18krQMaN9+p8
	 jSZssWxJPQrOdQupW0r+yiMaQuMUI+labPRSYZg86eIVfX9sGDV0SX8bjYFrkCUOli
	 WHpN7DobHLCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90292CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213159358.24019.7172798487676924993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6e1faad4955edc5cec35342ee9737ed169b586e168435293725bbb40558cf7
Date: Mon, 03 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762131593
