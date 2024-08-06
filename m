Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598A95EE8D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722924354; cv=none; b=rC2I6woTLTcQd+pboso/t+M3l9kUeRUjo97hDdFvEqmDe3P799sv66MRy/rHovypj8eu6vEBO31CAQEYyMgyVy4q9Se7h0gDcKOxFvogFfnhy5+8SpPKXXi5k/7YvpH01p1lAEzjTK0gHckxNhTcy8FjVFFkYf+qFbLTfLMhD2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722924354; c=relaxed/simple;
	bh=CLkL3VR89e9EQe/Cc2hvyav/iqitbnYN9uN8sBFqflA=;
	h=To:Subject:From:Message-Id:Date; b=OZ97bPPa4V5ZkceFwtp91QckiZBa8GJxaFQDnm+ZbkSXEBQdIM3ysEN9h3k1JvIRie/42mW1opOg+DvrjhXkSe5zFS5FX1VR/QPk8OaUCNP0Dr0oabewO/2fi/MXEHzNUPeDj+fnloOH3vJ1W+PY9QLK7qmOvQxTwc2ScuS4Dgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7DNJlaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7DNJlaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B6AC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722924353;
	bh=CLkL3VR89e9EQe/Cc2hvyav/iqitbnYN9uN8sBFqflA=;
	h=To:Subject:From:Date:From;
	b=X7DNJlaP+HIdlzFBWo23DRivhvzbJlZAS6dixbgbXQKDkr57C8KC7HT8Gg2Rud8YZ
	 NLQGqJR+PCwYxB8mGrQ3CoMuwwFOzXdClPSeAfVoC/TughHANSh+l34mOV2hmUCzdx
	 YOpc9T5aB0xx2mLcOe6gGax8c6HOpQxhEAn6iCzVQ1zZHbzjbKivKpH2Q+++3Fxlm8
	 EO8A2MKETj3+9CM+m+V0G50bFNoi8E/wLM0El50nHBO5hgpiD7teBCyi6QwLcOP5Hr
	 rKSLLcPuN97GmAkF12vFwFZjrsKvA863J30fEnHGlKK7wgGM9BRw9AjrjACmAmukXv
	 iVvaFwdooLVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEBBC52D6D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292435363.1639.15581836399175160210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fef9ad820ee6a767c4f528849476f2f01e90f859c21593c0e9bb3e2f5b7df62
Date: Tue, 06 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722924353
