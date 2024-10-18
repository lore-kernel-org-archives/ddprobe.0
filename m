Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1636B1E493
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729218954; cv=none; b=orG8+O0wcm09C3WPeL2KgFH8h0keg5bnT6ygBshtXgpZssR5JbSYoCuIyMPpq06O+T8+h1qDnvhoFKXbNnihRm2Tw/oxxnVl7vNpThJE1g8EuBIECPpLd1qCMGDx5Qm4cy5Wmk1wK+21P1LbjEuilIxSoERkfkdHQ735U8Kzt3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729218954; c=relaxed/simple;
	bh=3lMUJzLSEuqeirmU3pb7p7hPupDSmeh+FwFK8Y8lxHI=;
	h=To:Subject:From:Message-Id:Date; b=dIcIJp7An2OZWSiHrrCiXzle3jd30aB0QtucpK1hgynWAsx4cdne8ItF7TSiLJOdF/SNAoqfB0BOqyf0aDgZ2a6M57kvDv+JMUu+5UOxE5J7fQ5FsKu8VwR+eYk0EjxqSK+LfcFZWafeLYFiem7EuOtEFjbc8eQqIHrRy3pQhe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Su2g9fU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Su2g9fU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 968AFC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729218953;
	bh=3lMUJzLSEuqeirmU3pb7p7hPupDSmeh+FwFK8Y8lxHI=;
	h=To:Subject:From:Date:From;
	b=Su2g9fU8+H3Kn4IRC4FDzWjrWWVaIstxzwTWb7DiIrs9iPCjBa6/Oyd2Lug0dZtw+
	 IgRJ/KYERDW7FIvL8X8H1XjmCRFC6Ao4EZixiJmiQslpODCIdAf8Q8ujd5zVcYsJrx
	 FPiNhNRl0AObY6Ghggj8YfyCmuufkh+qUOhptj3M7FIHM0oopMJhW+Dz7GzIrNoTdR
	 nsYtB3i+hMwWNqZtBpyQSzF/fXVugF8uwuYFKvVFUaRAWBZ5zrRMWlaEPFjCkRpwY3
	 F1hOxCmBoSBU3QgYEl+KnZfXQRNz/OUZqo41P9WHffHuKtRn2SjwLnmKvpR0IjZtVt
	 8ZZ1y6JOukyZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90297D3C544
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172921895358.31951.14802600386390902052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d3d3f9e68ffa6a033d051cf8edc231d886543af7ec30374de36fddcd0aea40
Date: Fri, 18 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729218953
