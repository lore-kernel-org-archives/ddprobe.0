Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE582E2640
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750241995; cv=none; b=UbL3pdfwIaRa4IaUfZ2TCVG0/12VkDEgXVzTuflE7PNeXCUekK0EmZ7Lwpkm3wFGPdBrPTW4ETpuwGxuxcAYUp5ubsFN6B5gKqoNS3LY+WklYLTC5zH315TG2dYy8cUsjOp5EkSy0hddDLeNXwhGEF4VKbW87EYUHBNU9FlEFMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750241995; c=relaxed/simple;
	bh=C3CT1erldII+8idlP1vtXnwYo/ePBFfAwaIhrmaMTjM=;
	h=To:Subject:From:Message-Id:Date; b=WmnFn7b+e54W132zsT06Cnbx4JHwFtxrJAeHaHHOPSDuKyyKDjI0x/ScnsjdLiAKjuYaztyep8WG66DxxdacCmUnJn4ZU5fS1PWMyOT6U51h06y6R8JZ5VNqlh+5XQCyaXXPz9QR5Mq8R67vu8GyUdqbx7ZVxOJjlGMNaRkdTAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gG2JgPhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gG2JgPhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0903C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750241993;
	bh=C3CT1erldII+8idlP1vtXnwYo/ePBFfAwaIhrmaMTjM=;
	h=To:Subject:From:Date:From;
	b=gG2JgPhRDKyaPHTLKh58FLqCzzPFE2xncP3LYwL0+8gzSd0w2xTKjonTeOVWwqi/I
	 XcGT4xDcd44l3KIuNBmFgv9UTyHCV/TIAo0Yo2hMLq/uGPXgqdR1ctA8CP40vD+R5w
	 v6IbC7/US+93qFNUKhoeUvpiXGAjQOnkW514LzdAilH7RR8D6inU9eGmdV8GbU4AA6
	 H271XkOtSpgA6o96/L8O2qtYnZ+XEw7dt5sCKsy3lueLqS4EC4ZdX6p0CuJwhxgGq+
	 CAVBR3bYs0K9C3FuAeIrf5eO15D6sNEkTUdkZMWZuwdZVMmV7kV80X8LrNe+J4xp3Y
	 UygZE9E9p9T9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA1C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024199358.6622.2449045279928136422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6bfabfaa53b44850ea90f3d82a8bf69598f42ce0ade7a0d3d9d866ce79d47b
Date: Wed, 18 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750241993
