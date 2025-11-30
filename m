Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA6DA41
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764499974; cv=none; b=j1CuEv3FSpetrwiND0hVp7PKIA2/7hj2QOI71UJpr1MiYpNWSCiwugqv7dXNnI9xcWwNKh378Yi0GTgFvtHvKC4ufLREJ4itk93BckjA4BaGQVjHmx/QOVU7fwzgFKULSPAkKZzRuP4B0yEW+GEIBIapnocMOyrCQyXP21a/C+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764499974; c=relaxed/simple;
	bh=jyB4fGdYOMFixmRW7k9RSMTRJYnyyI0A9x4nu1geFf4=;
	h=To:Subject:From:Message-Id:Date; b=JW6jollTIyobjpNCYMNtnsJzH1FpPmsyCjX1dZZn24BzyoWRdptH96KZP///nqPE/NYSUqmRMCK0ZX6pEniqDe5/TUHnPlDICLjDWv5zCp7O6Wq8or7rgBW0NjHQ/D47rfnCFU9noTUKgTmZkq5V/d0DN0d7YdwxK7xBuGlWuBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEC5J9Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEC5J9Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6A5C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764499973;
	bh=jyB4fGdYOMFixmRW7k9RSMTRJYnyyI0A9x4nu1geFf4=;
	h=To:Subject:From:Date:From;
	b=ZEC5J9RgK/BS0uEHg2JH+p1yOBkppbG1QV/ftgOL9lTInOgp/AZuDDgCDnGsL/TVr
	 21+K7viZGGlP906aHVz3rSPo2V68ZVglT9nNO0kNyS73uYr2XQA2AthPOJKK5ckV0g
	 oKWwTE1WaWjWvG/h8Ss4n14EACmAE8OwuWjOr2VmdrumocvIbcjyLbde+rWbT835Ae
	 AkK9mz+FFI0RBOo3eZTUUIDK7DoNtCzHesr5iuSvZ1Me31g8MT887nWKXwAw+lRCpW
	 Iz8S6aNfFxmu+DoyT3oJSFYjq1RF5jH03zp+JmZGpqMNqmB8oLF1dPYjo6k7Gqanmj
	 TGKeMS1NWMf6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C952CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449997360.832.18156544489998640947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d19717cfdd788248dff13371151a565dbbe7e2644fd16a0028f15a140ab9c81
Date: Sun, 30 Nov 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764499973
