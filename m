Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CE03624BC
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782120394; cv=none; b=cbsABnxzd4xYI3fALtJfbDw82HrFtBFZ/HO7SbZ+AZvdU46Rn0tFlsQxp+rC+/VumVDy+Sjb/bSj2kk4oPR9KzUn9z2ob0i4O44hvcqcBM1mS5h/fAEr92V6UgJQMYzE5hywXq670QjeRVaJpGu2OCV2/HG4mqANn1NNwUhevHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782120394; c=relaxed/simple;
	bh=15v6pGLXli/5Xl6uUkN1+bw+HTlhbITplxCwMhQu8yg=;
	h=To:Subject:From:Message-Id:Date; b=u86VxJa7tv8SmyYJj3HHTg39StcE0yVvPhMTdrZaRkLnAycDTKSi49tkWuiiz3mBqfMF8L/0iHI0VzAWBLFeAse4bUhuUZOiRipJdm9v/+InebuOv3mWoVQRALJCVtjgY4LmIYVazZ3+yWuxNnzeeBr6zIjeOcEON1JsBcvtdWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7/aJ1E7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7/aJ1E7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5FAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782120393;
	bh=15v6pGLXli/5Xl6uUkN1+bw+HTlhbITplxCwMhQu8yg=;
	h=To:Subject:From:Date:From;
	b=Y7/aJ1E7dl30/yC4W0af3rQRG+uNnZRzZ9PGwcfZSZLVrSyEidAIDJkZMAdoBU18D
	 7W5nhXA9XyLPlam3HDwYy0ToAx4SOa4cql9Z/thGrPR/Kn4wIjefN++3Nhr4h5V1Z/
	 B5Gu2sJiqYF8eDpBtR7hQqF8ip+b4J7BChEfzhkJWLrGtaoIHZWLktc4tiY2UfbmHb
	 b7Eh+vKUxj4ifTK+9FpT2NG+BXYRKW9aI3OFXPKLT8D7kPZc1H7IE6P8xdUe1ifJsz
	 /BOIKIHh2tixS+HlAaioXWUjIuPZmHGQQk2OpOg8QjJSzRWy+a9KvgMac3GNVEZ/u3
	 JxXsvR3H/cqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC768CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212039369.7579.550763977527422844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bda3b3f91df075bd8df53d70ce232676d6b56677e95c5f7c0240f5889cbd97
Date: Mon, 22 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782120393
