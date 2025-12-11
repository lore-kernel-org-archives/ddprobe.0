Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4F62F290E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765457574; cv=none; b=DoKF08eAyhca0alqRa0+08cP5Csa9D+9h41S+4KgOsMTtYsoPevJhzjnMSNF4JUBJJyVZ4gxSxqBzom8Wf7oQjtwWjlFcamnomKlSi1Oo3WrXNXMS0yMPuJumVPp87hf/CzMh5QDtZksQ60FOj2A/pAwAkOKLXzkNblIRwGft9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765457574; c=relaxed/simple;
	bh=fgUSz2P1HZOYwG09O7N3jrpN/+5xKMV84KgdJuO/Tak=;
	h=To:Subject:From:Message-Id:Date; b=hiv+jpR72SFSLPQeW2uA4hTRIBJaDD0wjqQ1AuVacKbfrhh08ALtzqA9U5YnrFG6qYl+QXE8CI9iNuD/GWDDTNFU2277lW/R66HKlCQxkw4Uvvzx4hEXn2fmlLtND0DpTtfquk1lBJdOXxT4RF+nurCzFAHF3EpJ1GTbGruIS4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+Vvqddd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+Vvqddd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE75C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765457573;
	bh=fgUSz2P1HZOYwG09O7N3jrpN/+5xKMV84KgdJuO/Tak=;
	h=To:Subject:From:Date:From;
	b=b+VvqdddHq/s/2E3wxoZUqYmL43IVtjFQoc8Dt6xusw3faT+uRpKmm0GIPfe4EoaF
	 KEH666oestPZnIIicIEw+jc21x+WSA1faeKkyytEXDgyYC66h86dU3rRFr/bvKOgbg
	 768XxF2xl8qC2NYigu0f841flgak2r4aWQZR+de7/BYI7NnHfYzzfHemYeV3DUn9mk
	 iociMd+Vqt6ZEzThT/VcCdJ7zZE2QJYEl4RQlMdkiCRceH3TW8c0uxQYOdObkgFarW
	 2nZl0VSxFEkso32ue1VmXlz2rVWFAKznlWGkMz8a+we7k+QZP9m6Hs84zPfzUlzqYE
	 DkPjmVFhHiB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AB2D41C33
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545757362.3731.8573240316875058576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c67ce92561d5d2faff66cef4a6a0904a0043ca19ea23fd9843ceb2a578c9576
Date: Thu, 11 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765457573
