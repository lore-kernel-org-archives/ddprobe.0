Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75072AD22
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752041393; cv=none; b=RVZ1EW/3KB/cSecEtJT6WEdJOA7h5pkX4fvjE9UW+dn/HQO+NZ7OIt6BhZ64Wbon3L8fPrXGU7A5vEMUEx63KlIKxWMNBM5aZVsS0R3i5SXNfpsbxHxv/suVkzDZGn2E7//fx17WiyYNaK5xsPv/WiypRs1+3ElMEREvFhkmVU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752041393; c=relaxed/simple;
	bh=G2NmG5lZB3w7keV8zDQfzUYf+qEWibMb8aeyl3GxjVs=;
	h=To:Subject:From:Message-Id:Date; b=E95iM1QrUWC2MeERpprugHnFvq0SNtybV1BlPD4YC0KXqsXR8aXNfsEMCR3UAYWKmW3rnQNO/qLCY3//aG5jygveG84PyEmKBjspp/K6Ft2Em3sv538t4Kb41fxzEI++duulpRvhObV5ltrJyRjLGQLD6kbq3ob1XcSfmYYwjlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/4MZPy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/4MZPy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3451C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752041393;
	bh=G2NmG5lZB3w7keV8zDQfzUYf+qEWibMb8aeyl3GxjVs=;
	h=To:Subject:From:Date:From;
	b=M/4MZPy1ywFh1YjOO6QxrVV+fawu+ZMP6T/TH/MqY2tlZC6XWqS/yZ/sbzNtvnNUY
	 drJQzofVyb2MPwtf62zxmROJ8g+Ra90gBkE/ip1oey381RriN2JVSsRA2e3VjeZ/Jd
	 Dbvwytsiu/VcJFe3WZHuBaoHuKvjXqXLxK8yo+4GdbV58Plco3YhTZy0FKv+i6O/rX
	 il9p2K30mmzFAPQ6vy90jcSdpQcQNGvRq/T3k3BuxZS7ohsABnvXHKw8gs37jJEKp0
	 1i53g8WmNic/i2g6VH2NgjGxUNhOPXqz2PloS9R5id7xxuTpzb7GKwBkwzb7yx60+p
	 KuFQjT49YGE1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91529C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204139358.26143.616418199161137948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8dc3b1540d1e2432ee3c1c8d65a9ed3bda32573428e33d6d6dcaae5e6069f2
Date: Wed, 09 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752041393
