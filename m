Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4757A86344
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748889595; cv=none; b=B4nMdqp4mDav+fh3wpTd4nuJ4lu2gDt3hFP2Ofu+hdN9dswhy28o3iDA9LEPkdaY/jdimSLH0fczUZvAMs2Be++5Grc5AUHXNH+jc+0XTpo8IXBbbzsHh7qvkbadwxs2BFe4T8ehFpj1AiJEV4vWTUNMrpTwteyl1o6Mc7GeJ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748889595; c=relaxed/simple;
	bh=jVWsEDuV2u6EOW5Aap9hlHIj+9rCdQKQ3trQPHFHUeU=;
	h=To:Subject:From:Message-Id:Date; b=IExoglur/cQkPhkeiJShPMDEDzhQefOotD/KVpnLJgryxGiohO7JQpLhJyIpNer9Lev0/Cq4J8X82sJbXoWePTBxdH7mFpDBAVGAfv6vWKimnPNv0tgfm0pCEGAa1MmIRplhkDNtJq8kwPzGH8G/RblwieFybtU1nWMMgW5xtqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IH076vRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IH076vRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748889593;
	bh=jVWsEDuV2u6EOW5Aap9hlHIj+9rCdQKQ3trQPHFHUeU=;
	h=To:Subject:From:Date:From;
	b=IH076vRIfRJftZLUnGYGVHPbKS7K4kvYWP95pj7kLlphUpGjkWgDYMnJAPQWuRKwV
	 Lcv0af8W9MAVOeT9L/qAlCX4aKzSwvEskFAE9hPsyhiXyzzHuTFVlwmGUAgncubgVD
	 tgzJtnb2xC3hnPUhPeQ0IUmJ4ZfF66V01LF+mXht8RZpJg2eCzVqfofef6hC/REIgw
	 iXzp9SNiNxtbx0yzV/LaKlgFvBhqhIySWmsVaoeju8DWghLauDGeLvtZkMa8a8QFdZ
	 RYHHUUK5Sm9+Lzc45VaDwWTvlRl65tgA+2fYo/cHyxhE78NdgvMgtmwMdF1XuuP67s
	 Tkd47Pi4qF1KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152BC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888959358.5591.4220662996855307208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362e5c21e337c49b5cbe0dafee9a9b58dc3379ef48a6d19cf18751784e569c03
Date: Mon, 02 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748889593
