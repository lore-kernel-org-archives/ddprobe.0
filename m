Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22216274B26
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980914; cv=none; b=evXA9Wf1YcgUT8P1qAcNwt9P1MbF5Uz1PCZ9EwHPz+AMnB5Jmy8+OvCQHYtEHfXYHzrAglPDUo2vh9/Kp6urW93qyGybmxHPLStb6EGs/NSrv+DmvzudmOQP/QACgFs9s+FlhHlL5pfD+rPWWCf1L8AZhKQqQjlsVtaC8NGnyqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980914; c=relaxed/simple;
	bh=KzS1pnytm7gRaZabI2OugvpmPGM3EytlPpH4rRA04zY=;
	h=To:Subject:From:Message-Id:Date; b=NNPksaIHcjNT3iyCOfc+wsFhLrq/q2o5mRlsPfPpmeVnfwVSHtB7itwLq59cAOBshh5gEOTe9KQ0Vd/UxeOKhfoBXBd5mxUQq4XcrfdZvEKFqpvshpoiHErDBHylkkoNCvuOKmya/wyEvU93qnkkRQswNmA9dI9mdqvw0T1vVS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJICPkJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJICPkJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BADC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763980913;
	bh=KzS1pnytm7gRaZabI2OugvpmPGM3EytlPpH4rRA04zY=;
	h=To:Subject:From:Date:From;
	b=WJICPkJHYzkG0NsU39XR6RZADNUBMgf03me4ZzoNYdHmLM003smT0uY3zW5bvEUK/
	 ri5RlYqq6DH08p3JMUuoouOHq1hGqg/ggT5lc38p3C/6FtBEIkwToJbFsRKURcClvG
	 hkswxK+Rbq8ARO20KS9VGApVLUNoFO37wMWjJ/WDz9xAykR+kwlx7h05pme+2XzRQO
	 NcTIvS1+CXbxfkz9/uv61bJs0NepOwjPEBhlketKt9XjYrTPwRPQuupXThZ39AyCLI
	 0iaclXyTk6D9iPoJtrZS0KgsHj3uaXE5L24vlBiDRNIgxnlIFRvMIMDkC9AnnJCyGR
	 eT+9zc5cn+2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964C5CFD317
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398091360.5151.16931767233668788284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4e33c4d68ac3b54545228d0ebb4d9fb64e63431dba13724d0cf8895cbc0c90
Date: Mon, 24 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763980913
