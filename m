Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B7816EBE8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718188703; cv=none; b=KtA/LgPgpLXnEuaY37X+KAX5HCCzZAZ/sCLvB6TI+h0nxS0NBIzPKmla+WofRTbLxJrKstXsbqg8ISr4uqHVoyttPNsl9vWVNQbzC8NCl8FLqNbZlm3tUHwaVXgHaH5akREkv9AINOfICMy7QTyisbn8VYwqt39S/2mrGo9ATJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718188703; c=relaxed/simple;
	bh=yhhhl1t6jj2vcNUCFlQNG5ggfeobPCK/v8NYgbF59Lg=;
	h=To:Subject:From:Message-Id:Date; b=Suy8zCDEv5i8yE8gPcoofFtksYIvAaCM1EdX38bhukM4iOhVrwBaPK+Tsmn+CL/4BxZggCRjjPyCaMd7lTiyt7EOT9i6dOyZNvdgza9Zz5IlzOCBVAxL/Ebn/4AmlvBBWLf44DE680qpdYm+4k9ec24AzKsmc7IGAPwE9KS2IPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HJXbHgbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HJXbHgbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C82FC32789
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718188703;
	bh=yhhhl1t6jj2vcNUCFlQNG5ggfeobPCK/v8NYgbF59Lg=;
	h=To:Subject:From:Date:From;
	b=HJXbHgbom+siX8j9fzYMO3lbDWgvlySZp2p81vejrvkSAGLy4BuJbWDmB1P9WrhdY
	 SIUJaVuV0dLSaQ1Y+XzmliuUBKV5DH7zAbSxxo3x1uLMDWbU/sI1Uf3N7loFfLlEtC
	 2CkOHnyRJWe1N0Fh8Hx6SaritbMf6QehArVmCwTzVxTm6x//fUVzv3rKdONw1BNnK/
	 lkp/m82kN6yLxJM/Zc4cYV0YP3jXnaU6iNY0cx7kKbVrUGv3dfhbZtYzpeaOJFtFss
	 yectt70JU0e9BeJ0Pz6zstkXHOw18p8Bp2TVNUpM+J5JvybVsC0T38GFLFNTZ/aCfO
	 U3hDQFUFsqVfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB601C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 10:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171818870295.8077.9457980622869257608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb8a395174e38e05b5f2974f727f4ffbd968487bdbb13c8df53122661698c13
Date: Wed, 12 Jun 2024 10:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718188702
