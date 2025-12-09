Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCAB179A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765252974; cv=none; b=QwNX/quO8WRlCCem8NU5BMrBT8zivGFHvt+qOkoIUd6Qbx58ob7rOY8JBxHz9qb/7RfU9CpUK5Y5UuEVvGNacnpR8R1kii/GhHeR2hL/6iQStylpCeBT/BfF2i+g5WvRqaeGke6OYScTFxxBkh5g1zj7HC2vcfmHWv3DrSgL9kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765252974; c=relaxed/simple;
	bh=WDC1p78CRMBZMXWyKQL46yq71aIJudaQO7KThSv6jT0=;
	h=To:Subject:From:Message-Id:Date; b=i2SSH75KuQGJSy1v0lqI3XmmnDDAwWU1Py7CELNjDT8NRqiMDIGJbWUfdcC9U3S9C3Cnu3q1+03UCybV5F0gO/1Xfl/MKoeQMJToJllDTP7orn7TzyKE0jLHE0NFJ8d4WxUqdOaCABN/t403Db6Jy2uid3mqY98aUvYQK8xIFYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbhuyIhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbhuyIhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B0C19421
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765252973;
	bh=WDC1p78CRMBZMXWyKQL46yq71aIJudaQO7KThSv6jT0=;
	h=To:Subject:From:Date:From;
	b=AbhuyIhlb2V89QiwRjoddx2Yt7rIVPvV1qvmJ5rQfUx/DF9dC5ubpURWDjXeVZf0x
	 sTG2FQGDRW88y2mgrQuA3zJmnNfE6wAVPT2iFCAG+maFLQbigUBwQXq9NmsdKJ9UDF
	 gHjeaDxUkQ+k0q7ZruTEI+Wn1ULCZNI+zEL62b72uZtkRyrKDadSxCfT3UrJJ9T0Dz
	 sHq6svXlCl/qEcT1ixvsh1iGOkm6MkKureUlmQyJvJO5dZjV8pdw+wQIMaO+XS9Jdb
	 XiEw1lmKAdbzDI+X3+PQOSJjCXFwZUcRTbT8+tjJjZVfRCMq3O1uqSYTKlfpY6SgYD
	 SDxYTzMwSv9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B1D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525297358.1821.16195722214942186086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab78547dc3697a4148f2318bac5a3c2e00bf0e2471a21b405eb8183467e81a1d
Date: Tue, 09 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765252973
