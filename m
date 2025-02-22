Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43607BA53
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740257935; cv=none; b=g2htO3T8VPGkbsAZuFTkaFYAQt8Tpl3QNV/uRFMfi4slATqCRgkrT1oArepxRdYAcK5hr8C5t1mM7wC5miZUMa412t3QcwwW9lvBApfkXChwIXxM3P0AfQLkMH7KmzQ84aJq2ZPI9+83BrY28wVXs6YfpIijg9vE1e9HiuWz3Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740257935; c=relaxed/simple;
	bh=/JR/nSV42uAtzCREr+3B6EuIJqIZ5zgTVrNQIKdFLNc=;
	h=To:Subject:From:Message-Id:Date; b=bbVWf88C+5iGdZ0ANKemQMPsY+MUkBytuPLQ7/tXs4dUubhZW2JRqhgY6mx/fNllYq1pWqMCYzy4pYcaDXbwIc+0B2DmKdN2XwqtNezCEvex0jJ/gXJugjNRa5fI0z14u9QVM/VkmpRAeLGa61grTZsf1LvtLiRLEvDbFa/fy8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hwzk7Fg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hwzk7Fg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC471C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740257933;
	bh=/JR/nSV42uAtzCREr+3B6EuIJqIZ5zgTVrNQIKdFLNc=;
	h=To:Subject:From:Date:From;
	b=Hwzk7Fg0O6KIg4loce+mydS7J4GLiBEMLnsGQ5Afl0TMboOaEXPcv73XOe1SlFdnV
	 e4f4WgvxMXcP24Wovl2kkzUlmCO/M8U0CnfAWTM9qyyYZsHe+QLVmATEYhTuXB6MNA
	 ToJBgCZOidRfZZOQcq7XALgwLBR0JiKFawpJpW6VjNecaGqx5VM/ofF5Of0/Ta7iem
	 ltWp2rBv7jyaje1QdioXLIpYKarwcEctoPQJ46bluEDlAmVxz7hOIAIruCt6+61zc5
	 wWC9slXiJq2wRE97t6/Pze/83fzIuIzLX+JAbWvhsfuiSzDx+86EkvZZ9JK+DC3/9Q
	 k4c2d4PnJyOyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BAC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174025793358.8393.1457469575151671615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f004102914e2f9b9f6dfd04197e99b020b1f30749e8e409eb07446b75291ac
Date: Sat, 22 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740257933
