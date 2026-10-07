Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7ED347BD4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791351634; cv=none; b=QI8RopNmHwE8KlSDgyrHOsEaZQpj1MrKRDgtoRUQzI+myawqF5zUDAIBoaVGGNlKhL8nYCZDwmhBBP4a4uK11SXyKIBYIYmza0EgQ48YVVp2eIpaQDMEUHOZLGaxndU6dKS2FGt4oJMl0dIWRuncn1ZmBfzcd5aDqGMGUPl6oJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791351634; c=relaxed/simple;
	bh=+znEnHT3J+Cu+SgNVLMXLFh90DayR2pOLH0by1F/FkE=;
	h=To:Subject:From:Message-Id:Date; b=V5L4ygShN/NaU7IzviNfisowS8q8zkdFebyjEKVhY/i6GG6rQZ9WtSCw8fPrOHPW7tXCyCabIUfdeFl/9wAe+gKcqVeI2AQMFPmyXwjGU7tBlWSjIMOIixexEy8Vk9JNkM4kSSJQypXKmUYafbCKgwo2/13tR7iHcBH4B/C6he0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkqWeFbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkqWeFbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D89C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791351633;
	bh=+znEnHT3J+Cu+SgNVLMXLFh90DayR2pOLH0by1F/FkE=;
	h=To:Subject:From:Date:From;
	b=nkqWeFbwwRB8nkG4BA1c2qIE6eYG4UBqrPVGw0aY0SdVsQ7xOb5rndklZTA729EQV
	 wL62dp0ZkFIWFgaucvvJh+oiNMc6v4J/P/ZbYARenCr/T0t+j5J5Ln0HHP2LimeM7J
	 3PuP2AzuAoWAHNy6y7KqrILcT65rNk/ChkYwuv6wgQJyBDdzFWHABtfXoIwVnL6RQI
	 IYeC48Iamm7Cn0e2tQe+ye5wZmjpW9eGmbcQ346eboyfAU0R8nkmsirVl8kkpihJNj
	 9p6OoHI2/KqDjSxRLCiVUBcQclTU5kr+WMBG0JaXeMkVWhYhhwuzgsX5cLsXSGH7ig
	 9SSHanrke0vEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9601CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135163368.25968.13504035337900848781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4b32158ffeed2201cd97054db27b2e86fdaafb48b00699493a22fe1cb31825
Date: Wed, 07 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791351633
