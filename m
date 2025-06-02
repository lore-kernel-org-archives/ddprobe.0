Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD6F221540
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748870395; cv=none; b=utkxbtFWlq9EaBIzLJXk2gLOUa8rtmc9325XvDeoFPA9BZtIO3+oUX+o4oNWgkir1AYHHolrMEc4dJ8Rdkqm4YtwsUbCJKEnHzkdq5K0Gt8au0irrnHQgjSqx+JkqzGXxkYzydMys6rh/LwLW75kNkvV2h/RR21SLYIHh2M5YDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748870395; c=relaxed/simple;
	bh=wkAPPzgIlOBuzUWJvXwOFDGXx3Rd8VAM6RUSzPOgUWw=;
	h=To:Subject:From:Message-Id:Date; b=guDXE5WYR13j/JgReOrCevBZ9Q2Ii1z9EQImeGiFUYn7k12C5WbGoYOo2uAh7uFFFIjpaBLBdppHHFKhwsHLs6OrDrC1gOMlsDPyfmc5Wga5oqr0aWVEnABbwwEfKWlo0Hhuy+GLxgpYAVvVzmNKsWe7eB6ZY9e6a7tpXfp1yAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRTTf8Kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRTTf8Kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69BAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748870393;
	bh=wkAPPzgIlOBuzUWJvXwOFDGXx3Rd8VAM6RUSzPOgUWw=;
	h=To:Subject:From:Date:From;
	b=SRTTf8KvH8Ios9rJ8APA2KrD+PshPl4AUw4l1iyAfjU5ZUx6FatNKygB9j4EcLshE
	 qE/k1x6mMwLlaLFMpYP73y/hvQt+0cS/D6Q1pUiUiJnhRHbl+Uf8VMU5NIbqw9FPIQ
	 e0yFvENMwZogcwsyfytYmMD2dGlYn3aEVZhqDqJUpXHXJd+xmnd5LvaE+bUzqfbi7A
	 0fTeUzrvMqdz1CHIiK7YOqVdG9yn64NV34Gkt6V5D8IZmkUKJ8dAW1D5X3zN+qezMH
	 td9YLiJlhDQuSVkVyC2XQuSsM+rGouptDjLWyfrX1/JdROmTSG7gLLaAvpi3aaxZFJ
	 247L3dq/7vkow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4FDC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887039357.24418.15197622888139369590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611ed46c926d0ac4e06a91aa264a5f513f6c3f893aaecff88c2bcb259861fb84
Date: Mon, 02 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748870393
