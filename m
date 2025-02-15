Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF1A151991
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739632134; cv=none; b=FYNnbsGG4g+x1O70ZdefYnfrQbOGMI6c6EDMbDf5jKNp5GdKmJgwd+5NTRSveF2xLdZ5cmwXqgvNjQ62pyLH+LxOHKPdoAZAemWhk69Rt/eBlGEteQPNJgxkaOzL5kplGjsmxhNhBkW3s/SDznJVbobunNDqs/+esP771zTXfCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739632134; c=relaxed/simple;
	bh=GHg/S/LvEMewyP6P8DR9zdqLe1YTkZKtDl3xn2OQdFM=;
	h=To:Subject:From:Message-Id:Date; b=YCYZtnunpwCPqr4c25dTZJL3JtXNvPHyaOiHfZlrZCXeRMnGjkUXFhTDtukJSNqXQx3j73/ImJrDG4UNnTCqabUVzkMyarYgjrgt22OCv96PpSuYB6ew8JWGamokagkcs38YmBYtlsMZAzRSMgwZVzviBC7YFTEuMUdAVBWhrmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAIURL4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAIURL4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E2AC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739632133;
	bh=GHg/S/LvEMewyP6P8DR9zdqLe1YTkZKtDl3xn2OQdFM=;
	h=To:Subject:From:Date:From;
	b=bAIURL4qR/cLqqXfZi6NZ501+nBOYSxZg9RjN2+6Jp+5UxosLfwVfDV3loBylbp8t
	 cDwWaQf/N+m1jI01YoFBA1yczTxqUXWgYyqfaGSTrQiZyqmO+rtld1yrTPOLce1opa
	 NZYcIC/S8R2KS7Em76hzfwg6ZRXScmuMfbk9PIcvT9ev+ZCLV+o2S32tletqSECoff
	 dt9hrspt6dTUoUuu4ejrONHVr7Is1ZyR31La9CvD9j9SYwQkaOi3nbOPeewrRMtkOb
	 1Km0UYeIlP+xoAyYC9wfV1SBo2L+OnK2MMKDVX3bTe7Yji7SkKdIA668NSw/ayzEaa
	 aBAcGnI13jJWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F211C021A4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963213357.31070.10336330328613672586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c361124c090c1a44af99a032807dc2f67686a423c44d8785be3a158ae99643
Date: Sat, 15 Feb 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739632133
