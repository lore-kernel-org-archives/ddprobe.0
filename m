Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5334F30BF59
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762421394; cv=none; b=mRHUEffS7umMumqTyO0Go/dHdaJ5NEAMR6PeFSamkvs8unFuOVxrI2CnGmcFC3dNEtLz4217DVbqwPKCZicFt8PSEINo/pO1hhi76pgN8134pahYbp6Ev96H1OKLZ4CsZVIw2MXBzom6etAd9DBSYCSqT80eJcSu+HFhmNdPezE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762421394; c=relaxed/simple;
	bh=mAbmec+I9d1+T391zxleI1sfyJobD3zE99ekgr6kzaE=;
	h=To:Subject:From:Message-Id:Date; b=LVhebqqdtNyHMHAnpgKS0wY8R5bjalbNmfpoMlVAd/yKY0IyOka4nRSOMtoVBGsGGQcMf35OnY7gXvsectLCInCxu/R4Dl4kmGkK/UIHY0GhHnHVMgYwBnvecL+YBFlX9FWX7E3y40N/s7NquC63HXmQvKQtaff+YPQeHgM3NFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoN0qEbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoN0qEbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2607C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762421393;
	bh=mAbmec+I9d1+T391zxleI1sfyJobD3zE99ekgr6kzaE=;
	h=To:Subject:From:Date:From;
	b=QoN0qEblbTZfuUy+PwrmMEbV9i8UxQ74YB7oc9O6n2RdOz9rxWuubQqk1iYtENfAS
	 uyou/ZlZJB9onqzaTZ6sco0PdsHYwT8hF53LxqtnE7btvrHGqGmDVarCUURKAXB0v8
	 ckhFdJy35k6FNiALd9ld7kFEplfyylUPivBXBb/gpzLj0Z9QbU0WMWElLsEGkce7oQ
	 XXLPVwJbTM/Y6fRqmEYIi5CLfapzzKggn+ZZYnJbLzNZ3cgpRhsE5nq9IPaCuiaCXF
	 dYbmegbdB72opKfUIYRk3j/Jh2G+Iqx093g/qKj42QX2DWyrO8ua1RdYa60yetxWgm
	 wdfk9Ewgq7Dmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FECCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242139358.23372.11391065296023909042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d9947c917a91f7f368e076b979cb081d15bf92528d68b49fd21130a2b69312
Date: Thu, 06 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762421393
