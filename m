Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE382BEC23
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755657594; cv=none; b=ObmKquYtK83q6gYg1vsD131Q/bG/Q3QZrQIaN7a2OnrkdMwbgser9PxFs/rQm9agGX8Aydiz26DEOCUr28VtO3G32TzD6vSJCyFgp4fdN/CNQcMYiGecfBTk+PykxBaV7jxqYpeNVObngS0u39Chj59JUhhB4iKCSWM3lBVLW1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755657594; c=relaxed/simple;
	bh=37Jn5vwWoAMrujzvVhQ54fMPPx7BcPP//EQeIHxx1Xw=;
	h=To:Subject:From:Message-Id:Date; b=nQ9HSKK7hZCsDvwn4aWSq/5sfalwUxscfAmUXu8xlhCmmguu9UGA05UVV563MpDpVaPV8n4HgJwI+wVLLLcu/xq9oAeUprLxQ8bAS0ykd7NUGt+9bNIXyJwlWVWO8PggZJENCye7MlGJd21zmwSn3pGFF+rWdZrSzJwLZHQpWY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/V69L/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/V69L/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755657593;
	bh=37Jn5vwWoAMrujzvVhQ54fMPPx7BcPP//EQeIHxx1Xw=;
	h=To:Subject:From:Date:From;
	b=D/V69L/2v5/1gAgO2VorB6IuweoVRJFixh8XoXd+lujVf5FgtEU+GlceSm3dyR7Xf
	 Wy93051kDcBkMOrDlpSJ+IF7gruAKIeCNhEsY/a44uuCsXYZtho0+k0X+iRD/D34SS
	 BpX93zBa9/lh2KqW3YPpHhGPTVF2FIgTNM0AqbaVn7d4fMLtPYVVhDhn8T7da5FCEV
	 EoPGvq2g6FiqBRV+Tz+8i8jBBS49rbOJkXtUib2TR8/LmJl9T6m2asMlLdVfY9LEU+
	 Dz8kyzf7gzEfyO2sm/9X6gu7XTc1GQRAmRUrJPL9nqc9+69dhuvwhV6QQGhbxe2Spo
	 oZIYyPiiN+mqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C6CA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565759357.15281.14297917897078774168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc3be49ca32c02ffea7b4c4d8091fb429c49cb09c3f1c15f59b9a84b9dd0ddf
Date: Wed, 20 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755657593
