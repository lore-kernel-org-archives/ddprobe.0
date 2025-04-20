Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49478EEDE
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745123994; cv=none; b=Lt3KVtlcpglRWXs19eA+ovFwIuiqjY3lWJqZPzX+Rro59Q7vnrQJKklR/syB9xIozTy03u0QVjDWPbDzX55GjayRoBdirgNQxtTJCG3AhR3JN5tUsNqibYjI2Ngkw5fBo22+9ay1iFSeE3APdnwTdvoUJcRIvyL3swk8i8BUJX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745123994; c=relaxed/simple;
	bh=1vorMDIMWczI2+tWp3kyVoLMHLPMDsOuGt5RkywZTiU=;
	h=To:Subject:From:Message-Id:Date; b=fqodatmVRjL4tTx37hOTFcCcig+u81Z5t08j+mzni9cYxFld2k2y8pe5E+y0aSSm3GtcbAFgAG/6fT5jq0lrKOim0ivaoN/UekBJsLn7JW+bY8F1tqb3PzR/gtLBua/fX1925GBnGfiGcQgQl3OnQl6biqKerKnzoZsG4GVJ4wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THyhLcFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THyhLcFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20D2C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745123993;
	bh=1vorMDIMWczI2+tWp3kyVoLMHLPMDsOuGt5RkywZTiU=;
	h=To:Subject:From:Date:From;
	b=THyhLcFrjDSGSQCPBwS/oSmfwJu3oin3gHcXTBCJZ8wiL1gnuoYr2c9PjPK8IKGyP
	 XVgBSAixOyGIU06bVsyhOMYxBg2gx1vGLBvwpbPiONL7GQGOmutTi+4AubQBtz0eRo
	 30p7/wFQM7I9yVcaFP+1mkaG4wuBVK6tmEvBUAVWxmTF+un6ah4emC1WqTbWeoN/qi
	 TBtIzuWADuklM7f49EBRvANEpcURCNjLl3okgK1v+OSGJQxEayy9A1tPtiPzcV4tUf
	 20PVzqPR1lni9+W0009DAR0oZd5pUNk8Z45hOyLCGZ2ep2vvZ8OuVGhj/kvBmx6Qzs
	 iQyjZ7NZMfpxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADB6C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512399359.3078.2900063125387953694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b3889b0e72b829c4bc289a659f69a4effec71d43a2d8d22b4f46806d607939
Date: Sun, 20 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745123993
