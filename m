Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D2740D58E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782615514; cv=none; b=F524Gw39RAgrn77M79xMMZvcEXKeo2EsYOI0Ep4H+zz7O5GB3EA9ESlGsYBqWaAJs2l8g3Dll7y0idwSX35JhJ1feV423TvkypfA7wNycRg7KOyErASWvH/u3ZAsAeqh7mBBpV9E5OUwUzsmFTIciTfNs/ZSwP9fOidNnu9Vfq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782615514; c=relaxed/simple;
	bh=KtJJE9YihvrBVfyDuPHj3cW0KcSF/Eiuj5JoyHmwHqM=;
	h=To:Subject:From:Message-Id:Date; b=O+0lsWUwJif26T8srd6LTQPy3BhSNpJkxoh0Gp2tE7fEYMy9aSXLFWNHj6HTsBtKyCrh5ticQSgDP9YJPEQYh7+D6+uXbDG+pUjNItwgvufxQ0wUI7vyVBljQpWyLfsMnc7tIp56Jtswo2wNzHwUp9JfvTLQHO9clSOTPmPqCbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i283tDoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i283tDoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F2EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782615513;
	bh=KtJJE9YihvrBVfyDuPHj3cW0KcSF/Eiuj5JoyHmwHqM=;
	h=To:Subject:From:Date:From;
	b=i283tDooATJIF00iQAdCHAevrMtPemCWPFtF5o77IrjZknDYkZNFY27pY/V8i+hnC
	 bXwvF4j40sRj1V5TcqD8exVVJj7JzKZ+EInnp9/6KKfyT0qrfkWCgLs7WiZV4fhnOb
	 51TqaVxjKuJD+6YAogG1u3klUxNlgwstyj0olfFmI4amz7UphXFqq0xbnM5Lr/bM8v
	 A8n+kX2Y0A+TVPSMHUeVDgZYeAelvGPsMMBcwIUZ3Ao2kzCRg8v7+w6d0iqfX3jNT4
	 8RQELIsDN+ZHX4SIPKkp/9Lt+dIthMbjm1r5MURoMwZdioj86nHS4WFGy6RzwCzV8A
	 p5sDLe/7vXw8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE116C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261551370.29406.7300983744756201322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ebf24394bdabceb1af50ec72dbe26d769e86321b7bd5d34d20e0d767698208
Date: Sun, 28 Jun 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782615513
