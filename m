Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508287EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 00:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713312563; cv=none; b=eopSbmtisDBqY0Hl4bNFtRglMD/6viZhSd+cGsjnB2J+mxi9xeLzJQBrRfDPLla/bD3cMDYzyUApNTiTig0yLmzojijn3b1lAPWbtLleYUVH2gR277HIS1BW0vqvZKRj3TeGNIQtNNbvbfydFpp/6x6WhzNLDhzF89hm9YY1wJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713312563; c=relaxed/simple;
	bh=TlI9ju4xxd+PmqBGdq3DxeF1UbS8SWBivd0dzygZSCw=;
	h=To:Subject:From:Message-Id:Date; b=I4+XstA7T/hSbPNCeCj6YQobD80smrd4F0lpUIDjsTxM+XhcA6e6eDZuiYvPxAEeQgVNhoQ286ePt/hmpL9GVu9+ja9u88vs0r0UwZ6g5n1qyKKLciBFFgswOBukOcWrc4tYu1dTTD0/GJCL1ahN6Bf6remS+cHCGKQLTAedyP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kah2EXkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kah2EXkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED95C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713312562;
	bh=TlI9ju4xxd+PmqBGdq3DxeF1UbS8SWBivd0dzygZSCw=;
	h=To:Subject:From:Date:From;
	b=kah2EXkmPW2jEChhq7r7bNIjJM8x+A0EN8KejEY6ytdQK9JbzAQLGFY3QpyM6N9mP
	 i0XBSw86em3TdQ+ZspZc72ijavf443BOJQU2HcwAp3rBxVtnt9mGCagVnOlk2jUXB7
	 5TswUL+Z05OWU83a5HnzgGKgbwu5oXdJEPXjkqkCh3tSgvOXxsu+ZshvwIPFo83h6p
	 1JFXdAu0s9hegPhoidzq+vfY7HU9guWGk5OS0X0cbIBghJfo1rlfvqZxeQL0dVHknN
	 v/6tZWdeVLGqxTsGdad50VOaZcyFK1pw8OYZHrclg1PQLgTNE72StHqvbVxbHU28tb
	 6xSzYModNYwUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE20CC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171331256277.17185.1421535718040620423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd128ad32ca7c40ff303363f4c8a06c911f169f2458aa0209c74dac51fd0a9b2
Date: Wed, 17 Apr 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713312562
