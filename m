Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FF66311D
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713869423; cv=none; b=q6YtuiwN8OVwiuzMCGnyvZSoy8hmczh4i0JGmGUVlbbmZQh7eQcdNuyipH8/D1PlTEU0QkAIvqJzVA0q29khQhND/l0dDYH5cqlPQCOAcUVN+d/PsjSISHW55VBIf8775ZYEkH2aUpEHIKk31XpezBlRVptrOQAaax8lDlsY1Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713869423; c=relaxed/simple;
	bh=wtedGnyjKEVQvvvPZaY8r5buNPTsTwyvbokDg2iQtwM=;
	h=To:Subject:From:Message-Id:Date; b=FA8LPPYHDwjyQVdPY7r9XlsZ/c9+Aati8likvkEFFGTWDIp1n5fGBkypQfiamH2m6pPrHePAL8PFmUmEfhssZXNUUgpdSFU1L34uKZgNZc6Rot+Cif9U2meHZh0Xzb+xDjzDwwdhN7TRYDT+NssdhRVwS4eS3SNYUMhAwd58VxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM5geFwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM5geFwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68D2C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713869422;
	bh=wtedGnyjKEVQvvvPZaY8r5buNPTsTwyvbokDg2iQtwM=;
	h=To:Subject:From:Date:From;
	b=TM5geFwIDvXRlojT+3oc58B/CLh2EG1MlBzfy9TA49AlnAQTeiWPjMhiDu8my4ozP
	 pP/ouZFV0rfQrYJ5h0tjrybYmCPuhuugMoljMupzU2LX6iuESe98ExLfRApFCpeuEt
	 FEjlwjA5m5rDP/yufooijN5YDVPDZw1CmzbDd8FhYwllGXhepYPhumJ2kWPC+/LADU
	 L/5g1j60Y6KejpxeSrCMX7i+6FIQ8ULFCPpyC7hCFGb1ufC1JjL/dw1ZY2U3PsnDZV
	 qymuL/EbYMWKjUACxsM6UG7UcyZlCKARXW6JKXZqJNvybf70I/AR7rcAVDdhOM53G4
	 rsEErLSKFIWTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCA9C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386942283.5226.17681912031018526839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df53c4c6f88249ec3000470393bd68de0381a00d53f79713d7826193ae918cb
Date: Tue, 23 Apr 2024 10:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713869422
