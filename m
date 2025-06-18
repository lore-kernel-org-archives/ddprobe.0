Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261192F19B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750264194; cv=none; b=LahnvCxHRe0XiVKTItU9NLKQl+yqk4ZSeSm7w8Vh0sVF1JmVFpFPDw2XOphWNRV9ARhkcaQTKJKxLi1bkJLoYE41vGX8+B9I+VjhaGjFebQBDjWcjjcmw76wucc4kZ9/F54ZNQZJ1dsuahWF1MEVDBamT7TU+t9bgPUa7HnyJi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750264194; c=relaxed/simple;
	bh=WBjIjx6eRImee4CV7BpC6RIT4jusBpP07Zc2dfrRmr8=;
	h=To:Subject:From:Message-Id:Date; b=IOnRX7c4pe5WVJppTnQAv/qq5xRitw/RuT5xjL83Jhk3xO1s3nr8p4OhcU/5YpG36YiHadysU8LhQktcr9gLRXMZC1uDdqexWMzbrLdvNQp55BwbCU5LbMm8Xa1GUE3mT9yG/OtO1RE73MVHq39pkOGbQuoIxW+LMhpkTqXlZ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0QUFEt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0QUFEt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C45C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750264193;
	bh=WBjIjx6eRImee4CV7BpC6RIT4jusBpP07Zc2dfrRmr8=;
	h=To:Subject:From:Date:From;
	b=N0QUFEt5B7nBKaBolzgnfrazLBMZh2xAqMpMl9ESHUInmHCIh8oetpEzn+7Nzi0vZ
	 oi4fQHCfLVeKv4G8Ozlf08MkbltXqGJfxc11YNRRDaQLq5eXhQTCmY6RTNz6WEUfkw
	 FxMXiX/LPfb3aZgPLAvl9m9mZMfbAw9waZvcuhZboLkWsClABw1UKlYHHSMLjl36C5
	 2Qb+5chFpYxQK+C2kI6K1WHdU7nsDiTCrPeYpA1uvS6KzctJsUOtWQz49ZSULFJhpe
	 DkeEbDICRiUbKi8ka/GZ0ExgGUPS24gfhGKboG2EcfZSUNobdzAIaycSflHNlLM+Mj
	 AaHq0SFt0Ih4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B7C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026419358.11763.8779555241589646642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12a1f0a8d2cda22540b74bbaf69e40d74a4922010b08907f2a92640035ed10d
Date: Wed, 18 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750264193
