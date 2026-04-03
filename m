Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E336156C6A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775185534; cv=none; b=qcAvq6IqhVSKtrQ3x6Pixst3QI9zMBkVkhILJ/SLfSSamuGjw4rN45+KsHliZOiN+ar92Rkkph+IvUgT4yYUv572DJGtql9TNip7L3VAj3vN3qnbCQ/caaE0N8w419aUHl7JnPkm1v4wLOxa4UcIKpnewPwZqLoMSYdtdLI4YVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775185534; c=relaxed/simple;
	bh=QdIIhDB//h5MLffml1jyUXxeBdk0cUGn0zoa9B+kCa4=;
	h=To:Subject:From:Message-Id:Date; b=d8y7kDVeAfXiqYLvcm6TXH9zTZkc/wdhsqiFPsyWtKL3NouO4fX9xYvxyw07+Ae5S9kZzNfg0o0qcN08spMwzRIVAFYuXLoFUVX9HMltfbV3B9d173GKskLMQkWW44JD5hPHmXYWkO6CA8TIRDzLUx88p2Gjqa9PLaCwPu1OLbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plHOTcDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plHOTcDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CBEC116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775185533;
	bh=QdIIhDB//h5MLffml1jyUXxeBdk0cUGn0zoa9B+kCa4=;
	h=To:Subject:From:Date:From;
	b=plHOTcDPsRRdrQ8E1ylrGkq1FQqIrVe/UET6a0cZ1CuMHxskRo4LKGNLGkSEg0dd+
	 BaYrjjmTB7RkHk0t0WFnZOPIgkEsn00o0tpJwC8LQJD+woPka45oPhO4mMuk91dQmR
	 CKA5YvWyKiTOUVKp3nMuzySR++Le3//FjUOFIrQ9dMR27Dp1gYnrmt5bfFO5Oe3DYt
	 dalT2sIXsKhqLFc24/Kn1h61THuoJXKjgM+f5T6LO6t5RfA2cT70anEqdjmdqxUJrH
	 ipRXI9oAEFZ4G/B3wlHE3Y0ulwxgplTR5Jvua3Z6+ZonP68ZmlNFiXTNm5KIKQgrMv
	 Mm5ilyty6/mbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13C1D7308C
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518553369.5853.12937796095787988526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e9d0ba399d2fe6748205a8c6be76a23a0639f68287f1676e752a65768c9329
Date: Fri, 03 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775185533
