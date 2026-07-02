Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7743044DB64
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782997714; cv=none; b=FQvVlke6EoB/JHY3Mo/JXfi+ejDWKZ7UyxPxH93kCJE6ZVmhmXCdK/rrCWZm0WjBfy6E0azoH9pu4fbHodGebJZ0vaxCanYiiK3bdP6eJPb4HfTNp1kqg+R6pSPcnYo0jYKj3CGVgSAxxx26SRGUYACnMChocK5RY5GfEORVrWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782997714; c=relaxed/simple;
	bh=m/ZbsX1jmWoxWNDX9/5AMT9vlY0sQbxF3+hFBmlDr80=;
	h=To:Subject:From:Message-Id:Date; b=Lm7T6EnTzSJJhuuE9JFn4pGdAGhZpiebghO+L7mzwyLKhAqMBVJ0fZXZHEIE09/pZ46PGT75x0hY4sVt8HGr7dxDEOGxT4a4WnSGHxgU4eNgc1MDswvMQqPpa+t5b9xYaI1WIiQqKO0XGBtDjLBi6JG7koRPy29V7SK+e8kohQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFBKCbEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFBKCbEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF36C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782997713;
	bh=m/ZbsX1jmWoxWNDX9/5AMT9vlY0sQbxF3+hFBmlDr80=;
	h=To:Subject:From:Date:From;
	b=EFBKCbEPeBwsffj0dfG7VXJzVXm32t6abFgQ48jBPBR1WK1pRUTQKxnX33ehPPe4D
	 VHDRlysWemiLt6h7smI1ARbFT6lBDyu20JDuGq8PHdxr5y+9jCJQi0FjmIaGOqdvWz
	 CifiHfuIjepyshu7rQZwjnIb2uE4ed8u+DKWfDQcxTvD5MGNB60OxlvZCQJzvaJg7/
	 gZS+lUW20QwPabso+mWDd/nE9wGMzpSfYPH0eLA1p0mAAH3ednVenw5tC2+VR5yQlI
	 4R8o8gRwod5WPq6ON3+sRD3vEygeg+KuDrvAOm5QSqjJubTWdF8BGAYtM/IYNBI0Ah
	 G4BMXdd53PtyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9107C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299771368.18122.17475566923019637265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45616914a6b54a0655f2de884c6ac2267b95560c8feb7607ad44e828d8f0d9c
Date: Thu, 02 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782997713
