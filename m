Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97DB156661
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765492374; cv=none; b=WDXrDrDcoB22TrJJc09jCvrvCcyC1dYNaTxJ28VVPrGv15Ln3Dui6wAU3n0ERjcVP4LJFIbmQ0PbCY7kNtbEqT1HbFgmHfKtP27Jk+XZRUQPnQzIw3AvwZCZsu3VF4kaxHYlh/tt60U5OV0dIqoS9kOqoT00SPIzFsK8EMa92UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765492374; c=relaxed/simple;
	bh=ex4OByEMP5FPA1lx/eUXfG87LOR5ASjGcp8O4TYAK9s=;
	h=To:Subject:From:Message-Id:Date; b=VrNeinypoeb+Gl5AFI5dkQgR4YymTAzDa7nB6XnZyMBxxF73bwOmp3t0a85bO+4yaD/seiPOvypUc0b7lEDhTzSnm3lcEQ+AtpNtI73yg4vwecO3+3unY5dYqGCZn0IjbHkiHUhMtTQK+rZ5V1EnJV99jBIvvQsHVIGft8ae2pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1iHolRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1iHolRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3056C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765492373;
	bh=ex4OByEMP5FPA1lx/eUXfG87LOR5ASjGcp8O4TYAK9s=;
	h=To:Subject:From:Date:From;
	b=I1iHolRJ0Hw3Tu7BgoNQ5gv2mW8APNsCF3obx8uoZQCqq0/v3uaUCiGM0h44V49l2
	 xS30ylDWEQOyUUGf5lKtvQF0f1OIJYdg4oesitK2yuwZa4J8erOiKgB93Om13/qpQW
	 jEfOPpUIOfbDGhaHxb2eP1jpEwWURNYMJd6CUyw+K4z748iobdILZZ8BfPASCrAsAJ
	 nvqRqIPsFr2IgVN1PVMcFeixLU4NuCieADW+ac9mvVdanZyO/n0u6uhfYxzCfwu7eL
	 4FsADv25toQXbalQ4ZAysYfLZK+TMGRVq/iGYzoYJKum1wgBDHFbDFtxZcug46itSO
	 iuoRWBRuNQKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF83D4335B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549237360.5822.257219245089310342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3e26fcc22c090eee454c219066ca38ecdc015096d5f86fc6654465bbf04804
Date: Thu, 11 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765492373
