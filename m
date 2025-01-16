Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB1313B58C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737005154; cv=none; b=hfUVJaZ/4VRGnEkQ0Ml7pvH7xOEOcrkh66mH5ILae1p4sNcK37w6fXWsgyXaMJ5DJJLHYrdKfjXPr8ZLGY4VBH4D9AG4/5Y8WTcYIc9qMsOZJ9xbDG18oSd6rIpg4A6w5vd0ut7KQUzzdsEqmT28WurccReC1+P/PWDWW5rytP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737005154; c=relaxed/simple;
	bh=18RydkG2rtpSckl/qvEUtp5l3hlSTziXwTD0Hj2qSmk=;
	h=To:Subject:From:Message-Id:Date; b=iMDfVKpsqahKPO83zmKzPqiCxoQE1wCXDG8yEWUTzRcECj8Gbw1xxy7G6VWLJL0WMWaCFKJgGXDgknp4tJcqgGHIhoGRD8OZHsi1hSAWGGi7Eyzgqd2g/XIs38qJqxWiwoYyoRrGSD895zyWzORYfa5dpsHhCnyrJdJg8Eap/ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvfgcSA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvfgcSA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ECFC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737005153;
	bh=18RydkG2rtpSckl/qvEUtp5l3hlSTziXwTD0Hj2qSmk=;
	h=To:Subject:From:Date:From;
	b=NvfgcSA4e33XhiFLM6ax8MrW7mmh4evSivFbKUQlYJVVNd1IfbfsHBCut7fNBm2vD
	 7p5q+lRQFSU/TRksCElXZkEO1SnhXdxs1/BiLyEm/JsT6xpUf1pTrhnYqoLXaqCFiG
	 2dqJBNOZtGNZwgZH4qSn+Qw4hGlijhL9pznGaWkT6yt4r/j/XbL7r1c8gReD27fsJr
	 vkn49V7+BUnaApirvOAg9pHyZbY1jEPQlYl1p3Dcb5X/joSYC5hDkcDclxUaox+vuf
	 YxPKq914tuccK745/vdlkKPCZaxrc88LNGXQvDk/HUWYSF1pwvtDtfORWW6GLtBWM8
	 agnXx4Mg1QWZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B4E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700515358.3291.2887439962276264677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37a81a5b21bb34c3484551001e5dce70a06ef064985f5ecffb9704581b28247
Date: Thu, 16 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737005153
