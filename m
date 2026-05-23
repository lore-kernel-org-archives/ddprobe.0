Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DBF3EA66
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779513754; cv=none; b=pjiPcQn92qN6UPp0h9xaNkewzksuyqpqg7Mtcve3WcOrQGQ4eVpChPBPdN+XoHC3DGibkXBs0N0IyWVeaWDSDsx/V93uKu24xodt1OQJI9AD7EuY+tr7lzzpBoB1d5aSUAfnwvqeA5R08kwnn25O463b2Q4BLjWDJSVG+ymewD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779513754; c=relaxed/simple;
	bh=m5TjmW89eX2CXofCLW04bfj9ZRO014snx/sHnBK8Kew=;
	h=To:Subject:From:Message-Id:Date; b=JMJB0auN369Z4O/EwYvEmHvF71hT+Sqq8E8EIvI5u489MqZWqwlKhdQRUXsx8pMrNhi6L8K4Ub6Z6Ji6NlF/IjpodmhGFZ7u7840Le+unLQnsBivW96n6vpIxjxIh1rYxA4NpXPo9jVzhjDI/kXSAETRaNBbyoZnvtsSv5gxnA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aor11p0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aor11p0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CFCC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779513753;
	bh=m5TjmW89eX2CXofCLW04bfj9ZRO014snx/sHnBK8Kew=;
	h=To:Subject:From:Date:From;
	b=aor11p0QqcobHCQWwgDf+VsCGiOAdRobzPyBbXQnouztZwy0VJTKG+CrJl5BvbDks
	 2ha6+sd5fwsC59hcOG3FxDTYLeFKbvqU8LE/3Z4K8JeNaoWuBf/alkF6nL87sX9au0
	 lxaS7HDSUHKDahN/SnETfA6GbhKlcBZALFMwNIrvGB0iEheZEA6+vUqx8y5wqNlDZO
	 AXU8r/Jgz6uEmV9KiX7NtvFXRUlw9OGx93Gx5Em3OFReG8X0ArCZnPyKKuij5+f9A2
	 EcdqpLzvSB6fVzbrnuY/TaSfvwjZqCz6H4mTfPuEsngf9JqdK69lfwMCU9HPcLNjjP
	 pp/2Ahz87p+Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F50CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951375368.4060.16048812158743624354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643d242c63b52eb0108be0fb3ee810be01a913178f4efe8854494db6f76d0244
Date: Sat, 23 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779513753
