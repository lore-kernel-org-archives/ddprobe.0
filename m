Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1BC2D7DD3
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772737494; cv=none; b=RF5xRbJrXN7GmUV440qE2tV2yxl9ERky4EsDFc/41i2R1SxIxPlUpFarSVeUhy+8uYWAsdXIet7FyzSc6U6ANZr+wU3NyLR6dAMclYKMJ5Vso3KKP8ROATzNU99Y3jpmIbQmPZiK+Wsy4o4RK5yCO5iIgG+tzh9u0zE/y5PLV/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772737494; c=relaxed/simple;
	bh=JpSip5OpCuqixZimPSoXugEQcKDzgLSWvifNmsaE744=;
	h=To:Subject:From:Message-Id:Date; b=gHCO3FRIAfpd1mH9xNBALK59vKSKTfhW6IxxgNBWG4k0W188MARbjBHboSUTSaGc5q2RBoXfdiSDPLk337rR5rfdv9pKZhLemj+mLLAQaSHeLUzQnboF9DSTMvvGwkqNSDdFna+wyc+JL7Za3JVYOvz0fEbaiVKipsm8YI5isjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fpmkrbbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fpmkrbbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2EBC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772737493;
	bh=JpSip5OpCuqixZimPSoXugEQcKDzgLSWvifNmsaE744=;
	h=To:Subject:From:Date:From;
	b=FpmkrbbrcgW+l74zuZJW5aylugZYRXzjuJEr28QS/V/yEkqgUHoUKkI1yba+QZDPe
	 QpBjtytvjo4WHkuo+6nSomnzEiOcvIl9klQpy+DdLjZnineeAX0N2M7WZU2t5uKuaY
	 N6Pt+75i6OgQd0MsiSORFIY9R8JQixJojXeNu97+B9pNlqB8CW75CaoQaCp7289rTc
	 RGR5mNcE8hqmC+eCBFZ0rjyikpq/UUGgSv8+huhFwgxkr01mr7yr5+JDntkUWANo/z
	 aabeP8JKjcv6gGIYj3bPKc7tD/AhDUdf4QooRE9UmqUZbUwYTMT6e+px+TrSyHzprX
	 7fjV8L0kZbR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7EFF47CB6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273749361.5205.15961420328723832722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0552b6927591b5c9b39fead2ab2b978cbece08fd61e1a49e237a27b2632019a3
Date: Thu, 05 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772737493
