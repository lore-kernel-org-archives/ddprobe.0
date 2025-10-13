Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CA02ECEAB
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760321394; cv=none; b=FIM/yQu6D5gxF6UTeAc5Aqt8g5ur/CUQmg2TbnsuPfzgD7eIf9vSVIID7RCUoiZOZwsNAAb+q66z8CysXJiO0oTvZuPgUdL6GesLFqoBQuF71tizkF2QdmLdeENnecNP2cP6X7bLHnLbQavGTZA9KVTkDDZ0FmgsCxQrq0F/MZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760321394; c=relaxed/simple;
	bh=y6PcoShQi/MXlpftkczohjoGYKATD+XJv8X1Tzt6Oqo=;
	h=To:Subject:From:Message-Id:Date; b=eWO7ZKDmR39goEr5KDeDitmuS8E53iUNvWi6m35RN74QTW1MPra1TE5yixSAZ5GD8xZsxRCyNFaNu6IaOPZ/wK0dntgrgun8xjj8gUQOUZAMgnLvE3LCbX3CkDZSDRgHD27B7LUp6qIXb6nIA8RrRLd7lYphMVCY0eXxVPoCVFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgUpcx4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgUpcx4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A53C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760321393;
	bh=y6PcoShQi/MXlpftkczohjoGYKATD+XJv8X1Tzt6Oqo=;
	h=To:Subject:From:Date:From;
	b=dgUpcx4oDYnzMNBRKNMnFim4V9fCuPoh7eZ75Pip0RGA28fdU2AGv/ZdqSBLeZfOY
	 xPIG61XTQl3B8LLlTIvLA1yr1nEZ/SWD8Z/pFJerSqjX5KTwA9Mbk6XbxBPtpxSEbi
	 K5NlFgoohdu7xJ6UOL6GSeOcVIgtnXxXOigWas6BFU+ZvB1yFGa9bRg5Ar7lUhNRYA
	 O412GK1BHHZ2LmySa+CUhrixGD3FBimnWOabM4UL2MnaZ10Z9pu1VUU0r8k8kDvBvg
	 EbtC8eWaPMnYql7lTYSe0zIynezs5k0QDpZAzJsnR8aOhAkeMuMSPyrnjANu4KWHCx
	 5JtGf97FyiCow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F69CCD187
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032139358.26313.16053587709737686216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bf51de7628e9abcf6c3602aef6ecd5a6a8056527d03ee5d0411cf16f2bd93d
Date: Mon, 13 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760321393
