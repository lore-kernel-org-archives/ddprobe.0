Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF7419539F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761491395; cv=none; b=rkHM1h7LAZPL+omZ6jckjDvZ00uIZ8e/CKSL5mOcsRpfGIHuIONW52XSfPive2MstJRA1eiK/V6/hLkjuP37XF/Ifj96kDKnoPAX8Sg1jQmq84e9chF5GJk2D+fDmXv4VQXz6BTlYP1bRzo1Y1mmGAkfQz9OGyC8BkGADByenHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761491395; c=relaxed/simple;
	bh=zXZVO77CfDzUfeYueqFTPl24lg2eQP3iXZAs7vkRu/E=;
	h=To:Subject:From:Message-Id:Date; b=W0y3ich0zhgzaBy34DMCBDh6Pp0Q9MPfN2mu/TEFVTL50FeAOOFV4D+CDQkFeqow0yhYplHj+Qj+kwlHHZVDcOE0I08chFjk+k+xWmAMxQLq6zEi93+gqMxglTeRKDKFJ3F2TE9ssLTVtivtNHJNd9uUlxNGlcj+5NCHICJURG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZTw04Ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZTw04Ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF24C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761491393;
	bh=zXZVO77CfDzUfeYueqFTPl24lg2eQP3iXZAs7vkRu/E=;
	h=To:Subject:From:Date:From;
	b=fZTw04ExGxAYdmDcpqpMZp4CArSDhNoUgleRwr6QW7nH2F/xVTtuFejgunBEzlwOd
	 ugmW5RiOnrXJ+7tNA9gI/fIqxCiDbenIFVy0MeYlzmNh2x8/gYGXlskWBAGHGihhIL
	 vOBqxvbWL+MzJwkGdv9rc1eXxX5qdcjrZia0/xUk2uEGYVnWIsgLFB8wX4egvMRPrC
	 NoWXWrLGVGAyhGVX7I0YCEKpdc/TfhVeZD6q41EO7upQ1djaIK+u8f3BIdHj6KE6cM
	 3QXTugXsIRrvkJX92tR4v6gA4hUZdGP/r1YwyiSizvSIx6CR5hPEICUMGPnaYzngPP
	 QUFluD2YyWbDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF79CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149139357.7364.2531173830538148990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1a8010de4f47212cbf0a4235eaf4d53e9ad74e2e7d0ffc48186bb301d67e24
Date: Sun, 26 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761491393
