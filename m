Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3152430D3E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780825474; cv=none; b=mzO8rkVtYmSGwumEVLLBTmKbkPmST1dAUbaaBrfA7CzdDZmAiNj2GCFh6WEgqFhR0QGOuNLIj7CU7Qu05dY+W2Y0ZIrMSA4nQAzv7CWJcNlXc7mzaWrLwiVVTm3lx1g+7D1TkHYSneLwtLdDIqWqiaaUI8Zj1K4uMR45RIpprGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780825474; c=relaxed/simple;
	bh=2mB6H3l183PBu/EhWgH4TOZbfRqm8a6yLW9q5Jxu/54=;
	h=To:Subject:From:Message-Id:Date; b=kPsySfTONJHvrb13XDQA6RVPT5aGo+qJblL+t0QiVQ0W77ESzBCxjxhD/+COy1Fe+2SSlmoxiCfF9WjlQyBsJ1vOTHEugF2DSdIbSeFocodZvb2Mmh1VGr53fQ1/ckMTKx0dbP+tmM2VbYa1O2AYm8QhZu3MLg9mA7/5D3hzpM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4lpzGt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4lpzGt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C70C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780825473;
	bh=2mB6H3l183PBu/EhWgH4TOZbfRqm8a6yLW9q5Jxu/54=;
	h=To:Subject:From:Date:From;
	b=D4lpzGt7DmxyxjV5bhITtN82B3WtYl/BOkmBR+yqRW3fXMCVeEMtvK9rB+GFqxiGu
	 tXGDqOH0a02+QP2mftv8cEVRup/OW1IXrMJsmbkunHcFsQnf1aJfyspf63MBZaKPce
	 aV7YqbqOQHRzRuvxzqL1gKGmVUdML9iY29i79IVELq9dhNUMene3QPGi3YubnHyEgY
	 8YKjO2hxPqpqswLCgoKl+fqQP0jKwil97vVRBuoNmlCYbW/qC4h3DioDF+0Gwmr4Dl
	 9So3DIIiCUFun/m2sV9TdK5Bc4K7bksgMJUsafkKPkh5fcLvLKgp4HASH5zqUcJvea
	 yP3VftuxA3C+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF092CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082547368.18294.13117023903936975776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9575ab8e8dfb47b2ffb6ca5fd280a858f5522cc78ebb4efebdf9177421dc48ea
Date: Sun, 07 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780825473
