Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6982EA743
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755121794; cv=none; b=uJ1d7/aqDtIFslUtoWdeZEydX9aWNiI6o6Icp3qeikgj7PsztCLseqV6bUwiXldXzBLPGGAZNTS3fd0egCXk3Sed1tmlhQGNDPEsZYJ3XwEsUXMLa5dIFeWN3gX9w/IrkabHpXqThCg0l9KVNbBesVuNXvaw+oS02inmbfR0AYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755121794; c=relaxed/simple;
	bh=Sn1CPXi2m+BBFUCkI2oVym5f70EdVDDI+rHrlxNBI04=;
	h=To:Subject:From:Message-Id:Date; b=UhPb0ipG8KNqecb4WqvZOYMcM7U3E8z+kBc2zoUBU1vdl1L8+xOPfTfg6VRVboNPZcfUgDUZ60cVKeKr2I35YZRWec0SWN4WaZhvXOEw7bNR7kXFwSLrNvs2fD0fL1LEX2W/IR9smiuIOLuk+JX2rqnOtgMtkWNRlz4lLVap7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJRjbPqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJRjbPqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE29C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755121793;
	bh=Sn1CPXi2m+BBFUCkI2oVym5f70EdVDDI+rHrlxNBI04=;
	h=To:Subject:From:Date:From;
	b=VJRjbPqgTvMt9CI3GX2deu24A87RQL/C4Y3voWHSnpQABFbQE2UJG54PteT8D2eMB
	 XjHfgGdJuu3cSeSd0OzKzpumcZxY68yqD00z0z9QCjGEx1pLKpgGm4IbKGYgBXW7Ad
	 5duT6JahSqsnIMrQib1qONiwggU99VYOT4U21ZnHqJD11uDDeEE0Kqk6wgVOCphCNI
	 lbZ4JAJMSqO8qdSKei2rbcLMHJRDI0oA8kYxnpgkglNJYrphf4yVx7qCuhQDuADS5+
	 Si2R7aWvWKACDo7eft3+alesp06/P5GS5VDaKihgLdZmej7I89F/tzmTMfL67u36C0
	 a9NCkaV4dwm2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154BCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175512179358.29917.7311075993982358133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf459007963276c41b237995d2c0500e99aa25b5de2044302687f41d965c06d
Date: Wed, 13 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755121793
