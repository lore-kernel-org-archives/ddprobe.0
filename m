Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1398C364926
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773040494; cv=none; b=UBovXNSmUGXjzcBfxmJpd7TSSIzd4zf2ZoAH0wN8KM8sVmuzSCvHGm31oGrR1iHV0gXGnAaQ2cL7YlJzWWmtr2XZ9ZtHZ3XXkfgg/3cAShcn/y2BRcdVvc+gNA2TwFZy/itllqvgtRb5bJqLs1FeoQd5pyXiFmClwqeoZteCmZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773040494; c=relaxed/simple;
	bh=sdT06s44GSM54yMaG0bZ8feTtLK5XwlBOueLJDSoFQg=;
	h=To:Subject:From:Message-Id:Date; b=pUn+MLLfSh0acPQ/jn64At7BYEx79sFj6S585zh3aVVvxLJ4awmQ0NEbbYu/whvDIN+1KwNBB1VFg8j8ysEocU4W9dbXz/sOU2SIDwH6fJAoTbB+5G5VgJoB1kapFVbbnSDJwu64Gb84BXAXxAtXI+TJe7smCbzYZ23vbLfwCWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTQ7GNua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTQ7GNua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF94DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773040493;
	bh=sdT06s44GSM54yMaG0bZ8feTtLK5XwlBOueLJDSoFQg=;
	h=To:Subject:From:Date:From;
	b=iTQ7GNua9KS4SIEBG2kke4adf8/61h1/5BJEe2VXsgpUv2oxP1zFtLh9nemhqGSFO
	 jGtMecJU9bR1iovc/JTkgsYsofEhus4mQzBR+UH1gXr0g1ssKKAkVVtVfIx7MojtMQ
	 +fUuVgZLtB4F2KZn+xnBuO9FVoTrpsc2sACyFM3ubbFZAgQRHf6VE5miV21lp4tAbF
	 VBC2rpXD5U++GfM+Y+tD2G/Nnb20JklCJ2ahHwxhlxaWU4LLiYl2s0bIO/PS+c1fKd
	 ZjFfyMtRBEmnureay/eZF5vbmNzvZnu4FI1K+SETrGxQ/fMFIto7MJhi18nHClkUZx
	 pFPP/gPkFlvTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF83EF36F4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304049362.18980.8738920812909438783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94099f3fb2f32a3d44f2cc1a1ac99a495bf2d00d3215e03e98de572685b19ac2
Date: Mon, 09 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773040493
