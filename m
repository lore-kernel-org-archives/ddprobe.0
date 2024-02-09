Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADD52E40D
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707478697; cv=none; b=dC264CI8RKJnW3AM5Yug+8e4vVtAsHpnO+366iQgnQd7BWBIKBuCkHbixTiViM6gvRA6fsQ6cOIb5panFs7FCJw98MCYMxjRwCj+OMbH49qOzDGNZnpDALneKUZ3mEAXQwJ0zu0cRe3x9FZpt8S0PVu5PzQZvp3gxMQu+mIfscs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707478697; c=relaxed/simple;
	bh=ha5S2r7oF+7MwC09Ed1rlqyynWI9t8MrA018rACHm1Y=;
	h=To:Subject:From:Message-Id:Date; b=iEhcU8KwqO0EhUmFNNY7PYhUPuJ2seuRky3knqIOM9PzQGu5PmL3lQpJ9tbiQJ93/KzmlVplT6i1Lnmn/h6oIsQEtHYJdhpnZcpFaytSXOESP89rpPdAoXDNGPVs1U2/vFRSbyxzMSWx9qUzyfB2emL3/OpPOqarnRPyRxXCuGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKPwmlxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKPwmlxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729D9C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707478696;
	bh=ha5S2r7oF+7MwC09Ed1rlqyynWI9t8MrA018rACHm1Y=;
	h=To:Subject:From:Date:From;
	b=nKPwmlxSJK72QFL8PhaA1gSPTYvFSuCZJT1A9elA3Apo81GcOZUKtqSe5/vpC/BMd
	 buQYgJcpJXf+lEj3QqD7qSPl9VlMVCHXAZVmkdEkh5njwENu9TftNXQpoxpCKDdodV
	 Y257ZwZ2AO2r234KMhuEFDlp3OiYeFjrL1OR/Dr0gdQuh8F1362oYhPuPzkPu8SDx3
	 G9zw/xmafJ9aJk9CoCJTEZ77bgMFiCJrv1rVJoZ7EyN5RJ2z0bWVwQGrCSNVpWgRn6
	 qJwN21Xw8iKmGzLaQbKwKkazsFDdpVPXGosOWQELV0lymu4vaPezldmqF9n6cPvO6B
	 DpSy3Tcjrm52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C57CC48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170747869637.21268.6200291160140811016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67aca360ef00f7ebe72369facb4d2b686bce6e6554a29c733b1b5dcd3873ec46
Date: Fri, 09 Feb 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707478696
