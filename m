Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3727C2CA7
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727021754; cv=none; b=d7yKsdSxXvu3OyizyosJ4CIs9mayph6VHDu8McaS4QKfo+JFcqOjBdSZVAyU39+Pjt57KjjIiibkGa0pF+DefvRPZbT2KWR1TRi24IyooqfF5qvO/a39RsEj9suqdFqZhsfySRF7OwFycZDoCDzOdFP1oubSvzfIIGnTE8Ui1Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727021754; c=relaxed/simple;
	bh=hrXJeQ6fVSV/XsItaj3bgP6UOEUwCDRXU1j93XnR0jg=;
	h=To:Subject:From:Message-Id:Date; b=ZqBZch74dLwjax1uNA/YibuS7VekC+5tq45JiaCVOK/Zv72cbJGyRaxMJiMoYZ4h3s7hyi0mLeoDXKm4Xbkv/wv2aEuEeLe8qJjv7rjIcNrlRI5tGmJXWP5Kxgg8fj21XKyAt96vIs4k3tWomHKz3wsGeALh7H17UNjxHixYWT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIRZAo44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIRZAo44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA47DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727021753;
	bh=hrXJeQ6fVSV/XsItaj3bgP6UOEUwCDRXU1j93XnR0jg=;
	h=To:Subject:From:Date:From;
	b=RIRZAo44gOKnCAQfT0JKxDuOCJlZKXTIOTVMHKufMjzzHSIApy7LnYuuUsTgYzQzu
	 CfLtMrRHyMFjdDrfWZqvIUVlqo1BZMGeHPexAbLozFTLkk7V7dcLcleHtjbvO1el+2
	 Ey6FnOc++8NY5iKcruQYrdiyH9DhBcYBpnujfZ0CtMEL23kIo+hfMZWXeRh1Meg+3I
	 +JT+OYvo2a8uiCjHZBrt8X0P6c6DbgMkVQr6xVcQUQCxptRXZhn1s+M87awjmjq32J
	 L3TSfL/bzeGZ5ZL32c1sYpktsj0uUKL49oVW1gZNn359QtrO02h1BxqVxo/HPrbBgJ
	 tU9k4gs0MZ8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A7CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702175360.19818.12357006022112192118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a656f9d1e6698475ef11bbed017f5544929774fc21e2d43bcc43acf5fcfd58
Date: Sun, 22 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727021753
