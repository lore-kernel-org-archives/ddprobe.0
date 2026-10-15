Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5A33EEAD8
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792042234; cv=none; b=MiySBvbf5qTdrWcrUgityIDTnUMWaQtWbnSy51iN4YCXgBwSz0dbrQPQ9uKAc5ilgV1XsH6Dm/YurGyGbWtim4ZjT9Ro1r24XqI6EEZMbamXOEMloiaEDo7DTsKrNdM+CUvvkn/3enRVAl7lYMDZkcbnyLNikNCsh4kx6WBjR68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792042234; c=relaxed/simple;
	bh=lkM/5BYgwaTJu3taaxtEj0DqDywqksCmuqZB8I67Zr8=;
	h=To:Subject:From:Message-Id:Date; b=h6yZJ519FHrc9OHdFPozCzq8ouVtXLZgdmC3tDlCQ+Qtzp2QMRT84MdK/wbMvmF6oyLiR81BCZLIHiEzjmRR6zrAOqc2w6hA6alqH6H4WrKdkHwvSIFx/UU6h2nCcDUzw0Oewd1whtpKGgetbJa7IVcCt9OCCSGOWF8Jo2SCl3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxdEwV9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxdEwV9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F67C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792042233;
	bh=lkM/5BYgwaTJu3taaxtEj0DqDywqksCmuqZB8I67Zr8=;
	h=To:Subject:From:Date:From;
	b=RxdEwV9GrHp0mqslt7fbefDUqPjlL1brY+qv9na1DPAgTZfETkYQEadJczEnq9jA+
	 cDPl+PBA38h7ERqP8IeIaDnd80AHpQPU4LNN+Yvd5F9njxOKnuKlORJBScKAtoyaWA
	 Usnjpjj7qH8ZrD/rEOlf4ymdLiVtuyudOhoVsR70MKCoRKd4yeXv+6enJ+XIGofH2l
	 c4miARR54UgpP/L5jgeTsO55PyfywFIL++9SoXbPZN5/aI4Rg5kOvhV3h9fkMfWCIG
	 x5Djik7MfX03DHKCMdKnSiCgGzdWfzUeeJoajIqKCTfDTKZz9OizAIgL96EzFw81YI
	 xxrxZ25J4Hr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4ED0CC6B2E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204223370.10785.14856415583081687114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a943cc7bba8feeae38487b8fdaa51274a3365aec673f7725820d76a098ca31
Date: Thu, 15 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792042233
