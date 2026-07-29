Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A9721ABBB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785289834; cv=none; b=AeXqhNHEWXwuo/6qsnZqFOMTrvzxZ+UMF2keCXc52uq/MGtoxrpd/CJryl/eswajRgKBqT5K+4F8RTV02rzPPJ9vRRMqDawkwc0kqUc75w83v+0FCQD8HOHclIN+fSf1MqrzGMMjC8oZXtIubUU0nJeKSs5Ceta/kj3aXaTRoNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785289834; c=relaxed/simple;
	bh=6DauNqylPfmx5uYYrf1NHRSdR6g/DRrduUYgGhJjQGc=;
	h=To:Subject:From:Message-Id:Date; b=pxT+Mb/H2AzCSriedEjAeJgz/tEqiq5KCIOxMEKLONNK/VqhNLWk9G4jHi8CMdAi8q3gvUTeeIHxaDNA3l6FO7YywS0r2q4Ikw0V42ntX2HhZwAjEnPO3AxRbHFqocZW5FlTqYNvWY98g++6WM6Ef9uF9OYBZKDd6vFwpJSC6w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZX0Nhwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZX0Nhwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D075AC2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785289833;
	bh=6DauNqylPfmx5uYYrf1NHRSdR6g/DRrduUYgGhJjQGc=;
	h=To:Subject:From:Date:From;
	b=jZX0NhwridUXxzbA/eH6pGgNj7yZTk8ROSj3riDVt7d9lOnEnoSCPqpjdgqC0tbzh
	 W/zjZCDTIytCJrIVAL2eCXS5rHCTV/S6xXYWM/Yx4PD2gU+E2GapIy2aPukimP3qK0
	 OWyCI3cVPxQd1fCcCVqrp4U1R9o4rVompNZkNUITRkW0b94X0nWy51H0LqqUH3GtH6
	 k8mtLCFsgjXgy+rp4kofzTrs4vCUWS7BhwO9wzDuck3aDubIBNXw9jWW3d8xxFn64a
	 zO653lB3GbEx6TIK8yxsc2bG7mtAGyq99FNDLQ+Rufur1qnzstSLIiFLHg6rWVSCNx
	 Apfe0OHG5GffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD29C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528983368.24691.9310190678715568904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c103c46087d3dd832e1c85455f238c90d563acee2b7f8ff1a1a0c68667e9ba6
Date: Wed, 29 Jul 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785289833
