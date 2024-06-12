Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708121649DB
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718205503; cv=none; b=SLvhevV/uO3uSxsLDrejlTdFG7H2PYyBGcFojPeEkrNt1j0sNhoenmKoXzBcXvzGBHs+rYW3oLV/9hKS9jF3RyGKo0wibkxPA8gBpe6HL0+onCQmg7YZePCVkTMjS3RJFo64FhXsBz0QUgWPcdHuN41jx9lOp9J+mYEqYEGM5mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718205503; c=relaxed/simple;
	bh=OMKYVk/yYPernzq7lr5+/HL9LxClb83mBFYho8FfeqQ=;
	h=To:Subject:From:Message-Id:Date; b=mT8EpH4S+iEe2v6CXOBoGiOhFqrrhxN5vdu3gkhDe3qglAhl00ZOPlpDiHz1LsEsWo/WBbblgetCH+FqF8uGWp98QW9IIEXxF2naOwEl6V/N++sGARsLBm33DiUvhfjLx2HGR1CdJNtrBexM67ZB4ug3x6n03DP5n0rPvHncZ5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dloXB+sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dloXB+sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8151C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718205502;
	bh=OMKYVk/yYPernzq7lr5+/HL9LxClb83mBFYho8FfeqQ=;
	h=To:Subject:From:Date:From;
	b=dloXB+sGKph18AQPHrHVCjF8kWlcQti3IecPpLuCRjHZ6QW+hROUcoio42ZCUI0J2
	 tcPSEEt4eQki9JI51WYknzPvBjMngKw1rUzlqwceczhyJTaoRDIM4CJNauszC+a7zN
	 u4ttzolkG6c4ryd8PcCT3kJN/bnQRjATFxwwR2pLyaE/+Pw0U4rAobhs+arIbLM2ZL
	 MJRlCpeJfi3W8cf455tF7rNL9POJlieV0Mgwsts9sqRviCIKYWYQFs+35F5+I0mA3E
	 YNChqiM7x6ugeW1HlkWB3eN0/jSg4oUS+eDBY5HOaqenGRRHd3eZmtAX8K9eP2DfZH
	 T8A8zfxe24iXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4E1FC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 15:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820550285.18723.8799516328280472930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334ac057d249917b8810889f762e063b52422e9da29565ddb57a65ed545bd97d
Date: Wed, 12 Jun 2024 15:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718205502
