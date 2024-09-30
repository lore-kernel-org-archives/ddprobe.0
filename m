Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D91919D8A3
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727726154; cv=none; b=Qj6HWuLvNCqNAAgPJbcn2rytpiqwFEmWL+isJ8SxvTIvX8NFwp2aGzh/1GSErcVs4BF2dCllNqDPKDBV0NrdM9zdsdw6ny3dGpCJVfPAG2h5hA+UbVxTXuqLgi0KkoUgP83PCB/71zL1W3kFKQNATjjtyzX0N8dvFZsd3B8bMP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727726154; c=relaxed/simple;
	bh=1Osdw3+SOZHgPeMLlkG/We1eOskeCSqJbOtH3L9DEpI=;
	h=To:Subject:From:Message-Id:Date; b=cVdeNmWQbqNb0/f6aSh6EINH0kL9bXS3xY/c0+zbnSWnwjebcpHwc2R2ubRqNsITxAkjde6qbkXlfIXgquGXUP5Nq2i0QQGeImxqYlqrT97RnqMei3GhnlQ+nBuWQGDMwWurSvHn+ZGD7LgJFi5HrGIFpnJ21EX/drB2X5eMf64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJXjXNXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJXjXNXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0BAC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727726153;
	bh=1Osdw3+SOZHgPeMLlkG/We1eOskeCSqJbOtH3L9DEpI=;
	h=To:Subject:From:Date:From;
	b=UJXjXNXGZsHeT8AQ0OAusPI6PivDEA++86iHa6x+gNIRjeRiCK669czMiUQQa0iBS
	 qx611xvdEKRm1CVmTNMKR8wuzTRO6B9TkW0vRJuZ/omDv0PL8MaIXX2IePwfK4Q4NS
	 nk3hzaekj9WaX2//dlxj/XVEXjTiNflj+RHsvdiX4VUM2nWrCOClDBHRzOdWRQWChe
	 hSSL54sRIxFGOvSbiU5oqk/sFd4CDrScKBP0/4/iq2jsKTM2s4hNaTsgdVVt1FsYRb
	 nPTbc72dwmipWPx6tgm1pjy/nTYoKCs4gkIPt1ZPIK9Nbu22tD/HOraODvralaWR4Y
	 orO/PTaINC73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B186CDD1D6
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772615362.30925.9066441207392954838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fba2ab33544c92a969d6c04660e9bd8a8586b770161a0f4accce1acc56b1255
Date: Mon, 30 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727726153
