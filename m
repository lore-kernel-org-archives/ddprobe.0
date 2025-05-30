Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA368834
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748570994; cv=none; b=n6ZL3+9oBX7+kRL/Dog+P+QzCe7BfBiYid3X133wBmcUVNlHtQMq7U6dTmkVLTC5/Fem86HWvv0JK7nhAkNuvJIY6goman0pPeF58uvk/Gn/WZCKytcQkprzhBE2/7ZAEOIPNBQ2AoOyupw5hTe6680Cjc9B6TfNFM/gVbIG5gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748570994; c=relaxed/simple;
	bh=k+Spjxw8EvJV6EpkN6l993RtEU8ANa+0p71mF699pgw=;
	h=To:Subject:From:Message-Id:Date; b=l5ED9fdD8rs2clYxL3S3O9qF48H1Oxu5oFGbQIGMhwgn/JcYBqZ6NjK/QmrECESve1hA9ZG4ucWKwymixSRVMHQ3RPbyMwFuZSPdZeuO3xuJaMTXoZQ7gkIcdDZz64pY41nWLkciI+4Gyzg17xMyC58oLM8eolE++5mDxPNCOJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0aIpgtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0aIpgtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4501C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748570993;
	bh=k+Spjxw8EvJV6EpkN6l993RtEU8ANa+0p71mF699pgw=;
	h=To:Subject:From:Date:From;
	b=G0aIpgtxzJNt2LnsbEUtZqIu0K1cx5AeQzBm1lcYOgIcLb475eUVtgK9N4Y+EexSS
	 6TWy1lmZz/5cPlr5cAsvjUtVXkgV5Oe+kG2fHHMTF1AqdhpplU5P2ONFhO1n0NcO6g
	 1a3q7PBqKKTAYPN5LoPEo2m2UEPKBsdetdkjU/UjfEM5xHnaHERKJoG72dI7WtvBS4
	 bOQxd89RS0vLF/uQ99uusfcG8ccGMW8Cvp4xSzCHlz8sLmmInuzWbjRkQFl07WfQtJ
	 mZvLM90r0crdCCjix4btXJwvh7uZUqMaToX7sAw5bn4za2ssf1CBmYx8FxmncD1Nkw
	 D5yy3V7zzBn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D66C54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857099357.13750.6108597810205893260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb74e05115e2f2c5e29b774a4e91d88740c88a29cfd2c86a658cecfa9fb880b8
Date: Fri, 30 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748570993
