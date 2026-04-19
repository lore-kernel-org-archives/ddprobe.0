Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B235158535
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776559654; cv=none; b=ujSH6Y821BJLh8u9TqW/Yqb2DBRcZ5EKSoafpmHpjAbgYmwJbBtppLKy95QKvmlQh0Pi9rG4xt/ZWBR28K4+uCjBce38jZajEndVH2sXLH5Gq7AYhfBUXct1JQKjQKJw6fnQMyBK38PJLQlix0kz53xU/+87BKQblsazfD/6eMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776559654; c=relaxed/simple;
	bh=nwlSsLJArvM62qowFlhtlAR5BV4C3DlZYvyser+xXFg=;
	h=To:Subject:From:Message-Id:Date; b=rFDeO3rFQe21pb6z59q2lNabYAbfHw+p4EVWKk/0GjhfJc/XvMc+jmkQkR9mSBmm1ziEDh49ESVen7MEjgh0sChdbHQSQvTCn3K6MyYHvS13TXNV1SfaugLszxgVFHxFISLDK/8FLssSi4e/dHsfrmu3w4R5UF0nkggAJI77STI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vwbv/frk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vwbv/frk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA918C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776559653;
	bh=nwlSsLJArvM62qowFlhtlAR5BV4C3DlZYvyser+xXFg=;
	h=To:Subject:From:Date:From;
	b=Vwbv/frkiAP7r9bKBYGo8OUSLMaFd+usaSYIKmm5SlhcGW+p4epyzSiUM0WJjmj0t
	 IF5zqJyPWbvEVdnNVRIyFhRxE32OpcbcbUeMf7Pu76C+Ah63gF1NhDiY87+7ObE6Nu
	 G29cp5CTPkrvV2FbUGPvVq1Rnf/HR14wgzo1HpNrjKlL+vFAro5Pb4NSFQ+NPJGjRE
	 t6NTNENgCDwAgI0Fa/ZaknLw9RvQdZw6NgUKhcnrqEiX3jAxuRiRBt9cN9wbhHsR2E
	 P7ie2ylRbGB8C9x5feBHFCCLKt8c93OJxrXdCt01iOzvFlf6pbjavm4suRZK5513ij
	 PB9MYhe8smQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EFFF99C95
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655965368.31392.2089463499568144525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9670cb25e4a108a382c6bd15ea8e1f8a9afd8018d97b74f7ffae96eb8846c582
Date: Sun, 19 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776559653
