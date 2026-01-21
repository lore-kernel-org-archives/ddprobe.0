Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5D63A4ADA
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769009034; cv=none; b=sK8t4nlokNuLceV3RB6q+0SLEPOHxFIDuwZ+6sfVOhmAG4HPbMIyVOpH+Wg58RVuqRmCvoN60nctFUTWZ4yfGqZFgQv0SVrRrQTcI8gfLv1m/uEChEejEgHvZwyh1kWOCbh6+edTaxHoz1KaVGPTX3p4MEnTNphp/J08vZgAq2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769009034; c=relaxed/simple;
	bh=AHEFqmF32bk6SCm9t+30BQYJpDbb4g8XXVkUKWHo1YM=;
	h=To:Subject:From:Message-Id:Date; b=hnsKacnsyUTpS0aTkbYtEUMDXH4eMzPRWHCC3AaN/xmFreMrIYZnT+aVUGN+GvMVb4FxOqScKujtYT13gFQdcMcuK2ZZQ6bTA2kyaC/w3SbCI3xhvVt9YCXEkIG3Rxjr0A3tLX1VgdG89OOK3e2BZIX3YZYxwarkZs0mryqK/po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8GBYHQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8GBYHQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDF9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769009033;
	bh=AHEFqmF32bk6SCm9t+30BQYJpDbb4g8XXVkUKWHo1YM=;
	h=To:Subject:From:Date:From;
	b=I8GBYHQzScLb9GD56mftYSd9nxVJECL772u16WgpOg+NAvK1N2N5cbPjNwTrPz0rd
	 ShS6AqnjgBIMLGmR0eofstMgEtMAikV9DvZzVfdM5l2RF8HPa3Pcy+kUKGykABy0g8
	 7d6F7zR8eEL3ecv3N1eCZ03Ecxt9fLHXfApWZjFdaOB2oYy1DEPrIIuNjV80TeZFZp
	 fXoHk/Jprpa2LCK+KDfTV1H0FPLPkq3yuJWbDeV3QiFGYQf9N/gzDtFDM7BJHcMxdl
	 you3/2CSQXHjUAe2lyVyt/DdYkYX9N4gMSnIWw78dD8V9JtisynTKFAadn/x2KlhSs
	 A/8DRWdS24jLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB3C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900903358.2070.3610632294318865295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f7847e69a49ea83a8b53092de2b6e1b63ce32924bc3dcecc3a457162c492c4
Date: Wed, 21 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769009033
