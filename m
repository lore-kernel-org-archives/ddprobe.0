Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242CEAD2C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754452194; cv=none; b=FbI/sfkDjQ93F8yI60UyUjd2CwXU0oY4/MO/O8xZV9Gsy1agObLSBy6u+43nDbQT3zvBt+MRN47w1DHy8miA31je2Ysrm6gOHrBx6wf0Yq2aPQzphCVRjTbiicuNeITamHDkR2ObZ2yTdhtzzuyWbTAGDKvX36Yn7J1ZX7+8Ww0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754452194; c=relaxed/simple;
	bh=7h11N6omEqJR5hygSfNurNK0LemNT0fUgr6Q1DF2C0s=;
	h=To:Subject:From:Message-Id:Date; b=lEm4lhP0A65APUTuTvb21kyufEPZSUKN3qSVs0iooFL40LJpNDHNThpS81qrrob3jdJnZDSDjBPPqEr879fr88kuD89R9WWZk36V7922n+s/eZEInJX5AHk0em1WcDUIjNHHWAWlYfPypRZXeTPgBl5fGaZfS49NuPYv2ObFD5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nI5cd4+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nI5cd4+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B82C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754452193;
	bh=7h11N6omEqJR5hygSfNurNK0LemNT0fUgr6Q1DF2C0s=;
	h=To:Subject:From:Date:From;
	b=nI5cd4+uVPCqQjyG8hd0jFEztbXTatVcyZ2e+7r9Q53DpyCSNC2Dj7z9t7CijNf7s
	 wnpjihPu1PB10knRzhuRprwUD+OEuJtnUJ266NpFOQvIR5y07JIDOyiPYuCCnI2trQ
	 hPCDISNwGwV4o5f+BGxY2q+O4OkIVjpsGHe0Ru4PceoOz3m5jXffRMkPMxEOnJ93OB
	 gkiHtaF0s9dfVlr3Z0ielc80cYxn0GN9u5XLPKZTqlxZ6ptttjig3mRlChDwn2jLjO
	 +BrZSCAy6PpVw4OX0UPm5mx4kNKYBdD5LAWTwElWEAgQhrHwhBfsqW1JnpRexIG7xT
	 tR/1rfWbER7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9283EC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445219359.10683.12002231022527966038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c91475f09cd93fae05b8d9e1b183f10091db1dc4a99b66330389f65794f9a9
Date: Wed, 06 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754452193
