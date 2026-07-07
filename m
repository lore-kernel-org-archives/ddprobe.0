Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A76E380FFB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783423114; cv=none; b=gDIk53DIP1ELwWEzeggUDO7GqPj41oOaP506UfiNSpuCqlrRQdex0yqSMYpenXdpzNhNkiQOQHPbwXxG0DrY7e5VvX1VDhjRf3JDV3YIkyWEWDke+jag/VM2oWiHhf/9k/Tr1iUuNOAp5GuuL5IMBzz482vHYAPcVRaWnGIhQno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783423114; c=relaxed/simple;
	bh=V9bl8n+E+/t4U1+0OnmXPWqzupwg8kDQjDXahgdTZNg=;
	h=To:Subject:From:Message-Id:Date; b=dviuHkRWlxxCk5wlKAebZSRFNfHNMrADr9edfyQw4IVLnCVb0PZP9XXEv111sJFwdPn3p9ekr3l988LqA6GFjGJKzWo5pJsSrHbfUYiQ9ZS6XcF9M1weyCQY6vAxzK9E3WrHkxJS0DKo6iqLX7jNRpTuL+P6kW5RPBBENbVaDlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S7M22NQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S7M22NQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A6CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783423113;
	bh=V9bl8n+E+/t4U1+0OnmXPWqzupwg8kDQjDXahgdTZNg=;
	h=To:Subject:From:Date:From;
	b=S7M22NQxKSKVKbH3Uz4aUep9CzH7X4NuE+vVD6ByjOoIZ1gvFbx/Mm+Ni3FYbw+Un
	 /IaKO8EFtpBe+MecwQrkFyjwVL55BGMDwgJC0MQ7XUzb/ndaPnlXFCGND2vEivf4Go
	 FjDhjzxR0reQqawVRqpOBRl7sV5vLJg8g2Hi8SsuoldZ3KLn4xW3nNiWTdP0uFqxgR
	 mjW/dJh9E25O9AQjATSZf2d9jFsPLl/DLhtA2FUXDItrfIFmCPk4cxEUZvAT7Z8GKE
	 RJZABxjNhKxvO7S4OGQPnJFo4h1oZg64JwP6DT/Grde3at2JXEn+ovA+Avq2nPeEJ6
	 TrZcHyVpjELLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB4AC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342311368.12113.11217116114274708440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b5fd3e88c0a50e8a7cb084479f9f08c33422266b3d0007823b2d648811af2a
Date: Tue, 07 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783423113
