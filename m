Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370532192F9
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782395254; cv=none; b=YF9lW9n6tFYlOzxTsBMN+mhqzKILD0fS7kQ+bPhItdNiGULbb34mwLxmZoNSI/8foKMijnu7PLiyOVYkcAR5SE/w8ntPjXbfLym4CuuTkl4N0kYqwatHpdesKWtFMcrhqFEvcMLhT0TXn6jMXnuIfkld7/NLQZCeqFIWF+JSM8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782395254; c=relaxed/simple;
	bh=cwwoBP2xKPgZDWQM93Dz+kF+8M3Y5pJUV3Oa/IwU71k=;
	h=To:Subject:From:Message-Id:Date; b=PHubLSgbBnV+pCOU74OOw7KRPCrzLG+Piajf4u7WWZ1QCtSJQEn3FQG4PE4qLOHXtvDm9V/ucjTY/7+z0q7nYA2ATnRKWOV4sj9KYRIPggAdx70Tfh1UOXfwF149/8Z0UZlcKHZu9h0dj8EybNPPoZpi3nz/c/WBLswIzXy9pTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1XRi9C1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1XRi9C1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCC0C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782395253;
	bh=cwwoBP2xKPgZDWQM93Dz+kF+8M3Y5pJUV3Oa/IwU71k=;
	h=To:Subject:From:Date:From;
	b=b1XRi9C1n7OaRy+J2OGBTl9VlRu+WP0pvknEknvpondtHmXKDrOBY6JwQDOyC36v/
	 ZH+y5V+Er/5j/+OtRHlzaGy+j8urQif7HfFGFz3gHAA7jgxH503acHcN5n7LY0cwQr
	 60Z/mucZMG6xsSKhimRK74W5s5uBEP1rXmGPHrmjuv0so9h0YbIl/q5lKRhZPpxDoD
	 2qa63ePWUfMYtrCSdxvcuG70s6GNcXw+Izst4wm0ZTZfjJviEht3GN8ayZ3OW20BKc
	 fZtBSCBA47zZ1TB58KMJrdNgVFqjhREj3Setd/LCXZbYgBw70WUlm5KoTKJyddslK+
	 h9Vha615ij7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1852CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239525371.20245.4064587353027590111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07795ebd2bf3e83e6775cf48dcc648e2076ffc494f7708fedbfab726de34ef55
Date: Thu, 25 Jun 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782395253
