Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAED1E7C34
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769544234; cv=none; b=uzlW67Vm5vBJOYY9H0oDbI4DpTZZFjy/2PBfXwHyqYnzLOyIeqqo/SYpceTO8RO1q+UfPqivnrnXQR2Iztv1X9n7HMsL23o8a+5wxW+FX2CbaqZ3MoCtC9GHu394GB7zx5F9Cgq4DVYbjZST6wtJasD/EPPQ0gnUgsSiSuU+NnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769544234; c=relaxed/simple;
	bh=Z9Z42HvhEar6Q5vNYhJJmnpP4/cSixTySlYs32xD3uE=;
	h=To:Subject:From:Message-Id:Date; b=VzJaXQ+7L/7cmC4bCh95ZDppfIp0Gc/Lq4AkYVtBTePNzjll0Ckn9vAwqtcbbDSaqrUAZJ5HIgnsyrRH28GvXSMTBnJ5o0VikA3KfM031RtSF/qtV1b8zSXAX4OIsKG+l7T+rZO125jtAjNyLtS1vtTCTkr+csmw6tgxoXj5AsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYWeIqfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYWeIqfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC39C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769544233;
	bh=Z9Z42HvhEar6Q5vNYhJJmnpP4/cSixTySlYs32xD3uE=;
	h=To:Subject:From:Date:From;
	b=MYWeIqfh62djlD1VP7gNCC+lIbqtWAcWpvEWRWW1w+xGRwXl/NTSdP8/gKb1geqIl
	 bahYVuI6Ub1tT0yW8yiPOuSHzyCGXKEqRNqYgq60rcYBXOAK5z22PzXv8AO+kQIDl/
	 ec/RKjy7A48Enirs1TkcnHFj4At86F59Ps7iCMIO61nzgU2aOZhlJZlT+YI1kJAaTE
	 B+pPJtss3b0JTJpmK9j4+PaVj8DICebsZuLPUonG4KBC6yJDhzsC8rOz5v6LV1DluE
	 FPJGDMUFnyz/fkKpqyEg+Mj2+S8sgt9uBhjBuzzZvzQlRQn/Tjh6HJBV4jzn2Lw4lT
	 GdE3dWw7q839A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94670D2FEDC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954423359.32323.13172985549411570821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590a587b0c0a9acddb580b6d55decbc3af490a6a3eaf01a5ccc950b18a061d29
Date: Tue, 27 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769544233
