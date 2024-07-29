Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB38140E29
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722294954; cv=none; b=IbuIsRnZq424FGrCAS5kcj8918BgW1Y+avE/k0+Treh74hkjtIio8Y0oYPBDz4bTY3VGeq0a21vpNN7Mz45h3zW/J1JBLbZS2IINWvZZxcoQVMr5CZRlaHwLyqEti/Sx0FqzTt7SRAn3pdGPh40gdybZ6vVrkDCMwEgxlmqbVv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722294954; c=relaxed/simple;
	bh=bE4kOOnXhzcXiDldXCAY4q7VuUiO6eqlzLTSNl+jBmY=;
	h=To:Subject:From:Message-Id:Date; b=eauFOn3F83jgLFpmb+gOzYWo+L4u+mIB9vRgd7juOvdLNmb9AoSTtiAiuY6nGB7psxt9ztaUpgtgJBz+Fs+W4rysltXF465LOmW0/lXMrQ9gzFDQr/ivTx+RTL5MP6JyxA9hRjkVq+R0haLXnEckr57oFCIjkyrP0bGPpNEYfik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9UeU6bD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9UeU6bD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E78C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722294953;
	bh=bE4kOOnXhzcXiDldXCAY4q7VuUiO6eqlzLTSNl+jBmY=;
	h=To:Subject:From:Date:From;
	b=l9UeU6bDzfGmtGdbMsH0mkl1EqlbMAqid1B2HRzrF9hSQBfCx2ysIWwQo4SROQa/k
	 dG+50S3k2kV27kSsj7b/t82bpR5pdI16UziptKLkpQoTsbpCaDvlDT/VWKlpVuaMQj
	 J3R09PIMC4FgM+3uRII2iF/DPuTHhK3McYjJ2Z6xELjxgi1zkwD31u/2G/GjxGZMp1
	 xNvlZfyRzBsfuoGAu0/Y41rOWCQgsi1LB8cNb1HREKaXqEhjbgWeefHEl6JXiPu8Nc
	 r+JPUqDGgqIw9fY5uUVTWsFFBA4dwnfnkJtYrf5x4kqLyJ/AvCX+GbVVv1ePMZiiFJ
	 Xs2DhIDILmuLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B3C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229495360.31462.14038852619551168288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d689de7826fe6691999b786b797c63195781ec2361d3f23b4987c49f13d724bd
Date: Mon, 29 Jul 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722294953
