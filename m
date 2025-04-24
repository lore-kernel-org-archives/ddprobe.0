Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46382A93D
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745536794; cv=none; b=VUSVptOkJdLWMIPBi+bRxifCHAKgBPndcK8LnRDsDT9ROVVnY3tAPrxfnaufAv9hNbPMNNEa8Onctg+qiaST2nAgViRo0RgPiR8DD/e/gYAIDauCUaoosW6khSEv1kbFfRrnbtDFVA7NR7F9CYJB9nexdpQWRHiKWZ/PXoS0BhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745536794; c=relaxed/simple;
	bh=nQtyyguw4qBj1dvqL/u7ZS1fbEjapjjvzKqRV7+jSXY=;
	h=To:Subject:From:Message-Id:Date; b=PRNm3ar82CmzmJagSz1iHjnzxENrVCqe9KFQ3Nx3VWY36ejY0nzj6JS/bo9bNqdCPE2gJRup/Jv1l6rX4Ydtz70Ub8klWyIOh898TzWXctVq6V+E01wVzpX50lH1Qn5v0JPXM9RPEVKjp6TAT9WSsEQ2KRt25oHfLYhaIilTxak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZq38IZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZq38IZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745536793;
	bh=nQtyyguw4qBj1dvqL/u7ZS1fbEjapjjvzKqRV7+jSXY=;
	h=To:Subject:From:Date:From;
	b=sZq38IZ9YifziSN7bPpW7ucz4HLHr2meUiGrmsTN3wFTwF+buHtlYN3TKguKyl7Wb
	 fZoUAimViyxrD1JyEKb16ZCb8nR8d01QlQRaQs/pestCbVsutG/NxL0AcVwiS4S0Zp
	 u8aYjmWqVLMDwQhhL5ZSPg+KYpYHkE6iNbDZJvJxKWfBwvZ/0fSktYJohHfhdQH0eW
	 mHtCQeDL8Nf6UvDDc4BNie+TG0tw5BbWGk4nIT7JBW8hKxDY1CikxaT+xxDY94gBYX
	 Z0i7p2Xc2mrEYMLTBj0FvOfBE3ZimBPJkwjOAMqE0vcAABiWGgjb0Sp0wkASSurnRv
	 PXkKZ/a6flFNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F7C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553679357.2187.15693653362781834985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a01547fbb5f40a1b5897d9687c018b0749ac425e0c8a6dda0154be68dfcc3a3
Date: Thu, 24 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745536793
