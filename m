Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3761B3948
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736693754; cv=none; b=d//nS5ThWuUAiW3rgTNvvP4jtTeXxRPrpMl9+i4HvoQ6BE7f/tO1fGtMtpgXyqKXIrT5PinWhy3Tg9uanx1KDN4G5HhURMMVL8fTPmV2eS9elCnc+jzWlOavjGFY+kLEMtKS95jsPBHt7ti4wGkk7t9bZ8moAV0wVYtXE+kSjik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736693754; c=relaxed/simple;
	bh=wVg6rPu7Q08EQ1QPcFeJOMTi5elp7wbqmjMg2wJW8kA=;
	h=To:Subject:From:Message-Id:Date; b=aTUs4Mm0Zl86blmFl6ihXHOHQhMIuYJTmcdjAJ7I/9cak12vcn8SuL1TNIJBlQ8QBstDdSYgLDBK06xYVhzR40NEl+I85DRI/3pR8h3lam0WZbeyomeoVVUQ+Go6zFHog2vA8sZ7TPImTuvrqZTHBuktSMMfisfqyfS9/HarK8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEzzcUgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEzzcUgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5690C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736693753;
	bh=wVg6rPu7Q08EQ1QPcFeJOMTi5elp7wbqmjMg2wJW8kA=;
	h=To:Subject:From:Date:From;
	b=hEzzcUgQNa66A+LFP9DiCun/h9Bgk9zT3UtoispxxLOs+CpUISzL4JVWWOTd2D2GT
	 YVOwE5HoNOaQerW4Jeu2h21u3hhNHkp9EKWK8B8nR/eJQiG3TG91StiMgZMvIapayJ
	 9mnG/cS7fACPvgeKe9xdsMEyJuSSbCz9TH20L5XRQSpRcHVDHePEI4D6LIHeYap8q2
	 K8kFgWnY72ueEtH/Owdce0xiaLSpMHTXVQrcLcIXOvhFfH8usQR+RQ+SsETkmoEg0s
	 BIxTj9SJlyDul4jVyRl60xXMxgi8ef02x/dX6KlI7CVOTKmF2thpnkSzgdSAHB8Ob8
	 1ZR6S3W/KT5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91282E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669375358.7371.2890162151779769581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fc5dea382ffe24bc7b306d9f5957493078582f37d132a516ac189093090499
Date: Sun, 12 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736693753
