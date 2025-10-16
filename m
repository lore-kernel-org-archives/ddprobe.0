Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F9E31D365
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760632794; cv=none; b=YaqElbbc1gR+g4/ixWcmEjMrFs4BiSMMpGqfIXp+KZWOQwuumRR5PKu1P3CZQQzl+74yUoDr3vC42KzqrqxRYQbom/tWeYQGLQ4w+YQLaVrAkHHmlYIuIdcYxawyFIz0EbY5qNLQMt0XcPFamjPV5DCcWgF+PcjgXH1K9tcwFYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760632794; c=relaxed/simple;
	bh=ttvqLVnGGFha/2j6yyGkyXDsCficwoUUoId1gcxrToc=;
	h=To:Subject:From:Message-Id:Date; b=DyW2iIzWeO5xHIS3jfpGDLJLt0syONEcZe+V1ScKneeE+dax8io2AOQfw5OC3Rf/89ozmxtYIF+Q4i1jHU/J5tDiwIINELaxhVxvioJbvWkx25ZJxQSVkrByJr1FSUkdjMRMgKa0NpYqi1o0T4vehS6aosXKjX1tx0JFVaWbQSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WV2mR96Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WV2mR96Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35ECC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760632793;
	bh=ttvqLVnGGFha/2j6yyGkyXDsCficwoUUoId1gcxrToc=;
	h=To:Subject:From:Date:From;
	b=WV2mR96Q89JkF7ol4XqGPGEaVg/zhfoXzi/+NnGctbnpWxDbC28j1roCe3FBoGt97
	 K2OnVMTE1mzayOP+asiBiSjmfvnqZpWcIQjHgqh4lwEb15HmdU0O0UAPLmlaUKm3Np
	 HA/9UmltmCkTBJMFLRwDBBH8/jQwbq1V6p87CKR0Q1Nf3zgpsgx3ur8L3cSBTXcnm7
	 eZyT0iHJvPE3a+/ibsTXgB+W2LmnimIJsHjGrOy8Fs6j+nRSgnmRSkYbwOhTE8ofPb
	 lu2uMfbIYilphHYR+9Lz2cqMWnKGiTIpzClMPAM0qjwnZV738E+beirUqAGkE0Up8l
	 0N4s7c20x3TTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5BCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063279358.31907.5710511820714929021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf46dc7d6699951ab1362ea0865545e527d662138d9e6315b836f1f9ac86d18
Date: Thu, 16 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760632793
