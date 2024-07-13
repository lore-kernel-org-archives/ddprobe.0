Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F3418C05
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720850963; cv=none; b=cgMWKPwhBWLuFPtBCJfko4gBHGbDjznKxkicNE7+ZgSlmTDMCbe+O/MuCwVAUX7uQIUyN/4CYRgiZgaUblhJSuQ0GxlOXI+JzI/9T7UhoVa1VOVr7GrDEun3ZF0qAd5IquLRcQoiTYCB9pbyKsE9UoWmZSSrVZCe2C1sJHI/r/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720850963; c=relaxed/simple;
	bh=iB41OINcsdP3ScSLIVKk0HGZ4afcR99IzMkbssVvRts=;
	h=To:Subject:From:Message-Id:Date; b=kl1T55HDuuVPlwhcsvrnRItrmbQGoAQWfsNyYXlsxzL/dNaPEb97KMpBnt9hOhzudJ2+hI1gAld3o7sh/bx6F2XnhlPQBXZuOtD6qKhKxVS9EJMADM7ailNyUC9wfcMUt6zJHW0CmlWy4GoOfWbGdE1rmMlx5K8mtCwRzRQOug4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyP5vxnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyP5vxnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D983DC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720850962;
	bh=iB41OINcsdP3ScSLIVKk0HGZ4afcR99IzMkbssVvRts=;
	h=To:Subject:From:Date:From;
	b=uyP5vxnKjlICySx1XiQ3Bsm5dxupflJuyLhJqr9Lq277Fov6wlfGex2mlGbpJs4NN
	 nbschoo0gfemqNVykf9sF0+Y6CBHXHUfBtkdshETNzKvrZV7FaYovZ3GeLUHSqDORK
	 ERn4C6kbARbXn5mzwcXteAiIHNw34b4OKSXZPeTUQzWJgsD6+O4advdaEshH1Z+dUr
	 hvn5SQxNlQKlluKhetuW1J/A+DJ/JyBx5KXkDrRq9re8CitWubr3OyGf6/P+w9fSJ2
	 yjuHdtkCm0bDryWIINOh9Ly2Ccm9YJfzpTv4EJXwMDTFIH28So+1xsfNA4sbyR/D7M
	 JjZ0+F2WXcjgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1033C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085096276.32139.15361644722774275035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15128675e66a03810e936243754559cdc181d1866a27f79d6334544fc3a80afe
Date: Sat, 13 Jul 2024 06:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720850962
