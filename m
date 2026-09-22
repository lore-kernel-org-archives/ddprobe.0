Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC5F439F75
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790121034; cv=none; b=uw8G2QxClH7MkoR+QOsWiaPu0BqqBrOeyWl+3Y0kFG27pBgRT50slDEUY/ROKTCz9vsHduoMiMXiv9nBtRTdGpY48kSt0L2Khcd16f/NJAIrlLHmtweptHC1CQxitSKEOCEhXN8etqbnl36TCOKpJIJPdoLelMoTa9nBkzZxxRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790121034; c=relaxed/simple;
	bh=gOTqJDHNmW68Ch8w+PC41XrVzPY0CK+Vz/+0qmIJM4Q=;
	h=To:Subject:From:Message-Id:Date; b=NYUvFi6Ya+mrtJBJkTsHcusDBVibhs8NPn45Tow+oQU6SZr1uOoq13zfmUMJb00rWBc61nawXwOK5HhtSpV4/4SLpgcDLQOOkaF/G0sT5I1177pqT9ZbRqRou/0tn+KYjLs3LPNo3nFwEP24ldI69+P7X+wBXq/t6XfLg6KfEgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuwoULOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuwoULOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF566C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790121033;
	bh=gOTqJDHNmW68Ch8w+PC41XrVzPY0CK+Vz/+0qmIJM4Q=;
	h=To:Subject:From:Date:From;
	b=iuwoULOws8ezMEdc+QvlUABqWZ7gilphy2vV6qTSmnunvsy/n+4FemQNMpbM0V9To
	 F5FUcScQa35AbndkBfLlsKbTlRxnA3DkUaDCr64ib+M/Fmj1TlE4Tqdd25AbIIq1cb
	 0uIQOKraYPuohwvvyBnIAG0mdep3Wisonbu30iOz+dC9RRmRpqUUOciRcKgUs2+3s0
	 5DAqhyD3T0xbA0GSjEQ/ltABJbOH5xUWQkZXFoCJejpZZ2uXUcA8hfD2XkRgJ24cof
	 6CRVh17BHFEFeRMBN1QKaPEGUdefK9d+L+gax0LU8A7/+QoLRzbW7yFoJX9b3vRRqX
	 A2sDG2nX/6osg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D71C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012103372.7001.6584814566176846354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d360c373d366a24662d1c7155a1d0b378804130f7b0ff3dccde1592f453e0a5
Date: Tue, 22 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790121033
