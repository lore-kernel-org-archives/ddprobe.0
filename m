Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212FA3176FE
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755290394; cv=none; b=QnQYHEq7Bjq22YEfZ1i+uM/f56ZDb3hAfi8rFRf50R4nG2tTH3I3nvw/B9/U24uZ5mqSpYno+SR8ZrpOe1Fk1GAKt2baeacVXilKYJcmYcM2It1kxTCrAx5wa7K1jGk8Haz2uCbBUGWGa/LVwp+GHp5oKFfjuLMambaKyJGNNAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755290394; c=relaxed/simple;
	bh=c8B6AxhHsrmQ9iSa70z63Zcj4qW0Qh7AaSQbAI+tLBk=;
	h=To:Subject:From:Message-Id:Date; b=Eu6PBrkPMIuKA4/q8DWGVk3SAQhUGrwFTDkiJKcrnvBRqUZua2WXP2FQu3OXDnQcBDExE6S6Y8DFFhYRu6O4LB3J52vwIWjuIuvhLlzWCeEOnyzR7+pIW2slzM+oYGf+j0dY9+3+htSVXfVF/y/1+k8jt6eLtGe9QnMP0OCGg98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pev4WQm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pev4WQm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A86C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755290393;
	bh=c8B6AxhHsrmQ9iSa70z63Zcj4qW0Qh7AaSQbAI+tLBk=;
	h=To:Subject:From:Date:From;
	b=Pev4WQm5GFXV+SXzDM3LR44dO83lZ0R7GxfOtFN4bwAE8YJni7MV8sI7UsRJwlcIq
	 QeBQMEkS8n3RJZRKVLwyYbgxwONn3yp+vYPRtWP9Y6sYyP8RXDap3vvGIXOaOhFi6b
	 NiuQnlwregSSeD3bzm3QLgMnPEC6g/gLp1vN94XmY1JtCN0kwosoEUU+co7aGVgQK3
	 DBfPEnQfaBReMknG9g6DJHoDSzGKdc+dXE04Gz90YutrZPODoeiaNiFrYlMypIqYax
	 jTVcz4wt5LKp35Uf+JgrxfRCwi+Av/Imsq9mUuERCAtvJeTSokT/cdLi/cMH+RxxNJ
	 MEo/UvjTHNzSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92226CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529039357.18704.15192689918213884200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c547b9c93e051ea702f125e9e85895931e95b449d46c22308b9120d20f1e165
Date: Fri, 15 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755290393
