Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469822C21F4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784192914; cv=none; b=EuYig8OEn1CjD3UthSNjpb3QvGQ9VGIaWBwYojA1pKy1SaD5ezUB0gNwLhLZfI8akR5YMQH2V0FuW7Fstz1+pHc7KY/3EETkgHZw0bxbyFmcHXh62829A+z9YYpxH1wfzna1SASB0Jp+sogNEtNZDue2bnAITcYY+d23AyvtJ5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784192914; c=relaxed/simple;
	bh=rdrtX/o5dJGdmFhUYrhoZ5GuhVXdpj+xZWdU3ZdkwAQ=;
	h=To:Subject:From:Message-Id:Date; b=hksPo09qYXQQMzoJaCZ3PdxlVfUDYuQPDFT+tlY3jnS+WbXPAKQGluiMNhrrrXoc+PKPFj+ySDoVxQRHEKDtyDJGs8BBVRuTX+6yEVzGmfzGI+D+iX/4kkSKXygML5xekiyZB95PtCGt+DoRFOMmZFHXA4TW+f+7V3Wq+l/ja/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaXawKal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaXawKal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A0FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784192913;
	bh=rdrtX/o5dJGdmFhUYrhoZ5GuhVXdpj+xZWdU3ZdkwAQ=;
	h=To:Subject:From:Date:From;
	b=CaXawKalPK9yWN0JkoUSx44ggczCBd/b8BxuihVMAkhz3ngbY4+/GlhrXHyb+Uorg
	 XJ3HKSYobRKrbW7OhrvhjH21OvCl+45neWdDIcQZHf0eETysSLpPNtyPbDqfN+iJiA
	 15Cf/CnsvJp4XU7NQ2/2er1cvSllCFAFXvogBvKPuoklzxNkBpKtYq9Jbnjm3V0zgA
	 v4TNP9jhD0PUMcJrNzn3wtfFJzY+iPeAoJeIpw8Ki03+6nHfVsGhQ5NZNz6kaq8oFv
	 f44H/IRUqvP68D/BFnrS8JG/Ccjk4vSV/PieUtpFvpw1XzJSDD9SVZiqEt/UIkjoiT
	 SAgXPYJcZSNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF176C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419291369.5668.7351663979942505869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7765d31ead7d9b17ba9446d417c6fa374d0403bb7f80a9194cb9cc495bf2a7
Date: Thu, 16 Jul 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784192913
