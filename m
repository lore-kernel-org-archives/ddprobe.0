Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D349308F19
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760475594; cv=none; b=XoGTzpZE5qjjgPiMM6pwxy+KejsT94ySJv72KzRHzSuxNqGxT4ZARlRs/+y4gSgVQI93tDXpUIwuw6YCXSy6lpFvqxX8hfmgpmmjyBUlbQODPOE9AlMBbZGAWohl2HipyFk/4hSGl7j1e/q0gQu1/gQ7C+4vXXEDhzKQH5PVbGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760475594; c=relaxed/simple;
	bh=AXUXRuVxvdJ8xu2hyFt7mACGbr3FM2YXUHcJCHbpr0o=;
	h=To:Subject:From:Message-Id:Date; b=mlT4YTfhX4D6jH0pvc2q34sGoc7rit/IEdtTvnorbeHphjKOF1nIp9h3T24emmdFsP2p/xbtirssFySv6krPza1aiYM8vfR97aWs4MKYLnbtw3QNSak8/xe+Ke1FdZFK0BXzOKrNMh0KfoInxR/uJqfyJVD4E/qOtumaKcpV3nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twAQBnzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twAQBnzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F840C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760475593;
	bh=AXUXRuVxvdJ8xu2hyFt7mACGbr3FM2YXUHcJCHbpr0o=;
	h=To:Subject:From:Date:From;
	b=twAQBnzgsa4WcE7ehwAqzsbvSDF3h0k/zHuM6xcPhadtBomEX46nz5wAr31kpEj+9
	 lvCpZ/Tzg+Ho8Slvy5d5FnOT3AmXPI+HQYp4P6U4yAhVPMVRoeEekFRS0GCVLgGAoI
	 IrQBlYwxOXR42VQQ1lF8FXPUPLqqYn6U7ijsBFMH5YHNA/5l1bjgD1o42AY65RwYl6
	 1lIBWHh0bkaqloUnOWVgpHaRJsTwwEkZqDZvGJqA3jArI3uB8cnsB04EJIAFDr7h7u
	 IwyvnFy7fjxZHlAjye6ymfbplsbvjcF7JxlBjvwDMR2mtjOnXIM2aF7QpO5rWMQYwW
	 SfZeXv45bfVzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F002CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047559357.16016.16032545867458844291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8e3e9f96e0171f502ab8b2c6e9a538a49fac330caa4b990beaef60620cba51
Date: Tue, 14 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760475593
