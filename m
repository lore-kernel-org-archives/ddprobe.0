Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E6B350D6A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762890594; cv=none; b=ObnavGixnWI/rAYuV+Ox5F0KTsJ48bfgGxymoE8TxgfR8hK/5dNgZthxvSBS5lScPb/ALvRdJ8CTvL71CroQbiWyYaM7ueKP1Qvd/nQhKFj8SeFxnwqnyUcxNgbNmNV48UFIPIxaMX/sTUsiBck9Jx+GaNR+HxArS+Sse4UsAiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762890594; c=relaxed/simple;
	bh=i3fxRi1DCKeqFbCKAvx5rFutf7h4oqdFtujeT/7btCs=;
	h=To:Subject:From:Message-Id:Date; b=lbUl5w03GSk1l/HpheEtnuMlx3QKMTqNt21ScKrB2aW0hCF2N1LteeiXqFC2GTfYdRHWBDHEfcLdLNLzEEcahuHu0nSbedXfhEFzKm9uvLnaPTFtVwtg+spOopFpPIjLs0Coc+TOj6UqPcfsle8y/BYzwfwzOXxaOBUmzi9LxLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGc2F2/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGc2F2/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD4C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762890593;
	bh=i3fxRi1DCKeqFbCKAvx5rFutf7h4oqdFtujeT/7btCs=;
	h=To:Subject:From:Date:From;
	b=XGc2F2/rgU7fP9fabXd5J6+gFkLbmrLxL4TBJIdhTQ6yq7q8N44KsJ5YNw6SfVQ/R
	 zzTEuaYfWIlfWcdQ0boJm7oDRKVqxJNwrhROzc3CaPzl/RWRYbWVXuotRbtQGZ/v86
	 VAUFYZkZTN+pZMibaguPkRqg1rOyy6WXwSbmDSWuAvqxRWVKnEO8HncCRJoI5Lrrsw
	 OThh/cVT51pFT+6kMyNK56K59dC9lSDExlI+catufYZji4963TGFqCd1WYrlp3g5Pu
	 yFlK61xZn2caaYhxCMJd2k98lF+Mcn2tCjH6iITxBySgNYdjvxw9qL6kmKmGxWSqDz
	 i+RXXZJts9gvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E9CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289059358.32157.15546429076173654289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1c27d0ce4070e3a647c424c2e84b8e9135fd873fd6fa08c265f21f82865f64
Date: Tue, 11 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762890593
