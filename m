Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEE7278E63
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744368594; cv=none; b=hy1ulLsPkVhIPNp4aIvv4wlaXgKLheb4eMP4Wj6SVZct6yv4Hr84eDojh/nJ7ATw0TS0vOwJMdir2kOlNWUXAYJJvZy1Y6iAStKJQzvJfDPqZXq+iquNFmDMXjm3j14tfdEsG3LjmgDVKPU7MkCRGzXd+vGH7YoX8Dn0GSwjpNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744368594; c=relaxed/simple;
	bh=tP2kOo3ZEKersCtrKNrSp0eHvsfK7MYXcxFJd7fk9es=;
	h=To:Subject:From:Message-Id:Date; b=MvAaTnbwzKkzBpA1DEsc/jzu/JwNUNVfxuRtGbcj6Crp5h3xoVxjxU//WbAo8CIRDZWttChGe2irdU6q0YKXTc9lwQx4wcO3gasd28RhQ0+8uxbIQ5JXiFl0FFxD5sCfIQbf0Xc5XyIrhYd18hKW6QpRIkOC2u+KGcLiV8TWLAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wew/WTWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wew/WTWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1031C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744368593;
	bh=tP2kOo3ZEKersCtrKNrSp0eHvsfK7MYXcxFJd7fk9es=;
	h=To:Subject:From:Date:From;
	b=Wew/WTWEgma4Yo6Hym4PhBt+20IIIBMYiZeacVgs7VDHmuGA3uun4T7Gq2LmDwTNu
	 /8QlDH0kZ/JnXuu8ZWxiCB8dL0HeI054t4p8xhAi133Qc4I3s0HukY7CmcYgMeRqgC
	 avHNOzapVwcK0DZ3KuJ6BYM4GTCGS6KdFc6Bj2UGlhZk1clle2EE9XVef/jWl4JqjH
	 k0h0xRj8OANx+MHTSFWnQcyHpD+G5ogqmyk2vCFqVFxRnxgvw11F7qGnYdaI1Sta5t
	 QY18dxC7g293GvIGybxP0HYR7fpqbqOPgMJ450wCwOtfkyy3AOD/QRpZDzf8sSpHvT
	 yb150ENw2QjyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0FC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436859358.31474.12181096375537909635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4052470088d44409de71b9fab1aea66b5204a77de612bef9a5af606afe53af5e
Date: Fri, 11 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744368593
