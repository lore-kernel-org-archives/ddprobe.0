Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A25813FF6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706333897; cv=none; b=nnOnYURP1qaOYZrDtW/BV/N98O12L1z1x12sNJM6mzT07S1+uaJ0cDaADP94kRfnnpnzU37FcSB/aGMR17Xxmd3IGWrZ7spodNn+V1XqERLEmrL/NcL3zl8kpAp0H7RMdpcdfkyL89FglCjbWd7+hBz2Mh1F4nmmoIdVmmy1CB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706333897; c=relaxed/simple;
	bh=cdWEI9Gp+dfIx4+4fZSvBHi9X9p/sAq1n7Ui7WA4ZbA=;
	h=To:Subject:From:Message-Id:Date; b=lwJ5E2yRCV4j0jmrsLE2eQQj6+jarM+4mdYhTg/5ts06r/+zu8T+pLY7D1aX/O9B1JbsYCXdy9KsKmMfbjjn0SRrLYiwYpHuBI43xwLeakw9d/68zhp5unfrzmAZu/OIFbY6NJr1qREVREiLCuDxDL+tl3HPpVoNU5n1GXiIJwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJIg6Y6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJIg6Y6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E445C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706333896;
	bh=cdWEI9Gp+dfIx4+4fZSvBHi9X9p/sAq1n7Ui7WA4ZbA=;
	h=To:Subject:From:Date:From;
	b=CJIg6Y6NNNiNOkFBV9joWOYm3kEd5ckAGQX9+NsvJHOmQ9bNC33a1cw57XTnkOsOY
	 PjeukyrRUMi0tKP3yrmgJDkiO4/tEKGvx6tVIZmbkclFMEbyMPCQceLMtFP7cNoV5M
	 BxF902C1np8iFLyxgYb3NEujZquSUvf4HJy25kc5NBIzZ3Ys/SOLznEOjYybOnojO5
	 2xPgqi/G6umU2T0B2nWFWfeSzi7p92bRl/rTqy0cTD7uKs4aqQEkALtoHAOyuwNUq3
	 6eIvfz9U3ssletystX6r8eo4yOGyVHu5Z11KD1x3aLWSRH2EQvv8pXsHxe38S2mThn
	 DbvF2DuHHs6cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E5FC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170633389638.9004.1217764101490748958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb493039ae9afef04bbcb8ad059b4e8ed11fd2ff7d8ffd07bb490fe14b7f1988
Date: Sat, 27 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706333896
