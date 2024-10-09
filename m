Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A318EFFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728464154; cv=none; b=SfCKjPX8QeQ9z+U3o954necyFezH2e3ZmWU9VKXGVWUWZgEIwWXLCcAw8O5OoVlZJHowdKq2UlL6+zqA3vuZravI+emnRMXLEEBPow4HDvN8cURE0mQ4k/Jqu+IQNSIkC3SOP8G39W1PIOKt3AFy6SkGQwkQ20rOolu8qYE+olM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728464154; c=relaxed/simple;
	bh=xTk+LcsaKZCjBrYWP5NPESPCDNeUfF5+8iJEYd5Zid8=;
	h=To:Subject:From:Message-Id:Date; b=DQ4h0SMFXtZ3D7v1xLRxx7tv+G7ZLApFesybEFMrhEi9VPZOlJ6MiusC9vHb5E0Q2KhONqcbfSBye37ki4pshX4TX7Ni2R8CCvFPov+dhFrCPiKfuRfSUfCUfX5emJt0YFNHoRwjYPhr8wnrlFmV9hSq+e9JMvrNPvRfXxSVbv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0d86I9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0d86I9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6611C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728464153;
	bh=xTk+LcsaKZCjBrYWP5NPESPCDNeUfF5+8iJEYd5Zid8=;
	h=To:Subject:From:Date:From;
	b=n0d86I9V5opX3+v7a9mbswYoGt0YJLVxLs2oefpQ56s9osOBzFrZwWj0dOxpCgB/U
	 8T+lBe7mmroaCstY3eFUeQHFD3zNw7RPCm46o0lcFi9KDAhDI2xYdynJU2g1bVHpHr
	 W60bf7l5vlV7u0y/t8zkHPp+8rRyfAjV+PbAeQSFSklT9clfhJerGxBveXxinOvLPU
	 xYRqiFr2bf3rqmu0wq6QrenZjKeMygkzeTUM1sfpxjkR9Rsbaiz43tvhAkb7Mzx8Op
	 3n88xxWlA8ff0fGozTRRah9kmQ1Mvm54hJUmsdFxV+0hFd90LO/EFT3txXXy9Z7V/a
	 YcvyN4huSNq3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CAFCED628
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846415359.18172.7101873018271507149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ea4fd01a3d9a2476cc87cc196c9044334d68862abb50bae0ff09bc97ce7e51
Date: Wed, 09 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728464153
