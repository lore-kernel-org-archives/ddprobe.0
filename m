Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8A72BF018
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750931994; cv=none; b=rt0/pGlCJVLV5O+84utHErEC/j3d6CQGoHI/KT7wD0C4OESyW/k0m34ykptSBzWCngdWw5Uu4hoXjtJ2mE2oo5qTek90BM7oWn9Us2IDPnHclclHtxu6OqZ1ioW1iDbL61p4MSkqTw5y85VwJTTs0nFBz1CPL1tLj6JhZVqdVYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750931994; c=relaxed/simple;
	bh=6FQUE/j1HE2gl5K/Z30EEtivq2nvSJ/0E2EuP3n/OTk=;
	h=To:Subject:From:Message-Id:Date; b=tHkz7XuQOIY9/0q8CdAZZ2yiVLFy2rr9bg8cctq6j8MzVQqQJDdwDmw2Jb2Pgwz+DRC1kDeqJcCmF6XNy65uNVpBuLozshYiQw2Rp1HjI6S0EswTlM/ZdnoWQXbpeDyATQYIGRzBJdHTDAJPb8vmrTH5CrzGhNDCSJN9C99ENGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnbcBsNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnbcBsNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750931993;
	bh=6FQUE/j1HE2gl5K/Z30EEtivq2nvSJ/0E2EuP3n/OTk=;
	h=To:Subject:From:Date:From;
	b=mnbcBsNP5ERH22nltJAvMHIXSeaZHJrJ0Zmklb0i8ZtNlAhQ8B8opl/fn8xopumqH
	 HWLrGD2M0k9GC1CL90xmJ3YqGObT8Csu2zyiFQGXiWzor76Shvd+USqWhv3RabfLqD
	 M+wohye1r+ZtbTmPun1YBmK1f9Iy0LQATqNKD9wtm6lYz5Cf++8Kexk9NC73v1hPKP
	 cYZUNHdjc/Fx2UiYY/dKzMzREgk0se1T++6vQ532bCSFVcPvwUAnfEr0s/2/KQiN90
	 8XUTreoRnCJUwDZdRw7RKsO6Kbo9mR42fy3TThrarAvxLMJ6sPJnvUPyn+TyAVsGIG
	 ZxOC07YyFWE9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1CC7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093199358.9775.16372149689106621445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57732315e76cba69d70073faca4f04accff324ff1767db95c9958f6c2acd2734
Date: Thu, 26 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750931993
