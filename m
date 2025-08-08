Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1285126B755
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754672394; cv=none; b=ui/5TV5+76tT77zLG4umq9ZzAkiKxvR/kLoZi9zatdn/GFxeQu1yMUajqzjqWfLJA9pOxF2UvFnsaK3jOhC8VLf6k0bHzs+m7GRCg7IO2uwC2vEKiYN/cnEOZiwgA1m5IZzLqhugtSEYCx3FCS9gqyWsn6D2oyyHwIIQ2FBniiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754672394; c=relaxed/simple;
	bh=w76paXQNgvnACAMaGSAcFblFavfYVDTmiiJIgscypM4=;
	h=To:Subject:From:Message-Id:Date; b=fGQw7usuSsh5kFLmFjq2ViThjE9hDaYM5MZmbpkRErARKS01q/4tZUNNlCmP9uytvm4shhVRJSuh7fdHY9zkUtIYHn6Zo/7HJQOqr7TEa7vFAIHyMWOD2lx3jKZGcJQQIIJIW9mSZTwe3K/bDOlHeI3FOVhjp4G5KU7eecRgDGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCTDCj+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCTDCj+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25ABC4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754672393;
	bh=w76paXQNgvnACAMaGSAcFblFavfYVDTmiiJIgscypM4=;
	h=To:Subject:From:Date:From;
	b=oCTDCj+lyNH0GuFkrycJqt4NyFevyVM08v+Fas8/VznTgh7vqJtzvINJc1+r5p1oE
	 0DkMYwRIg/0XamPc7eiASXXsT6BwUb4scBMc0F285YM0Jm7zPJMlEEmilf9V+uJRY7
	 Con7mpPXZjtzoCvt4gU6xf7rfaVQKNWHbBa42zA1Ct+Dt9AV9wPnExD492kOJPpVmx
	 UW/rc9+ool8ggW9QhhRdKFVW9qf3GZP3q7gXbwKO6QD1jxgV3PgeLWDzohIpFq147s
	 orMUiOikIVtvK05nC6PqPXsmqOWkN4I6O7wqfnbCj8xUO8HbujLXAOTiw35+0rMmmY
	 Vw4D0uULFnuRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C9C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467239358.15531.13690349180709026384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32b545dc52653f9f7670e537de625a42fd8a819ae1da225a92bb9c62b488e71
Date: Fri, 08 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754672393
