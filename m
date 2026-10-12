Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0153EB0E7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791807634; cv=none; b=s3uK5Y44vhNh3v4BBSXFtSIH7AQhCieUf8TKO0bMgFXcyuzguPkyVSZt2CUuvSEhep0sfh5SdcsInXzPrboAGGgr0gKI/ijwnH9lP4svNCCmqJShO1qFEzLya9DmdSu1Lswf5uXGLq/71hTn9cWcaSQI/+HPwRRBo/+mYA90vwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791807634; c=relaxed/simple;
	bh=TLiFkUVdegBq9RP471U7qURuU6RIdN4F5iFWCvBsAXw=;
	h=To:Subject:From:Message-Id:Date; b=ogW+POmaJwsegUHRH93v2+Ke2HWV2YKFI4Mlj8lOOaBZMpXM2m/PjbgmkIhN85X1PAeu1EXoWwROHQdS3U5ze/td9Wh3zvSSMrc9j/of4gDIToXY03JEf3vujc+W8/5P6f+uNyVdNPhVvzO6YABq6H9YHZ03MZ85/n8JJIXGBCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkFT/J5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkFT/J5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D269AC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791807633;
	bh=TLiFkUVdegBq9RP471U7qURuU6RIdN4F5iFWCvBsAXw=;
	h=To:Subject:From:Date:From;
	b=EkFT/J5JbUkwrxrBTjE6FH9/Mcwwyr0e1zssoaez/wRbP5k1b9psE57yi/QL8HJIr
	 1UiljaY+Ud0NctgqVX3JVTzkwHis27lANLd/YECOETDYBgryA0ys43IWw3m8qLMEMg
	 BD4JNeTnloxW2UXLkmgDXW+rXMdYO00cCAtVLx763CLNRubiXRLcr/BJsHez3AfFdY
	 fzwZ0x66LhfWFi8nEf5yO/SN0MRR9KIT7RJ8ak45el9ZaxBbf2rgtxc5fiMPyCGnsI
	 rJ5A31cxutJTtkq/Fuo75wJHyifYBzjNtWGyzSoXd0LzYzLokyk4UMbQX1Xg6Zh0gV
	 aAOgW/Tjw8dvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF42CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180763370.22650.15450469743465478388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0216dc613319f9a81b4a870148a216cb9e8123d2d291951f1773f6dd2f363303
Date: Mon, 12 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791807633
