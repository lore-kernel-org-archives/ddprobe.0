Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2756C314D36
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760513394; cv=none; b=i6B8zPgK+hVyYGD5VgiJFLEweFpm05DLDzrmwjlrh1eKdqf0GZGuXQlfdby7G75yD+l/ZCfX7gioyva3DGlmDRGR4TiBtgoYZK5BFBppzHC0YK2K2G2VAEW7+lcExPvMpR12kjY7SfLHpD8qmlbzJJVGS/JBpXE+0OCWOWnCSIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760513394; c=relaxed/simple;
	bh=flxxjceKYX54CKrFPOYJx96hQrwmTeVJ74SDLEjG3sA=;
	h=To:Subject:From:Message-Id:Date; b=Vni0CldNqbYdG7C2PeZaevTS4Ho1ZxYe4zrly9hWSuubic4Ti0eKhdR3B5PAwcBmZvXNN+i6MyAtfE6mAdeGLe/P2vKUUIEp5yU1Kfi0HcxePunuIxn28aQySqJJuhAUpiIXn3KS/oW31esD6+bouxCqVfqDL4F3RqgRcJgCo7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UL4Mqnnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UL4Mqnnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A715AC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760513393;
	bh=flxxjceKYX54CKrFPOYJx96hQrwmTeVJ74SDLEjG3sA=;
	h=To:Subject:From:Date:From;
	b=UL4MqnnvDBO360rD8EIQChV5SQP9C6j6y8HKwetf78CUHS0pklSdxOyzM1Lq8jFMJ
	 WyIYjNda4V1zkSn1PuQQjZKyx01utiYJgaV+DQ5mrG6HZdL5hqv6vL65/0e87vn7Ux
	 xYekYbEaXzuQt1IewYIXsTIxUECN7UAgRtWYN9DEv2ODo8IaqAXBtqECMpX4z3iUmM
	 U0ViMpcsTZIvQLNrBYlwN9JmfZbsoQ9tBm+XcpB+2YdwZC06+mc/eKxNNzGyuM5Ku2
	 bApYsXNyxY6vOlFK9adRxtCYLivmvvq510YT62RXBJubbmBV4lD0ykDH3zGrvOzNoZ
	 +dyMo7n6psSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933DCCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051339359.2294.14617892684137699761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7681a827e57fbaa0cf16c39db9e773ff10cbc42ec52888601ab99cc44abd37
Date: Wed, 15 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760513393
