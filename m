Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D101BA2D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752976194; cv=none; b=FrYw454Nl1X8gWMSgKqEZPIrGwXjYzOYw4HrVlmF03q5r5I9PpkMmBIkMEy4WXus00yaRMbXC3VrsmWUnDh9D91qicdgUWfpOmkg7P9MAPfmZLG5fyrTvtEXY/Vs8gPPPrQGEuMdoFPP+KnXTFw1Uh0RwOvRO+nHRBTg9u5uFNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752976194; c=relaxed/simple;
	bh=IAoBhL4ErBu+8aETcjIomk5IW4Inm9zGo+JH31R6esQ=;
	h=To:Subject:From:Message-Id:Date; b=rvSH/n+Ox4vwJBcPfZBu2be3wwLSx/nug2QAOoDsyuWNXnIj1SQnfoKPFvfwD31BqpF9f2oxTPdH55/nmIH6J1M6DBOWqQ5HAzbnwopWq0TsiELM844YY/Sff1qUBflFGGMlxG7iMrX6k6NopKVrB0seU1nt675sfhS4zugGndc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKmVEtQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKmVEtQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CDAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752976193;
	bh=IAoBhL4ErBu+8aETcjIomk5IW4Inm9zGo+JH31R6esQ=;
	h=To:Subject:From:Date:From;
	b=LKmVEtQbJhwzUidQAAUPYCZSi7OxKgYMVvcHjtYc/CmjMfWJlVPQMXgrLLGcvKpGT
	 /rXPM2WjKVt7m7rufMOZJRP78VJ0xD+Fx8qEt9IidSFqIimIk7jpF5PXKYj/l3DFL9
	 YZKDx7FXsEcVoG5YUip6gbjs7MjgV1ACiid4jY9Zi9UEmrMquYTKjo702UfKX9SxlG
	 M9hsCxW61Vyxz8iutTyzDZrWeijxY0p0iVyIVI8O7QzxgGIIoOSo71BVWWjDgm7Tb5
	 6+9ZvpwlPyKzZ0gnu4E99R/Gira1SX9OOg0oDQ5VzC/zCpbwKiYusjLsGNaFdsP/QA
	 2kssds+CvjAaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FEC83F34
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175297619358.29554.6153430090788162981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba6fc4d81d7f41583169c8ca8c0c6b7eba94eafd683296dab7cf5f8a9dd707c
Date: Sun, 20 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752976193
