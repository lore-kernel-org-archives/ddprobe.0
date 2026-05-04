Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218E43246E8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777928854; cv=none; b=up+J+jb+jkP5W5tddMzpLQrTXgX7SOIbT0b/vkKmDS+vRuS9H6ShZeMk8PvLHEiUjdV019CKr2Ju3AhHeIphec33mzHscw7EBW2za9Z9sxGQ6SqaiHJjt2pa/B0wY88lpKWClTSKevAzSkEXXuTOB4rZu1QzNJ3KRkBB2bWCS/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777928854; c=relaxed/simple;
	bh=3l2nnA2kIQNx2+uZca+MBzH2JwgoL1SGwFJheDEAivk=;
	h=To:Subject:From:Message-Id:Date; b=W8lChrrRQDZBFdJauwVuCaeQuS9si93op4q4bcfi9TTfpWXWNfJytuEyNgK+ueoHhP8wYe1F4uoN6JFXcIC2ZIx7jNKKkaap//f9M/EyQvL/6ad2TlyExOiZp9VGrY0dWX55jLt7qUxVFt9Q35l2rETEWxu2s2ImYmOWkq1UlPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW7UqoiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW7UqoiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C006FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777928853;
	bh=3l2nnA2kIQNx2+uZca+MBzH2JwgoL1SGwFJheDEAivk=;
	h=To:Subject:From:Date:From;
	b=hW7UqoiAni/RsBpTM/GfT68i46f4HazV6Az+FeJZSNsJWsrDLyCZZal1jrEKEX4vm
	 RzLbx1H3U7d5rPMPkUMBLWc6j+cp+Yp0RBJIiyNFqjAoutQlVRTzUkbU9u1bkcQgOc
	 qzRvtsEHN+anWN+grR5O7BN9sB89ZrIVrzufPYrTSzvWW9lWZRXRWbdTdCYNmmuNQh
	 S7mNX/J4dHa2kdq1uXM6d061eBl6y5U6WuN3fHQX/yZq3v95NFSpV9fSh9jAVdcroY
	 HvIbSyIGDcwqtIIz/sIOZvwy+12lPOOpAU+LOBgHDN9dmrnT2aFAVstFCcoIfotyzF
	 BLOgTgRtMofJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC9ECD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792885368.17136.7285849390543556120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4584c272e6bf2a0f55263affe63120799d127fe7668b0fac609ec51d4be0540f
Date: Mon, 04 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777928853
