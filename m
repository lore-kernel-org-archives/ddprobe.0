Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506E257845
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765387374; cv=none; b=nQcWELpK8/sUldBRxzgeXG5Mc+msRsCKDW85Ku4Iq2hNyEXZSHTP1Yu34VKGhjDWtAwdRLWPWPpMFNCpgPD7HsBmVvfWkgsi2JMnCOjh8FP48lxH1gvczeQ4YFBUlBV4CuLalg0C0Fgptwt6F5g0hZHyQBPo1SMnZwF9cCnYCxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765387374; c=relaxed/simple;
	bh=+nd1Deb7CamwpShm4/rJ9VBqAgSW/HrqWnR/EAL1X7o=;
	h=To:Subject:From:Message-Id:Date; b=Rck2QovTHYz1husGVJ8IomszmArLEtCYk31/nOQNkHwE3BzoJoOEQjqHG0Rgz1uOoTGZCdW9DkKEQL+gib7fsX2MiNkdOCOQHPVzK68JApw9KpS2HWTVfGfigEAPJOYi+EXsocULZ10/KcfQoFZPpJ/3gp9BUUEJ6VlUHEsM2BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I39vIVFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I39vIVFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F2CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765387373;
	bh=+nd1Deb7CamwpShm4/rJ9VBqAgSW/HrqWnR/EAL1X7o=;
	h=To:Subject:From:Date:From;
	b=I39vIVFcEKtIMD6OgpafSc9IeMOpG0x5PY/wiTU1e9xqhX2LIVvlKO5JvLO41URk4
	 4MauhBbVGffPQn7eeaVVoHQ1YyM/xjjKIZoPVBPtTS+1qrJaOamZDiYvZa1gCkTXn6
	 SEoi6SGhMrk4DG2HWtt6TedLyVHLWz2GnqITBH0f1rVIqlCNHkyC4c0ZAJksAeCrX5
	 /mNeKdBYmHDV+1QvR3TzRSKdYMnUweKG09mY3pjbItejl+tu1/rRkKh6v5SdAj1uxb
	 YrHkUv3ReboDWsKUXsATIAfOd7GmLOymrHTQeT4PrVbEQI7BDAXNUGCTSQh285UfdE
	 kPJ/t44+eQUog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F5DD3C92B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538737360.11150.14892144104107975338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff7ba9c029bc40b901810b10a872db940d1e4f8e0073cbe4c9f252a7c0dd8e0
Date: Wed, 10 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765387373
