Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC48E2D8393
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751651393; cv=none; b=jH2aSUfzhulekXl+j3+dQwTeE8zCnmX3cWGM9O09zKSs1cFK0T4F4h09KpKfh7HNTvcDCRSOozvNrPGdP3F2OwiIsNNEwhmAHkg9N45EVHVD99N/8550gtyz8nhrKW9pYiSPQsxRqnUJk8Khc2wOXsI7qNlT7ZTGYxRtXMykQgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751651393; c=relaxed/simple;
	bh=LKFhAAfAfu29B8wvJE82j+PBmh0sXOIl3gxoNX+H0Nc=;
	h=To:Subject:From:Message-Id:Date; b=Rl8q3Z7cWclAKLbIwjTNpvD8XmtbTi6tggqIuZumaL4fOyBin03e2hZbFcv6733SoGy3l273WSvIYbyrjbN3wFdIbEcHmgu4BtqiKxw2kMGhyDLbDkPxU7yEaUFgX5CbzZyJdq/0wtv6tgXTkpKM3O84XNVaPc0vj19kUZtS9/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEEhKNBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEEhKNBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751651393;
	bh=LKFhAAfAfu29B8wvJE82j+PBmh0sXOIl3gxoNX+H0Nc=;
	h=To:Subject:From:Date:From;
	b=iEEhKNBHggRhht7NuQ74Pn158c0IGYQmDuJlcoNIFp3rgGHBRQExacnHXt0Z9+lKH
	 0a36MPf1kp8j5bsTqqK2+KTe1taaBf4jTMuddGfFXjXMwenkvt6mHad0h7NFy35+Hf
	 DMGMvEToMEucYPLDOj4hzlI721fe3hNYp7KLAWr0aG2pZqErjSwUyYadd166S/Og5B
	 HUybmQrJQrfE2ET/j8C0J3OLdqXTafjG9mKp4gg/ri2aeJjqyngLxl60wM6k8ByNW8
	 pbD1fE73N4nE7GeYdRlyiYLUM7cCuoVXiPAoa047UXUSbld5KwSoOiLvwJmRlzoRBq
	 BW8kOdgKB0q+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4EC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165139358.23558.15896997664752061371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd11a89f38b69221cb67a2f8730dcd5483af26d64d89dfb89ae61e3670be6503
Date: Fri, 04 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751651393
