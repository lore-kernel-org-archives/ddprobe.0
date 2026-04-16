Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2649D396596
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776338854; cv=none; b=VP+6LG/WCAK2jZs9qI8k3NoQx2zmeunqwcnUtrt6Py8QV7DBtvEXDIBhOYtE0IpZrQeH0Ax+yx1VEe6KxTr3yYVc9SfqHBRUw5Bm+dATMn0BG1DXoSam3eceq2obJr2ycJMouo9Sk+kOz7dzcoVXXcxQgcRhWQDU6wR6xZcaYls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776338854; c=relaxed/simple;
	bh=Nu2tBAz0KsQDMatsheTkgAO1uODqhDbFHtR6NPSQc0Y=;
	h=To:Subject:From:Message-Id:Date; b=EG0WWIZCFMlKVaUX3JpxNES+aJYkcgf6CENtW13xuO90pHG9/uqUBEEG5aRWUc9dw70aTwIZQJdHcyAwXakUf8ABeMzJXZKlsLHsUdpoe8RkvBY3TKCFFY55gUsjOAmcbyS65G1uRy2dZs4I8r9nhECRh0mKr5GyuBqbBw5TdOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALD3ExJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALD3ExJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB92FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776338853;
	bh=Nu2tBAz0KsQDMatsheTkgAO1uODqhDbFHtR6NPSQc0Y=;
	h=To:Subject:From:Date:From;
	b=ALD3ExJ/mjXSTzrFqG5UnA0gajr3wpITxFDhFOkFsgRoF6JDFyFZqcVsfzE+cCx5F
	 8jpqr5A/5VRb+UeIJCO1c7UAyIhwehLujd83pvYsIw1B+6hVfrGNcBbkt9UOniDUir
	 l9KTg43+9J2rFzXyCfTBdc2jRVwx6a5YxdSjd7dW6B8SoNrV36lS6vd4Q1ANjkFuPm
	 1h9YyUtxYAbK7oOFoeYIdMMYfUM369CVBXbtKNvU7TkBthUShfk73NqMmdfd4ovtNs
	 ldGPawrwj8pA0Nh4Ty0aH9iShvpdFZB3IxtymS16r0u3BMJFLr7EDAUw/B3BkqCvnN
	 Xy1Tg83XOdmBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9839F8A15D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633885368.19759.6374650816171933595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a945dcece5b20756f3763e4a8797276d26844ae738b0844b8908e07dc36c760b
Date: Thu, 16 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776338853
