Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6471836E8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719409403; cv=none; b=sLoXXpDfLfpzoBXjkzFf2PqzP1kuEx7+FlUs8vXhW5wN6cxXJTYfqtdfobAnIVcGIDff2jLzX5mzt8S4xGi9xlHEF3XSergUE/dOgxd4HvN7XIqIHhx8LL/A7Lhh3B9PpRswq6NuBn7CBRgGkM8GOIj3zUMCMTD4BIQooS3pmHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719409403; c=relaxed/simple;
	bh=zhvfsEcBfBxA7mos0M/cWfcVUd7kuiVY2uPqnjeiBAc=;
	h=To:Subject:From:Message-Id:Date; b=ZZ3OiUfTx1A2PYAunhDNqD54Dplkj6aIjv5UnfV6DRkf9q5Mn+Wxvuj/d2YzAwJwzHaggEBaZoJjX8CowIuXECOJxKSR82Y2BQnbfuY5PY3YjWL5O9Zsn4OKcTlSw6pUcmqXNuPNUawWl5E3b/3792SA8rocJ5GqogzvaHzWLmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbqBM1vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbqBM1vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5727C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719409402;
	bh=zhvfsEcBfBxA7mos0M/cWfcVUd7kuiVY2uPqnjeiBAc=;
	h=To:Subject:From:Date:From;
	b=LbqBM1vu/un7keHbCdHAOmV1IZ6QrGiwTLpFNyFzSD3IvFfjNuODOxNVlnvPLrcxr
	 5GA7PQrKwWKPtzqaGycod2KYEQKAjF2PrfcTlGKWmaFXfr0SzGszCqGWns5L8/HWdC
	 +lGpKueJlDSqisLFhHLWhaN1kLIsxsKX6CBS+0Azg9Fz0k6f0rVExP/DbG8ySMyHcM
	 5z4bjZhS2KuamadfyM8Yu3qVn2Ma5fN7G7BS2vIIAFmxyOy0TBOqbu7fXVB+XU8fYn
	 HWBaxULrdU2BIszCyqicrAKsgc1qeZo/Z14rDpyctoGmfOMhrtRCsAr3OqGSLl1E2A
	 aX2PhBmnUHTCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C484BC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 13:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940940279.11685.8119864160721699262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7a25b2ace751bbae2845853400ab1275f2174bea898a9dc26585eaecb325b4
Date: Wed, 26 Jun 2024 13:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719409402
