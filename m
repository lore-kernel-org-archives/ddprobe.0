Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223D7292096
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796794; cv=none; b=fKN+ZqiQ7WotLzaYaLQvyEUYxgpHFkokGFwLVsfKHHuCExX8xuHckoUusOK/EIKKabvdgAg4AbKLQlrHcvm0NHvvFvB6ec2MaFcGQmCkKMP3cuI0UuJ3fbgXqXuF4gi6rm6TGw0GNFUUlJb2Ulu+Dym444Nv3GlkfMsGzG4cJjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796794; c=relaxed/simple;
	bh=/S08tZGnF95twFAErUSC5uzPW3rBREUliTwLULHlpKA=;
	h=To:Subject:From:Message-Id:Date; b=JLUklqAtKpdFvjmV5MfXLjzo9IYefe3AVMptxFFCp5Y6RbMd/Kx6FiNzHSk7BAtoq5ZxZnhvgWg0GgCCE1yimb9GJge++hQkkeXDhWBEcpi7kQCcmn5f6JJ8LiQytlqBRRnEAEzMDGSeazFMQ6q2GrB+6TjRQTkCVhJHTFvsDpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRastrZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRastrZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF8EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746796793;
	bh=/S08tZGnF95twFAErUSC5uzPW3rBREUliTwLULHlpKA=;
	h=To:Subject:From:Date:From;
	b=XRastrZ9sfUIj0M+cKoWrf9k/1vLfLefXrtG7xA//mnSxkO9lmg1WVMz3zhx98jzj
	 Jb0p4GqApSYoEvz6jY/WUgC3FSW405ZjeLQUB+N6oDwXAUhBfgSkmQRXFYhlveX9rk
	 kA62XMIbWsA5WrpzkGxiwPg40GA5yPhEfTxC4y2phi9wyEHk3qnpFoeUho53A48tgJ
	 cX3Ytg1xt+Ygvyaq17BeEkr6NXzybwIDa6m+lhH+zdVy59r98xwqjSaVLMAtSiP9T3
	 tRMTKzSSy8MDnDjcgyPFasZkaavlEUw1fZ0tExKYvybXuVo4rVR11gnWKGo2o/lQYv
	 1kSHpJKfw63ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF76C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679679357.28667.4427524693245306333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9781ac04bbed341f594216a536e9350b201b8f874b2f6923f340aa149a1eb2
Date: Fri, 09 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746796793
