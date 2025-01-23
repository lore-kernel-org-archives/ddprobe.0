Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4741BAD2C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737594354; cv=none; b=XW4WqUUzIrTrrchMqOTnzKkqWgYFfuvv5fFOu/2epWiHKUw2019onqzsA8mAYf4rRd9V/wKIIGQlMtjhl2lndJuC9O5WNVhO3gvYYGEgJPoskUvI8Rj+cf0mFq7hf7JCNfHIgtCCjRpHSQtVCQCQXW/6ulNlBNa3KLRQdoGS/Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737594354; c=relaxed/simple;
	bh=riaHACOUxsxqAZ7o49QfgcOIqeN5jfUTdshJpKS1zqY=;
	h=To:Subject:From:Message-Id:Date; b=h+CSvh/jfhb3IjQQQCTxWgtGXAoXL1ZHBke5bE5KwQx2eOQ32HT2lq0OM64JWsbJyKuv88prKCqETqSh5lhz/8/luB0U1KhtZesg/+7g6edvtKIvy03XO4LxMM2oJvYxd7DTvYS6Eclr//a8dkeRHaAq/wRrBpq4DL89mjQ5n54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVaCnk1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVaCnk1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE815C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737594353;
	bh=riaHACOUxsxqAZ7o49QfgcOIqeN5jfUTdshJpKS1zqY=;
	h=To:Subject:From:Date:From;
	b=HVaCnk1RF2kvTmk7qWu0LrkLGKBg57MjQeSzXG0lpBuPcNS39j3HnEhZYd2lcjw6R
	 ruTt7sZLIsF1jdgeSrufdOpPILy7wRqDluYGGbbaEUrlQ1F50x5Sz6rkUXK/yOZQNp
	 OkiP1CSbQxXPH00CGCCgky6Ge288yK4f4vcdLd22UngDoH2DHyItcqSNTW9zuDcEl6
	 aYDEPO+CUTl5NXbRKL4nmCHpGX0/n/kU8tSj46aCQ1TUjdCV8zqrLQjX8chzlatwTp
	 AnB8NBpAN/5fQ7Xw9jD9IepwiyVxo/bOHtL0t1NE0cOUiyVsOtLcvMvXaR5LS2nU6l
	 rR6g+MjVP9FLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91903C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759435357.23347.101889861217567460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0860a1defe62b6c97ea29a6b22a8ec339097c5bd768f368b998520865c3f32a6
Date: Thu, 23 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737594353
