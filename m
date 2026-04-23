Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC71A7264
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776925654; cv=none; b=m4ZJMdEw+SKuz3Z22bFMVFRHKMpNLYlhCY+nNdkZJGSCD1U7y7HaZbHuqcpfG3UNY1OKOYebqyxfL1AayAqEko1ZpnhmYTDhOGuIzYBEb6ZOD9KgdWPFoqea+VbvUb3gI6KNmyPoSehPDgEjERG3ONIj1sDP4tkdjkILyd1Lj5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776925654; c=relaxed/simple;
	bh=l4hy7mu5EDZS/ESh0Rs1LN0eUE2uak4qJx/8pWAH26I=;
	h=To:Subject:From:Message-Id:Date; b=uWilHwEceZFRxL0GXIdpgmL5gaCrTkcwpb+qJNDN7woBfqTY528FCfTOmSw6bInz/l5JgXH5Nc+sC26oqs3MrF03mnA2ZcDQDZWgcGPClztYfuSTV12LlkzFr5YyioQJkkj9ehaVDj+NQYWfSR47SIOOvh4kRsMphMXnR4iWLYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKnKRm3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKnKRm3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12D3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776925653;
	bh=l4hy7mu5EDZS/ESh0Rs1LN0eUE2uak4qJx/8pWAH26I=;
	h=To:Subject:From:Date:From;
	b=XKnKRm3+gQY9MNMbiSxyflP8AVTElGIuDfLuoskD85IY3n4UQrCihAkwwSqvJsvlF
	 Sk+jH93wVQ+Lp69ObJUXwssPQp5mx6GOu3nHJs9TR12T/W6MnK5dUZqYlsdy1WVC6U
	 QTju4gKn7O5QND/NsSKoHm+XPe8lQ9ftllrjovJ8AiTGgAR57mbDZWTSREQP1v1OiB
	 RpdHR8kQsr9PUCjha//E1DLwtuyT17NdWOMfS7yy5XXQVmWTGrc/O9gB/8sa5vi2jc
	 aOzZnVzMnyDd4+34Z/u+7CO0fMM0Lzy8sROzJ72kr5GTcwBoLHSUcgPBu67vGL/qSx
	 P/+WDcK5QaqBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A3DFAD41B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692565368.13747.5158836279654386504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dec5a5cb06aa228b287e59a9bb72ec1a5c3a8f92ea7e92724b17f0c9c820f19
Date: Thu, 23 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776925653
